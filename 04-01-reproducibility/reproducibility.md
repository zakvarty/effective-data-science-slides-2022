
# Reproducibility, Replicability and the Scientific Method 

> Putting the Science in Data Science 

> Scientific Method

"Data Science" == str_c("Data", "Science")

In what twe have covered so far we have been very much focused on the first aspect of data science: the data. When we come to consider about whether our work can be reproduced or our or results can be replicated, this shifts our focus to the second aspect, the science.  

As data scientists, we like to think that we are applying the scientific method in our work. 

<!-- Image of Scienfic method as a cycle --> 

We start with a question we want to answer or a problem we want to solve. This is followed by a search of the exisiting literature: is this is a well-known problem that lots of people have solved before? If it is, fantastic, we can learn from their efforts. If not, then we proceed to gather our own evidence and combine this with whatever existing knoweldge we could scrape together. Finally, we draw conclusions from this synthesised information. When doing so we acknowledge that the conclusions we reach are not the truth, just our current best approximation of it. We have a usefully simplified model of the messy reality that we can share with the world. Finally, we will happily update our model as we become aware of new evidence, whether that new information supports or contradicts our current way of thinking. 

That sounds excellent and is, in an ideal world, how both science and data science would progress. However, just like our models this is a simplified (and in this case idealised) description of what really happens. 

> Multiple, dpendent tests

The aims of a data science project are rarely framed as a clear an unambiguous hypothesis, for which we will design a study and perform a single statistical analysis. Apart from in special cases, like A/B testing, we have a much more general aim for our data science projects. 

We might want to construct a model for a given phenomenon and we'll try many variants of that model along the way. By taking a more relaxed approach to data analysis, data scientists can run the risk of finding spurious relationships within our data that don't hold more generally. If you look for a relationship between the quantity you are trying to precidt and enough samples of random noise will almost surely find a significant relationship, even though there is no true link.


> $p$-hacking and publication bias

Okay, so our methods of investigation as data scientists might not be completely sound, but that should be balanced by the results of other studies that exist, right? Well, the second worrisome aspect of this process is that we can't always trust the published literature to be a fair representation of what people have tried in the past.

Studies that do not provide strong evidence against the null hypothesis rarely make it into publications, reports or the news. This is largely because of the way that scientific enquiry is rewarded in the the academy, business and the media. Funding and attention tend to go to studies with new findings, rather than those which aim to confirm or strengthen the evidence for exisiting studies. 
 
 This systemic problem incentivises scientists to 'massage' numbers to obtian a $p$-value less than 0.05 so that a result can be reported as statistically significant. This process is known as $p$-hacking and can occur through deliberate malpractice but more often it's a result of scientists generally not recieving adequate training in statistics. As statistically trianed data scientists we know that a declaration of significance is no indication of a meaningful effect size and that the conventional signficance level of 5% is entirely arbitrary. However, we need to be aware that this is not the case across science and that even we are not immune to the societal and systematic influences that favour the publication of novel results over confirmatory ones.

 These influences also lead to a much more subtle problem than direct $p$-hacking. Consider a model with an obvious but unnecessary addtional property to add: a example here might be adding an unnecessary term to a regression. Because this extension is such low hanging fruit, many scientists independently design experinments to test it out. Most of these experiments provide insufficient evidence against the null hypothesis and don't get developed into published papers or technical reports, because they just support the status quo.  However, after enough people have attempted this some scientist will get "lucky" and find a significant (and potentially relevant) benefit. Of all the experiments that were done, this is the only one that makes it onto the public record. 

 All of these studies being left in the proverbial desk drawer induces publication bias in the scientific literature. When we come to assess the state of existing knowledge, we are unable to properly assess the importance of findings, because we lack the context of all those null results that went unreported.

This same process means that the results of many more scietinfic studies than we would expect cannot be recreated. This is what is known as the replication crisis.


# Reproducibility, Replicability and Going into Production 

Now's a good time to clarify an important distinction between a project that can be reproduced and a project that can be replicated. 


> Reproducibility: given the original raw data and code, can you get all of the results again? 

This idea of reproducibility requires us to be able to recover the exact same numerical summaries as the original investigator. In particular this means we should be able to reproduce the exact same point estimates and measures of uncertainty that they did, which ensures we'll draw the same conclusions as that original investigator.

Note that just because findings are reproducible, that doesn't by any means imply that they're correct. We could have a very well documented but flawed analysis that is entirely reproducible but is also completely unsuitable or just plain wrong.  

