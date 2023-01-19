
    
## What is Exploratory Data Analysis? 

Exploratory data analysis (or EDA) is a process of examining a data set to understand its overall structure, contents, and the relationships between the variables it contains. EDA is an iterative process that's often done before building a model or making other data-driven decisions within a data science project.

One key aspect of EDA is generating quick and simple summaries and plots of the data. These plots and summary statistics can help to quickly understand the distribution of and relationships between the recorded variables. Additionally, during an exploratory analysis will familiarise yourself with the structure of the data you're working with and how that data was collected.

Since EDA is an initial and iterative process, it's rare that any compnent of the analysis will be put into production. Instead, the goal is to get a general understanding of the data that can inform the next steps of the analysis.

This means that using one or more notebooks is often an effective workflow for exploratory analyses. This allows for rapid iteration and experimentation, while also providing a level of reproducibility and documentation. Notebooks also allow you to combine code, plots, tables and text in a single document, making it easy to share your initial findings with stakeholders and project managers.

## EDA as a conversation 

We've seen the benefits of an EDA for you as a data scientist, but this isn't the only perspective. 

One key benefit of an EDA is that it can kickstart your communication with subject matter experts and project managers. You can build raport and trust early in a project's life cycle by sharing your preliminary findings with these stakeholders . This can lead to a deeper understanding of both the available data and the problem being addressed for everyone involved. If done well, it also starts to build trust in your work before you even begin the modelling stage of a project.

<!-- Communicating with specialists -->
Sharing an exploratory analysis will inevitably require a time investment. The graphics, tables, and summaries you produce need to be presented to a higher standard and explained in a way that is clear to a non-specialist. However, this time investment will often pay dividends because of the additional contextual knowledge that the domain-expert can provide. They have a deep understanding of the business or technical domain surrounding the problem. This can provide important insights that aren't in the data itself, but which are vital to the project's success.

As an example, these stakeholder conversations often reveal important features in the data generating or measurement process that should be accounted for when modelling. These details are usually left out of the data documentation because they would be immediately obvious to any specialist in that field. 

<!-- Communicating with project manager -->
An EDA can sometimes allow us to identify cases where the stength of signal within the available data is clearly insufficient to answer the question of interest. By clearly communicating this to the project mangaer, the project can be postponed while different, better quality or simply more data are collected. It's imporant to note that this data collection is not trivial and can have a high cost in terms of both time and capital. It might be that collecting the data needed to answer a question will cost more than we're likely to gain from knowing that answer. Whether the project is postponed or cancelled, this constitutes a successful outcome for the project, the aim is to to produce insight or profit - not to fit models for their own sake.

## EDA as project scoping 

A third view on EDA is as an initial assessment of whether the available data measure the correct values, with sufficient quality and quantity, to answer a particular question. In order for EDA to be successful, it's important to take a few key steps.

First, it's important to formulate a specific question of interest or line of investigation and agree on it with the stakeholder. By having a clear question in mind, it will be easier to focus the analysis and identify whether the data at hand can answer it.

Next, it's important to make a record (if one doesn't already exist) of how the data were collected, by whom it was collected, what each recorded variable represents and the units in which they are recorded. This meta-data is often known as a data sheet. Having this information in written form is crucial when adding a new collaboartor to a project, so that they can understanding the data generating and measurement processes, and are aware of the quality and accuracy of the recorded values. 

In addition, it's essential to investigate and document the structure, precision, completeness and quantity of data available. This includes assessing the degree of measurement noise or misclassification in the data, looking for clear linear or non-linear dependencies between any of the variables, and identifying if any data are missing or if there's any structure to this missingness. Other data features to be aware of are the presence of any censoring or whether some values tend to be missing together.

Furthermore, a more advanced EDA might include a simulation study to estimate the amount of data needed to detect the smallest meaningful effect. This is more indepth than a typical EDA but if you suspect that the signals within your data are weak relative to measurement noise, can help to demonstrate the limitations of the current line of enquiry with the information that is currently available.


## What EDA is not 

::: Picture of smoothed time series ::: 
::: Picture of time series comparing mean in first and second part :::

