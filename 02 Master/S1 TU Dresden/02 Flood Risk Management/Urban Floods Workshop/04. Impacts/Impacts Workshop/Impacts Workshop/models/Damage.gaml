/**
* Name: Damage
* Based on the internal empty template. 
* Author: Diego
* Tags: 
*/


model Damage

/* Insert your model definition here */

global {
	
	float step <- 5 #mn;
	//string returnperiod <- "20";
	int DEMsize <- 10;
	
	
	file shp_build <- shape_file("../includes/Buildings_MS5.shp");
	file shp_street <- shape_file("../includes/Streets_MS5.shp");
	file shp_network <- shape_file("../includes/MS5_SWMM_conduits.shp");
	file shp_manholes <- shape_file("../includes/MS5_SWMM_junctions.shp");
	file shp_outfalls <- shape_file("../includes/MS5_SWMM_outfalls.shp");
	file shp_raingauge <- shape_file("../includes/MS5_SWMM_raingages.shp");
	file shp_LandUse <- shape_file("../includes/land_use_MS5.shp");
	file DEM<- grid_file("../includes/DEM_MS5_10.tif");
	
	
	//The savename should NOT have a file extension!!!!!!
	string floodmatrix<- "floodseries_MS5_model_LID_JGD_NOLID.csv";
	string savename<- "OUT_floodseries_MS5_model_LID_JGD_NOLID";
	
	file floodsurcharge <- csv_file("../includes/"+floodmatrix,false);
	matrix floodvol <- matrix(floodsurcharge);
	date inicial <- date(floodvol[0, 1]);
	date starting_date <- inicial;
	
	list<string> toprow <- floodvol row_at (0);
	list<string> firstcol <- floodvol column_at (0);
	list<manholes> mansource;
	list<cell> sourcecells;
	int j;
	date real <- #now;	
	list time_series;
	kml exportkml;
	
	
	
	rgb agriculture<- rgb(220,255,0);
	rgb commercial<-  rgb(255, 51, 0);
	rgb industry <- rgb(255, 255, 102);
	rgb infrastructure <-rgb(255, 0, 255);
	rgb no_damage<- rgb(55, 86, 35);
	rgb mixed<-  rgb(255, 204, 0);
	rgb residential<-  rgb(191, 143, 0);
	rgb water_bodies<-  rgb(0, 176, 240);
	rgb total<- #grey;
	map<string,rgb> legend<-['Agriculture'::agriculture,'Commercial'::commercial,'Industry'::industry,
		'Infrastrcuture'::infrastructure, 'No damage'::no_damage,"Mixed Area"::mixed,'Residential'::residential
	];
	
	rgb build<- rgb(#black);
	rgb sewer<- rgb(#orange);
	rgb manh<-  rgb(#red);
	rgb manh_source <- rgb(#cyan);
	
	rgb lowpoint<-  rgb(0, 0, 0);
	rgb highpoint <- rgb(255, 255, 255);
	
	rgb waterdepthhigh<-  rgb(107, 174, 214);
	rgb waterdepthmid<- rgb(49, 130, 189);
	rgb waterdepthlow <- rgb(8, 81, 156);
	
	
	map<string,rgb> legend2<-['Buildings'::build,'Network'::sewer,'Manhole'::manh,'Source manhole'::manh_source];
	map<string,rgb> legend3<-['175 m'::highpoint,'111.63 m'::lowpoint];
	map<string,rgb> legend4<-['<0.05m'::waterdepthhigh,'>0.05m'::waterdepthmid,'>0.50m'::waterdepthlow];
	
	
	map<string,rgb> superl<- legend2+legend3+legend4;
	int pausa <- length(floodvol column_at (0)) - 2; //defines number of steps of the simulation

	geometry shape <- envelope(DEM);
	
	//maps where damage and floods are updated every cycle
	map<int, float> damagesums;
	map<int, float> floodsums;

	float max_value;
	float min_value;
	
	init {
		
		list<date> time_series2<- (floodvol column_at (0))[1::length(floodvol column_at (0))];
		loop label over:time_series2{
			time_series<+ string(label,"HH:mm"); 
		}
		
		max_value <- cell max_of (each.grid_value);
		min_value <- cell min_of (each.grid_value);
		ask cell {
			
			if (source = true) {
				color <- #blue;
		} 	else	{
				int val <- int(255 * ( 1  - (grid_value - min_value) /(max_value - min_value)));
				color <- rgb(val,val,val);
		}
		
		}
		
		list<string> findsource <- floodvol row_at (0); //creates list of flooded nodes as strings
	
		
		
		//creation of the building agents from the shapefile: the height and type attributes of the building agents are initialized according to the HEIGHT and NATURE attributes of the shapefile
		create building from: shp_build with:[height::float(5)];
		create manholes from: shp_manholes  with: [name:: string(read("Name"))];
		ask manholes{
			if self.name in findsource{
				self.source<-true;
			}
		}
		
		mansource <- manholes where (each.source = true);
		mansource <- mansource sort_by (each.name);
		
		ask mansource{
			cell targetf <- (cell at_distance (5)) closest_to self;
			targetf.source <- true;
		}
		
		create network from: shp_network;
		//create street from: shp_street;
		create raingauge from: shp_raingauge;
		create outfall from: shp_outfalls;
		create landU from: shp_LandUse with: [code::int(read("LUCode"))];
				
		loop i over: findsource {
			manholes target <- manholes first_with (each.name = i);
			cell targetf <- (cell at_distance (10)) closest_to target;
			
			targetf.source <- true;
			targetf.node_name <-i;
			
		}
		sourcecells <- cell where (each.source = true);
		sourcecells <- sourcecells sort_by (each.name);
		write('Load Succesful');
		

	}
		
		reflex flow {
			j <- firstcol index_of (string(current_date));
			write (current_date);
			ask sourcecells {
				do flow;
				
				if (experiment.name= "Flood_Damages0"){		
					do calc_damage;	
				
				}
				ask flowcells{
					if waterdepth > 0.00 {
						do update_color;
					}	
				}
				
			}
		}
		

		reflex exportfinal {
		//first saves the headers
			if (cycle = pausa and experiment.name = "Flood_Damages0") {
				save ("Raster,Node,Inundated Area,Final Depth,Agriculture,Commercial,Industry,Infrastructure,Mixed Area,Residential,Total Damage") to:
					"../results/Manhole_Damage_" + savename + ".csv" format: "csv" header: false rewrite: true;
				save ("Raster,Node,Final Depth,Agriculture,Commercial,Industry,Infrastructure,No Damage,Mixed Area,Residential,Water Bodies,Total Area") to:
					"../results/Manhole_Flood_" + savename + ".csv" format: "csv" header: false rewrite: true;
				ask sourcecells {
					
						do exportf;
					 
				}
			}
		}
		
		//reflex exportkmz{
			
			//ask sourcecells{			
				//ask flowcells {
					//exportkml<-exportkml add_geometry(self.shape,0.5,#black,self.color);			
			//}
		//}
	//}
		
		reflex export_grid{
			if (cycle = pausa) {				
				ask cell {
					do export_grid1;
				}
			save cell to: "../results/waterdepth " + savename + ".asc" format: "asc";
			
			ask cell  {
				do export_grid2;
			}

			//if (experiment.name= "Flood_Damages0"){	
				//save cell to: "../results/totaldamage " + savename + ".asc" format: "asc";
				//}
			
			//save exportkml to:"../results/inundation" + savename + ".kml" format:"kml";
		}

	}
		
		reflex export {
		//writes header into file and erases previous file with same name
			if (cycle = 0 and experiment.name = 'Flood_Damages0') {
				save
				("Time,Agriculture,Commercial,Industry,Infrastructure,Mixed Area,Residential,Total Damage,Flood_Agriculture,Flood_Commercial,Flood_Industry,Flood_Infrastructure,Flood_Green Areas,Flood_Mixed Area,Flood_Residential,Flood_Water Bodies,Total Flood Area")
				to: "../results/lu_series_"+savename +".csv" format: "csv" header: false rewrite: true;
				}
	
			//updated values for floodmap
			floodsums <+ 0::(cell sum_of (each.lc[0]));
			floodsums <+ 1::(cell sum_of (each.lc[1]));
			floodsums <+ 2::(cell sum_of (each.lc[2]));
			floodsums <+ 3::(cell sum_of (each.lc[3]));
			floodsums <+ 4::(cell sum_of (each.lc[4]));
			floodsums <+ 5::(cell sum_of (each.lc[5]));
			floodsums <+ 6::(cell sum_of (each.lc[6]));
			floodsums <+ 7::(cell sum_of (each.lc[7]));
			
			float totalflood <- floodsums sum_of (each);
			list<cell> damagecell <- cell where (each.waterdepth > 0.00);
			
			
			//updates values for damagemap
			damagesums <+ 0::damagecell sum_of ((each.lc[0] / 1000000) * 93562 * (each.waterdepth) ^ 0.4623);
			damagesums <+ 1::damagecell sum_of (each.lc[1] * 108.52 * (each.waterdepth) ^ 0.7756);
			damagesums <+ 2::damagecell sum_of (each.lc[2] * 82.554 * (each.waterdepth) ^ 0.7907);
			damagesums <+ 3::damagecell sum_of (each.lc[3] * 11.396 * (each.waterdepth) ^ 0.5617);
			damagesums <+ 4::0;
			damagesums <+ 5::damagecell sum_of ((each.lc[5] * 69.204 * (each.waterdepth) ^ 0.5589 + each.lc[5] * 108.52 * (each.waterdepth) ^ 0.7756)/2);
			damagesums <+ 6::damagecell sum_of (each.lc[6] * 69.204 * (each.waterdepth) ^ 0.5589);
			damagesums <+ 7::0;
			
			float totaldam <- damagesums sum_of (each);
			
			//saves value vor flood and damage each cycle
			save
			((string(current_date, "HH:mm:ss") + "," + damagesums[0] + "," + damagesums[1] + "," + damagesums[2] + "," + damagesums[3] + "," + damagesums[5] + "," + damagesums[6] + "," + totaldam + "," + floodsums[0] + "," + floodsums[1] + "," + floodsums[2] + "," + floodsums[3] + "," + floodsums[4] + "," + floodsums[5] + "," + floodsums[6] + "," + floodsums[7] + "," + totalflood))
			to: "../results/lu_series_"+savename +'.csv' format: "csv" header: false rewrite: false;
	}
			reflex pause {
			if (cycle = pausa) {
				write('End of Simulation and exports');
				do pause;
			}

		}
		
}
	
species building {
	float height;
	string type;
	rgb color <-  build;
	
	aspect default {
		draw shape depth: height color: color;
	}
	
}

species manholes  {
	string name;
	bool source;
	
	aspect base {
		draw circle(5) color: source ? manh_source: manh;
	}

}

species network {
	
	geometry shp <- shape+2;

	aspect pipe {
		draw shp color: sewer ;
	}

}


species outfall{
	string name;
	rgb color <- #red;

	aspect base {
		draw circle(5) color: color;
	}

}

species raingauge {
	rgb color <- #blue;

	aspect base {
		draw circle(5) color: color;
	}

}

species landU frequency: 1000 {
	int code;
	rgb color;

	init {
		if (code = 0) {
			color <- agriculture;
		} else if (code = 1) {
			color <- commercial;
		} else if (code = 2) {
			color <- industry;
		} else if (code = 3) {
			color <-infrastructure;
		} else if (code = 4) {
			color <- no_damage;
		} else if (code = 5) {
			color <- mixed;
		} else if (code = 6) {
			color <- residential;
		} else if (code = 7) {
			color <- water_bodies;
		} }

	aspect base {
		draw shape color: color border:#black;
	} }

grid cell file: DEM neighbors: 8 {
	bool source;
	float height;
	string node_name;
	float waterdepth min: 0.0;
	float waterflowing;
	list<cell> flowcells;
	bool bflow <- false;
	map<int, float> lc;

	bool barrier <- false;
	
	init {
		height <- grid_value;//assigns the DEM values as attribute height

		
	}
	
	//Chen's algorithm
	action flow {
		int i <- toprow index_of (node_name);//looks for value i in the flood matrix

		if ((float(floodvol[i, j])) > 0) {//if the value is greater than zero, asigns the value to the variable waterflowing divided by the area of the cell
			waterflowing <- waterflowing + ((float(floodvol[i, j])*300/1000) / DEMsize ^ 2); //conversion for lps to m3/5 minutes, divided by area 
			
			// Possible improvement!!!!
			//Create just a list of flowcells, until a value of waterflowing is belowe the 0.05 and then assign the waterdepth, 
			//instead of applying it at each loop
			
			//when waterflowing is higher than 0.05 water is allowed to flow to neighbors,
			if (waterflowing > 0.05) {
				int n <- 1;
				//the loop is for the manholes than dont flow more (options to either avoid this, or stop this earlier (if list doesn't grow?? AND the waterdepth is higher tha 0.05)
				
				
				
				
				//for first time it flows if it has an aempty floowcells list
				if(empty(flowcells)){
					bflow <- true;
					
					waterdepth <- (waterflowing);
				}
				else {
					//if not empty, it recalculates the depth it should have with updated volume
					waterdepth <- (waterflowing/length(flowcells));
				}
				
				//assign waterdepth to all cells already flooded in the list
				
	
				loop m over: flowcells {
						m.waterdepth <- waterdepth;
					}
				if (waterdepth>0.05){
					
				//loop while the border conditions of the algorithm are true	
				loop while: (waterdepth > 0.05 and n < 50) {
					list<cell> bcell <- flowcells where (each.bflow = true);
					
					//inside loop looks for neighbor cells that have lower elevation and asigns them to list 	

					loop m over: bcell {
						list<cell> flowneigh;
						flowneigh <- (m.neighbors + m) where (each.height <= m.height);
						add all: flowneigh to: flowcells;
					}
					
	
					//remove repeated cells and divide the water in number of cells in the list
					flowcells <- reverse(remove_duplicates((flowcells + self) sort_by (each.height)));
					waterdepth <- waterflowing / length(flowcells);		
					
					//assign the value of depth to all cells in the list	
					loop m over: flowcells {
						m.waterdepth <- waterdepth;
						m.bflow <- true;
					}

					n <- n + 1;
				}
				
				}

			}

		}

	}
	
	action calc_damage {
		int i <- toprow index_of (node_name);
		if (float(floodvol[i, j]) > 0) {
		//checks for intesecting and overlapping Land use shapes
		
			ask flowcells{
				if empty(self.lc){
					list<landU> inters <- (landU at_distance (10)) overlapping self;
					loop k over: inters {
						add k.code::((self inter k).area) to: self.lc;				
					}			
				}				
			}
		}
	}

	action update_color {
	//values depending of waterdepth
		if (waterdepth > 0.0 and waterdepth <= 0.25) {
			color <- rgb(107, 174, 214);
		} else if (waterdepth > 0.25 and waterdepth <= 0.50) {
			color <- rgb(49, 130, 189);
		} else if (waterdepth > 0.50) {
			color <- rgb(8, 81, 156);
			//value if there is a flood barrier
		} else if (barrier = true) {
			color <- #green;
		} else {
			//if there is no flood barrier or water DSM set to grayscale
			int val <- int(255 * (1 - (height - min_value) / (max_value - min_value)));
			color <- rgb(val, val, val);
		} 
	}
	
	action export_grid1 {		
		if(waterdepth=0){
			grid_value <- nil;
		}
		else {
			grid_value <- waterdepth;
		}
	}

	//assigns damage values to grid value to export as raster
	action export_grid2 {
		if(waterdepth=0){
			grid_value <- nil;
		}
		else {

		map<int, float> damage <- [0::(lc[0] / 1000000) * 93562 * waterdepth ^ 0.4623, 
			1::lc[1] * 108.52 * waterdepth ^ 0.7756, 
			2::lc[2] * 82.554 * waterdepth ^0.7907, 
			3::lc[3] * 11.396 * waterdepth ^ 0.5617, 
			4::0, 
			5::(lc[5] * 69.204 * waterdepth ^ 0.5589) * 0.5 + (lc[5] * 108.52 * waterdepth ^0.7756) * 0.5, 
			6::(lc[6] * 69.204 * waterdepth ^ 0.5589), 
			7::0];
		float totaldamage <- damage sum_of (each);
		grid_value <- totaldamage;
		}
	}
	
	action exportf {
		map<int, float> damagesumsf;
		map<int, float> floodarea;
		float inundatedarea <- length(flowcells) * DEMsize ^ 2;
		damagesumsf <+ 0::(flowcells sum_of ((each.lc[0] / 1000000) * 93562 * (each.waterdepth) ^ 0.4623));
		damagesumsf <+ 1::flowcells sum_of (each.lc[1] * 108.52 * (each.waterdepth) ^ 0.7756);
		damagesumsf <+ 2::flowcells sum_of (each.lc[2] * 82.554 * (each.waterdepth) ^ 0.7907);
		damagesumsf <+ 3::flowcells sum_of (each.lc[3] * 11.396 * (each.waterdepth) ^ 0.5617);
		damagesumsf <+ 4::0;
		damagesumsf <+ 5::flowcells sum_of ((each.lc[5] * 69.204 * (each.waterdepth) ^ 0.5589 + each.lc[5] * 108.52 * (each.waterdepth) ^ 0.7756)/2);
		damagesumsf <+ 6::flowcells sum_of (each.lc[6] * 69.204 * (each.waterdepth) ^ 0.5589);
		damagesumsf <+ 7::0;
		float totaldam <- damagesumsf sum_of (each);
		floodarea <+ 0::flowcells sum_of (each.lc[0]);
		floodarea <+ 1::flowcells sum_of (each.lc[1]);
		floodarea <+ 2::flowcells sum_of (each.lc[2]);
		floodarea <+ 3::flowcells sum_of (each.lc[3]);
		floodarea <+ 4::flowcells sum_of (each.lc[4]);
		floodarea <+ 5::flowcells sum_of (each.lc[5]);
		floodarea <+ 6::flowcells sum_of (each.lc[6]);
		floodarea <+ 7::flowcells sum_of (each.lc[7]);
		float totalf <- floodarea sum_of (each);
		
		//exports csv with damagevalues
		save
		(name + "," + node_name + "," + inundatedarea + "," + waterdepth + "," + damagesumsf[0] + "," + damagesumsf[1] + "," + damagesumsf[2] + "," + damagesumsf[3] + "," + damagesumsf[5] + "," + damagesumsf[6] + "," + totaldam)
		to: "../results/Manhole_Damage_"+savename+ ".csv" format: "csv" header: false rewrite: false;
		
		//exports csv with floodvalues
		save
		(name + "," + node_name + "," + waterdepth + "," + floodarea[0] + "," + floodarea[1] + "," + floodarea[2] + "," + floodarea[3] + "," + floodarea[4] + "," + floodarea[5] + "," + floodarea[6] + "," + floodarea[7] + "," + totalf)
		to: "../results/Manhole_Flood_"+savename +".csv" format: "csv" header: false rewrite: false;
	} 
	
}

experiment Flood_Propagation type: gui {
	output {
		display city_display type: 2d axes:false autosave:true{
			overlay position: {0, 0} size: { 130 #px, 300 #px } background: # black transparency: 0.5 border: #black rounded: true
            {
            	//for each possible type, we draw a square with the corresponding color and we write the name of the type
                float y <- 15#px;
                loop type over: legend2.keys
                {
                	draw square(5#px) at: { 10#px, y } color: legend2[type] border: #white;
                	draw type at: { 20#px, y + 4#px } color: # white font: font("Helvetica", 12, #bold);
                    y <- y + 25#px;
                }
                draw "" at: { 20#px, y + 4#px } color: # white font: font("Helvetica", 12, #bold);
                y <- y + 25#px;
                draw "DEM" at: { 20#px, y + 4#px } color: # white font: font("Helvetica", 12, #bold);
                y <- y + 25#px;
                    
                    
                loop type over: legend3.keys
                {
                    draw square(5#px) at: { 10#px, y } color: legend3[type] border: #white;
                    draw type at: { 20#px, y + 4#px } color: # white font: font("Helvetica", 12, #bold);
                    y <- y + 25#px;
                }
                draw "" at: { 20#px, y + 4#px } color: # white font: font("Helvetica", 12, #bold);
                y <- y + 25#px;
                draw "Water depth" at: { 20#px, y + 4#px } color: # white font: font("Helvetica", 12, #bold);
                y <- y + 25#px;
                loop type over: legend4.keys
                {
                    draw square(5#px) at: { 10#px, y } color: legend4[type] border: #white;
                    draw type at: { 20#px, y + 4#px } color: # white font: font("Helvetica", 12, #bold);
                    y <- y + 25#px;
                }

            }
            
        
			
			grid cell border:#lightgrey elevation:grid_value*5;
			species building ;
			species outfall aspect:base;
			//species raingauge aspect: base;
			species network aspect: pipe;
			//species street aspect: pipe;
			species manholes aspect: base;
			
		}
	}
}



experiment Flood_Damages type: gui {
	output {
		display city_display type: 2d axes:false {
			
						overlay position: {0, 0} size: { 390 #px, 140 #px } background: # black transparency: 0.5 border: #black rounded: true
            {
            	//for each possible type, we draw a square with the corresponding color and we write the name of the type
                float y <- 15#px;
                loop type over: legend2.keys
                {
                	draw square(5#px) at: { 10#px, y } color: legend2[type] border: #white;
                	draw type at: { 20#px, y + 4#px } color: # white font: font("Helvetica", 12, #bold);
                    y <- y + 15#px;
                }
                draw "" at: { 20#px, y + 4#px } color: # white font: font("Helvetica", 12, #bold);
                y <- y + 15#px;
                draw "DEM" at: { 20#px, y + 4#px } color: # white font: font("Helvetica", 12, #bold);
                y <- y + 15#px;
                    
                    
                loop type over: legend3.keys
                {
                    draw square(5#px) at: { 10#px, y } color: legend3[type] border: #white;
                    draw type at: { 20#px, y + 4#px } color: # white font: font("Helvetica", 12, #bold);
                    y <- y + 15#px;
                }
                
                
                float y2 <- 15#px;
                draw "Land cover" at: { 130#px, y2 + 4#px } color: # white font: font("Helvetica", 12, #bold);
                y2 <- y2 + 15#px;
                    
                    
                loop type over: legend.keys
                {
                    draw square(5#px) at: { 130#px, y2 } color: legend[type] border: #white;
                    draw type at: { 150#px, y2 + 4#px } color: # white font: font("Helvetica", 12, #bold);
                    y2 <- y2 + 15#px;
                }
                float y3 <- 15#px;
                
                draw "Water depth" at: { 260#px, y3 + 4#px } color: # white font: font("Helvetica", 12, #bold);
                y3 <- y3 + 15#px;
                loop type over: legend4.keys
                {
                    draw square(5#px) at: { 260#px, y3 } color: legend4[type] border: #white;
                    draw type at: { 280#px, y3 + 4#px } color: # white font: font("Helvetica", 12, #bold);
                    y3 <- y3 + 15#px;
                }

            }
			
			
			grid cell border:#lightgray;
			species landU aspect: base transparency: (cycle <3) ? (cycle/3) : 1;
			species building ;
			species outfall aspect:base;
			//species raingauge aspect: base;
			species network aspect: pipe;
			//species street aspect: pipe;
			species manholes aspect: base;
			
		}
		
		display damage  type: 2d  {
			chart "Damage Propagation" type: series size: {1, 0.5} position: {0, 0.5} x_label:'Time'+string(current_date,"dd.MM.yyyy") x_serie_labels:time_series y_label:'Damages [$]' {
				data "Agriculture" value: ((damagesums[0])) color: agriculture;
				data "Commercial" value: ((damagesums[1])) color: commercial;
				data "Industry" value: ((damagesums[2])) color: industry;
				data "Infrastructure" value: ((damagesums[3])) color: infrastructure;
				data "Mixed Area" value: ((damagesums[5])) color: mixed;
				data "Residential" value: ((damagesums[6])) color: residential;
				data "Total" value: (damagesums sum_of (each)) color: total;
			}

			chart "Flood Propagation" type: series size: {1, 0.5} position: {0, 0} x_label:'Time '+string(current_date,"dd.MM.yyyy") x_serie_labels:time_series y_label:'Inundated Area [m^2]'{
				data "Agriculture" value: (floodsums[0]) color: agriculture;
				data "Commercial" value: (floodsums[1]) color: commercial;
				data "Industry" value: (floodsums[2]) color: rgb(255, 255, 102);
				data "Infrastructure" value: (floodsums[3]) color:infrastructure;
				data "No Damage Area" value: (floodsums[4]) color: no_damage;
				data "Mixed Area" value: (floodsums[5]) color: mixed;
				data "Residential" value: (floodsums[6]) color: residential;
				data "Water Bodies" value: (floodsums[7]) color: water_bodies;
				data "Total" value: (floodsums sum_of (each)) color: total;
			}

		}
	}
}