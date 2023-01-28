What is EDA 

- Quick and simple exerpts, summaries and plots to better understand a data set. 
	- since this is a rough and iterative process that does not need to be put into production.
	- working in one or more notebooks can be an effective workflow for exploratory analyses. This ensures some level of reproducibilty while allowing rapid iteration.

- An EDA might be for the benefit of the data scientist, but should also start a discussion with both the project stakeholder or subject matter expert. 
	- if presenting to stakeholder this can increase the time required as graphics, tables and summaries need to be presented to a higher standard (though do not need to be publication quality).
	- however, this time investment often pays dividends because of the addtional contextual and subject knoweldge that the stakeholder can provide. 
	- Often this can spark converstations that reveal important features in the data generating or measurement process that should be accounted for when modelling but are not contatined within documentation such as data sheets, becasue it was assumed knowledge or seemed obvious to the people working in that field. 
	- Conversely, it can allow us to identify cases where the available information is clearly insufficient to answer the equestion of interest. In this case the project might be postponed while different,  better quality or simply more data are collected. It is important to keep the project stake holder in the loop through this part of the process, because this data collection can cost a lot both in terms of raw cost and in opportuity cost. It may be decised based on an EDA that collecting the data to answer a question will cost more than we are likely to gain from knowing the answer. For that reason it is important that we balance the need for speed in EDA against the thoroughness and correctness of results. EDA should be an overly simlipied analysis, but still requires a level of thoroughness and correctness.

- EDA is an initial assessment of whether the available data measure the correct values, in sufficient quality and quantity, to answer a particular question. To be sucessful 
	- Formulate a specific question of interest or line of investigation, and agree this with the stakeholder
	- Make a record (if one does not already exist) of how the data were collected, by whom it was collected, what each recorded variable represents and the units in which they are recorded.
	- Investigate and document the structure, precision, completeness and quantity of data available.
		- For example: 
			-To what degree does measurement noise or misclassification enter the data? 
			- Is there clear linear or non-linear depnednce between any of the variables? 
			- Are any data missing? Is there any structure to this missingness? Is there censoring or do some values tend to be missing together?
			- A more advanced EDA might include a simulation study, to estimate the amount of data needed to detect the smallest meaningful effect. 


What is EDA not? 

- EDA is not modelling. Nor is it the constuction of your baseline model, sometimes called initial data analysis. Though it might inform the choice of baseline model, EDa is usually not model based - using simple plots and summaries to identify patterns in the data. Some degree of statistical rigour can be added trhoguh the use of non-parametric tecnhiques like smoothing or rolling averages to help identify these while making minimal assumptions about the data generating process. 

	- example: Is wage disparity growing over time? 

- EDA is not prescriptive. While I have given a lot of suggestions on what you might usually want to consider, there is no correct way to go about an EDA becuase it is so heavily dependent on the particular dataset, its interpretation and the task you want to achieve with it. This is one of the parts of data science that make it a craft that you hone with experience, rather than an algorithmic process. When you work in a particular area for a long time you develop a nose for common data quirks that may or may not translate to other applications.

Issues with EDA 
- Garden of forking paths, lots of decisions to make. Hard to make apriori. E.g. picking a null or baseline model to try and improve on. Should that null model make constant predicitions, incorporate a simple linear trend or is something more flexible obviously needed? 
- Peeking at your data means to make decisions in this way is a form of $p$-hacking. Our analysis method is not independent of our observed data.  



- EDA lets you narrow down your options by looking at your data and decide on reasonable modelling approaches. 
- Problems with data leakage. Formally where training data is included in test set, informally happens becuase you have seen the data you are trying to model or predict and selected your modelling approach based on that information. 
- Frequentist statistical methods assume prior ignorance, peeking is cheating
- Prior illicitation and simulating data to check reasonable, but impossible to ignore what you have seen 
- Time series cut off just before financial crash. 

- Methods to acknowledge the looking: e.g. Bonferroni correction for multiple testing or methods in changepoint literature for locating a change given one has been detected, or estimating the required height of flood defences just after they have been compromised. 
- These all make assumptions about the nature of the peeking, either very sepecific or very pessimistic. Not really possible given the non-prescriptive nature of EDA. 
- Corrections can also be hard to derive and complicated to implement - hence why in settings where this is very important such as clinical trials, the entire analysis is pre-registered. Every step of the analysis is specified before any data are colleced.
- In data science this rigorous approach is rarely taken and so as statistically trained data scientists it is important for us to remain humble about our findings and suggest follow up studies to confirm the presence of any relationships we do find. 


## Want to learn more?
Recommended Reading aroudn EDA: 
Because of its non-presecriptive nature writing about EDA is difficult. An excellent piece of writing that agrees with this, despite it's title is the EDA checklist by R D Peng. This serves as an excellent worked example that I would highly recommend reading. 



