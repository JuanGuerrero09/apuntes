
Project summary*

Tell us about your proposed solution. Summarise in your own words what problem your project is aiming to solve, why is the issue significant, and who will benefit from your solution.

The project HydroML-Verify will be an open source toolkit for detecting physically and hydrologically inconsistent data from the streamflow forecasts of machine learning models using physical constraint and data analysis. The usage of machine learning in hydrology for forecasting has been increasing in recent years, but usually the models aim to provide results that are statistically accurate when evaluated against historical data. Therefore, some ML models might have wrong outcomes by not satisfying physical laws (like conservation of water in a catchment) or by using observational data containing artifacts that affects model training and evaluation 

Having inconsistent data affects predictions during both model training and forecasting. That's why the implementation of a tool that can automatically filter and provide graphic results for observational datasets, by doing quality control of raw observational data, and for streamflow forecasting, checking physical constraints, can help scientists with the validation of data and results. The focus is to develop a model-agnostic and modular library in Python, that allows a clear input and can be connected easily to existing ML-models, providing a standardized way to validate the model rationality, replacing the need to check for the hydrological signatures individually by writing custom scripts for each problem.




What's the title of your project?*

HydroML-Verify

  
Why did you pick this challenge?*

Currently as students from an Erasmus Mundus Flood Risk Management master we've been able to see how important is the data that you work with. A model is as useful as the data that was used to built it, specifically for flooding forecast and , 

  
What is your proposed solution, and how does it tackle the challenge?*

The proposed solution is a library built in Python that review point-based time series in csv with DataFrames in Pandas, and gridded data in netcdf or Zar by using Xarray. The main focus is to provide strict input and output signatures, with strong typing, that allows it to be conected to ML workflows. The library will be built modular, in order to provide as much as the scientist require, by separating into different components. Firstly, the core ML analysis for physical constraint checks, for outliers and implausible data detection and for comparison. 

Then, separated, a CLI tool to provide easy access to the tool and allow the usage of flags in case of an specific analysis is required, to allow a fast usage in case of need. And a third component that will work providing graphical results, in order to provide return flags in the problematic observations.

What are the key objectives you aim to achieve?*



What are the expected outcomes?*



What technologies, programming languages, frameworks or platforms will you use?*

The main program to work with will be Python, since is a high level programming language that is easy to use and that already have built in tools for different required implementations of the library, such as dataframe processing with pandas, graphical results with matplotlib and numerical analysis with numpy. For the CLI tool an initial approach will be done in python, but depending on the performance a possible implementation in Go will be assess, since it can generate a compiled program that can work as the interactive part for the users. And, finally, for the graphical results the idea is to use matplotlib, but is not ruled out the option of including a web interface with HTML, CSS and Javascript, if interactive graphics are required.

Which data do you plan to use?*

  
Project timeline

In the next question, you will be asked to outline the milestones and description of your project. Please have a clear structure at the ready, including project phases, major milestones, expected deliverables and a timeline.