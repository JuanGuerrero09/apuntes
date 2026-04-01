
REVISAR HASTA PAGINA 27  DIAPO 53

Value functions

### DSS in water and enviroment

Different level of decision making:
- Operation: Operational managers
- Management: Deccision makers stakeholders
- Planning: Policy makers

### Analytical 

Read article and try to describe in a couple of pages 

. No matter which system is targeted by a given project the
analytical description should identify the key system
components:
- System boundaries
- System elements and structure (state variables and
parameters)
- Inputs, Outputs
- Actions / decisions (control / decision variables)
- Objective / value functions

Assignment:

Identify a case study from literature water-related project and do the analystical description of system components


# Optimization and Simulation

Screening: Large number of alternatives, eliminate a large number of bad alternatives

Optimization methods:
- Known alanytical function - calculus based
- Known linear function - linear programming
- Dynamic programming
- Flobal optimization (Genetic algorithms)
- Model-based optimization
- 





Identify a project / case study from literature. You could consider a case study from your own experience, but it should be reported in accessible scientific literature (an article, report, book chapter, etc.). The size, scale or type of the project do not matter. Any water-related project will be fine. Carry out the _analytical description of system components_, as introduced in the lectures on Systems Analysis in Water Resources and report the following:

·       System boundaries

·       System elements and structure (state variables and parameters)

·       System inputs and outputs

·       Actions / decisions (control / decision variables)

·       Objective / value functions

Use the learned skills of synthesising literature and proper referencing and citation.

For this task you can also consult section 13.3 of the WRSPM book by Loucks and van Beek, entitled ‘Conceptual Description of WRS’.   
_**Your answer should be**_ **_maximum two pages, including possible figures_** that you may decide to use in support of your description.  
Please upload your answer as a Word (_,docx) or Adobe Acrobat (_.pdf) file.

---


Two areas located next to a river are used for agricultural production and take irrigation water from the river under dry conditions.  The benefit functions for the two areas are defined as:

_B(x1) = 150_x1_ - 5x12_ 

and

_B(x2) = _130x2_ -  3x22_

The cost function for usage of both areas is same: 

_C(xi) = 30+3 xi2 –8 xi_

The objective is to maximize the total profit, _F(x1, x2)_, from allocations to both areas. Profit is defnied as Benefits - Costs.

Assume that the maximum water that can be allocated is Dmax  = 5 units of water. Using hand calculations answer the following:

a.       Using the method of Lagrangian multipliers find the optimal allocation of water to the two areas that maximizes the total profit. Report the optimal allocations, total costs obtained, and the value of the Lagrangian multiplier.

b.      What is the optimal solution in terms of allocation of water to the two areas if there is no constraint on maximum available water?

_Your result should be maximum one page.  
_  
Use the text box below for providing your answers. You can write your answer by hand and upload your solution as image file(s). Or, you can develop your answers in Word and then upload   _.docx_ or a _.pdf_ file.

---

Three areas located next to a river are used for agricultural production and take irrigation water from the river under normal and dry conditions.  The same areas are used as flood storage areas during high waters. The cost functions for this dual usage of the areas are described by the following equations: 

_C(x1) = (50+0.4 x12 –8 x1)_, 

_C(x2) = (30+0.2 x22 –4.4 x2)_, and 

_C(x3) = (40+0.6 x32 –8.4 x3)_.

Using discrete dynamic programming with steps of 1.0 solve for the optimal allocations _x1_, _x2_, and _x3_,which minimize the total costs, given the following conditions:

-Under dry conditions the total amount of available water is 7 units. Optimal allocations are known to be within following bounds: _3≤ x1 ≤ 5;    0≤ x2 ≤ 2;    2≤ x3 ≤ 4_;

Submit the dynamic programming network that you have developed with the obtained results in terms of the optimal allocations, the optimal ‘path’, and the obtained minimum value of total costs. _**Your result should be maximum one page.**_  

You can prepare your solution by hand and upload an image, or you can upload a Word (_.docx) or Adobe (_.pdf) file.

---
Consider the same MODFLOW-LINGO model from the classroom exercises, where total pumping from two wells (out of three potential locations) needed to be maximized, while maintaining certain base flow to the southern river. For this exercise we consider that the water in the southern river is polluted and a considerably higher Base flow is needed to ensure that the flow in the south of the modelling domain is only from the aquifer to the river.  To achieve this, an additional measure of lowering the water level in the southern river is introduced, associated with a decision variable named ' River Level Decrease' or RLD.  Furthermore, installing the two new wells and operations for lowering the river water level are associated with certain costs. Assuming linear cost function, the linear cost coefficients (arbitrary monetary units) for the four decision variables [Q1, Q2, Q3, RLD] are [1,1,1,1000]. (Note that Q1, Q2 and Q3 are the well pumping rates from the three potential locations).  Using the MODFLOW model and LINGO solve the following optimization problem:

·       Find the maximum (optimal) pumping rate with two wells out of three potential locations (cell coocrdinates Well_1 [20,25];  Well_2 [20,30] and Well_3 [20,35], same as in the class exercise), with the following constraints on pumping rates:

Well_1 ->[100, 500], Well_2 ->[100, 500] and Well_3 -> [100, 1000].  

The bounds on RLD are [0,0.8] m.

Further, the optimal solution needs to meet the following constraints: 

- Maximum budget available for all interventions is 2000 monetary units;
- Base flow from the aquifer to the southern river must be larger than **_1500 m3/day_**. 

To develop a suitable LINGO model that can provide the required answers you first need to develop the relationship between RLD and Base Flow to the southern river) and check whether this is linear. (In 'Processing Modflow' use the menu item 'Paremeters' -> 'Initial and Orescribed Hydraulic Heads' to change the values of the 'Constant head' input in all cells representing the southern river). Then you need to prepare a LINGO model that will solve the posed optimixzation problem by formulating all needed constraints and objective function. 

Submit the LINGO code that you have developed and the optimal pumping rates found. Report which of the constraints introduced were binding (limiting) the solution. If you use Excel for determining the linear responses, you can submit graphs and tables as you find appropriate. Finally, check with the MODFLOW simulation model whether the optimal pumping rates found with LINGO are actually satisfying the posed constraints and briefly comment the obtained results.

_**Your answer should be maximum 4 pages long.**_

Please upload your answer as a Word (,docx) or Adobe Acrobat (.pdf) file.