In our data science projects, we have already taken several steps that greatly improve the reproducibility of our work. Although we scripted, tested and documented our work to improve the management of our project, these decisions improve the scientific quality of our work too. This puts us in a strong position relative to the scientific literature as a whole. 

At a point now where it is almost standard to publish data along with papers, but for a long time this was not the case and data if data were available at all, this was only by request. We are now in a similar situation when it comes to code. It's still far from standard for the analysis code to be required and put up to detailed scrutiny as part of the peer-review process. 

With a little more context this isn't so unreasonable. Across many scientific disciplines, code-based approaches to analysis is not standard; statistical software with a graphical user interface is used instead. The idea here is to allow scientists to analyse their own data by providing tools trough a combination of menus and buttons. However, these interfaces often leave no record of how the data were manipulated and the software itself can be highly specialised or proprietary. This combination means that even when full datasets are provided, it is often impossilbe for others to reproduce the original analysis.

None of this is meant to scold or disparage scientists who use this type of software to allow them to perform statistical analyses. You're well aware of how much time and effort it takes to learn how to use and implement statistical methods correctly. This is time that other scientists invest in learning their subject, so that they can get to the point of doing research in the firstplace. This is one of the wonders of data science: the ability to work in multi-discplinary teams where individual members are specialised in different areas.

This is where we need to pause and check ourselves, because the same fate can easily befall us as data scientists. Yes, it take time to learn the skills and pracitices to ensure reproducibility, but it also takes time to implement them and the time of an expert data practitioner doesn't come cheap. If you wait until the end of a project before you make it reproducible then you'll usually be too late - time or money will have run out. 


> Replicable: if the experiment were repeated by an independent investigator, you would get slightly different data but would the substative conclusions be the same? 

We know that if we repeat an experiment we will get slightly different data and slightly different results. Replication takes a more generalised view on this and asks whether the key properties of your results could be replicated by another person. Yes, point estimates will vary slightly but do your conclusions about the existiance, direction or magnitude of an effect still hold? Alternatively, if you are estimating a relationshop between two variables is the same functional form chosen as the most suitable? 

Coming to data science from a statistical starting point means that you are well accustomed to these sorts of consideration: they form the basis of model selection and hypothesis testing. 
- When selecting models you put a lot of effort into selecting a model that will generalise
	- Going into production is the only way to truly test this generalisation
	- A/B tests or parallel systems monitoring can be used to establish this before moving to production.


> Reproducibility
	- Loan applications predictor, 
	- Hand to engineering team, can't rely on you always being available. (does not scale, single point of failure)
	- Complaint from user, to be able to respond you to be able to reproduce the outcome
	- Want that outcome to be consistant  decisions given 

> Replication
	- When selecting models you put a lot of effort into selecting a model that will generalise
	- Going into production is the only way to truly test this generalisation
	- A/B tests or parallel systems monitoring can be used to establish this before moving to production.


> We have already taken some measures toward reproducibility and replicability 

	- Scripting, testing and documenting our analyses
	- Taking care to quantify uncertainty and assess significance of findings


# Reproducibility, Replicability and Statistical Data Science

> We rely on stochasticity a lot in data science 

> One reason for this is that it helps us with the replicability of our findings:
	- train-test split, LOOCV and jack-knife 
	- statistical tests eg. LRT, distn of test stat not always tractable, simulation based alternatives 

> Stochastic elements to model fitting 

	- Optimisation for point esimtates and MCMC or bootstrap for uncertainty quantification
	- Each time you rund this you might get slightly different outcomes
	- Reproducibility: are your conclusions robust to starting point, step-size, n-iterations? 
	- Replication: if one run goes wrong can you recreate and diagnose it? 
	- Pseudorandom number generators and set.seed()
	- Issues when this is exported to another programming language that is less focused on probabilistic programming. 

- In computing random numbers are not (usually) really random
- Deterministic sequence where the next term is generated from the current one but in such a way the resulting squence is statistically indisinguishable from a series of independent random variates. 
- This means we can set the starting point and get the same sequence of random variates each time we run the code
- in R the function to set this starting point is set.seed(), which can allow us to recreate stochastic simulations exactly. 

- Have to be wary when both setting a random seed using methods to speed up your code 
- if running code in parallel, should each stream get the same or a distinct seed
- when interacting with other programming languages that are not statistically focused as R, be wary of the quality of pseudorandom number generation and that seeds are appropriately passed between languages.