It's important to understand that an exploratory data analysis is not the same thing as modelling. In particular is it the constuction of your baseline model, which is sometimes called initial data analysis.

Though it might inform the choice of baseline model, EDA is usually not model based. Simple plots and summaries are used to identify patterns in the data that inform how you approach the rest of the project. Some degree of statistical rigour can be added through the use of non-parametric tecnhiques; methods like rolling averages, smoothing or partitioning can to help identify trends or patterns while making minimal assumptions about the data generating process.

Though the assumptions in an EDA are often minimal it can help to make them explicit. For example, in this plot a moving averages is shown with a confidence band, but the constuction of this band makes the implicit assumption that, at least locally, our observations have the same distribution and so are exchangable. 

Finally, EDA is not a prescriptive process. While I have given a lot of suggestions on what you might usually want to consider, there is no correct way to go about an EDA becuase it is so heavily dependent on the particular dataset, its interpretation and the task you want to achieve with it. This is one of the parts of data science that make it a craft that you hone with experience, rather than an algorithmic process. When you work in a particular area for a long time you develop a knowledge for common data quirks in that area, which may or may not translate to other applications.


## Issues with EDA: Forking Paths 

In any data science project you have a sequence of very many decisions that you must make, each with many potential options and is difficult to decide upon _a priori_.  Focusing in on only one small part of the process, we might consider picking a null or baseline model, which we will then try and improve on. Should that null model make constant predicitions, incorporate a simple linear trend or is something more flexible obviously needed? Do you have the option to try all of these or are you working under time constraints? Are there contextual clues that rule some of these null models out on contextual grounds? An EDA lets you narrow down your options by looking at your data and decide on reasonable modelling approaches.  


## Issues with EDA: Data Leakage

The problem that sneaks in here is data leakage. Formally where training data is included in test set, but this happens informally too. Usually this is becuase you've seen the data you're trying to model or predict and then selected your modelling approach based on that information.  


Frequentist statistical methods for estimation and testing assume no suck "peeking" has occurred. By using these methods without acknowledging that we have already observed our data will artificially inflate the sigificance of our findings. For example, we might be testing a linear trend vs constant prediction, but this test was only performed because we had already having examined at the data and noticed what might be a trend. 

Similar issues arise in Bayesian approaches when doing illiciting prior distributions. On enice thing that we can do here is to simulating data from the prior predictive distribution and check that an expert agrees they seem reasonable. However, if the expert is also the person who collected the data we will be modelling it is very difficult for them to ignore what they have seen, leading to similar leakage problems. 

## Solutions 

There are various methods or corrections that we can apply during our testing and estimation procedures to ensure that our error rates or confidence intervals account for our previous "peeking" during EDA.

Examples of these corrections have been developed across many fields of statistics. In medical statistics we have approaches like the Bonferroni correction, to account for carrying out multiple hypothesis tests. In the changepoint literature there are techniques for estimating a change location given that a change has been detected somewhere in a time series. While in the extreme value literature there are methods to estimating the required height of flood defences, given that the analysis was triggered by the current defences being compromised.


All of these corrections require us to make assumptions about the nature of the peeking. They are either very sepecific about the process that has occurred, or else are very pessimistic about how much information has been leaked. Developing such corrections to account for EDA isn't really possible, given its adaptive and non-prescriptive nature. 

In addition to being either highly specific or pessimistic, these corrections can also be hard to derive and complicated to implement. This is why in settings where the power of tests or level of estimation is critically important, the entire analysis is pre-registered. In clinical trials, for example, every step of the analysis is specified before any data are colleced. In data science this rigorous approach is rarely taken. As statistically trained data scientists it is important for us to remain humble about our potential findings and to suggest follow up studies to confirm the presence of any relationships we do find.


## Learning More

Recommended Reading aroudn EDA: 

Because of its non-presecriptive nature writing about EDA is difficult. An excellent piece of writing that agrees with this, despite it's title is the EDA checklist by R D Peng. This serves as an excellent worked example that I would highly recommend reading. 





