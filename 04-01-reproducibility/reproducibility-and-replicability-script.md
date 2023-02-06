# Reproducibility and replicability 

!! Needs context about getting your work into production !!

## Introduction 

- Data science is a science and as data scientists we like to think that we are applying the scientific method in our work

- Start with a question we want to answer or a prblem we want to solve. Search the literature, to see if this is a problem that lots of people have solved before. If not, we proceed to gather evidence and combine this with existing knoweldge. We know that the conclusions we reach are not the truth, but some approximation of it - a simplified model of reality. Happily update that model when new evidence comes along to contradict our previous way of thinking. 

- Except that's not really what happens. 

	- Apart from special instances like A/B testing we do not go in with a clear problem or hypothesis. We might want to construct a model for a phenomenon and try many variants along the way. You're all aware of p-hacking - if you look at random noise enough times you will find a significant relationship. 
	
	- Second aspect is that we cannot trust the published literature to be a fair representation of what people have tried in the past. Null results and unsuccessful attempts do not make it into publications. For one this leads to a risk of the really bad type of p-hacking where numbers are massaged to get p=0.049. But it also leads to a more subtle problem where many separate scientists try an obvious but ineffective experiment. Most don't publish their results, which correctly show that the new method fails but the one time it does work gets great fanfare. This means when we come to assess the state of existing knowledge, we are unable to properly contextualise the importance of findings because we lack the context of all those null results that went unreported.
	

- How do reproducibility and replicability differ, and what should we be doing as data scientists to bring our work closer to satisfying both of these lofty criteria? 


## Reproduction vs Replication

Reproducibility: given the original raw data and code, can you get all of the results again (in both a particular sense of getting the exact same numbers, which ensures the substative sense of drawing the same conclusions). 

Replicability: if the experiment were repeated, you would get slightly different data but would the substative conclusions be the same? (about things like the existance, direction or magnitude of an effect. If you are estimating a relationship do you get the same functional form?) 

Data science lies at the intersection of computing and statistics, and we can draw from each of these fields to help us address these issues. 

## Reproduction crisis 

- At a point now where it is almost standard to publish data along with papers 
- Still far from standard to have code made available and be put up to detailed scrutiny as part of peer-review. 
- Contrast within and outwith academia - academics scrutinise IP, industry has code review 
- Code is available on request is new data are available on request 
- Across many sciences coding your analyses is not standard	
	- GUIs leaving no history of what has been done
	- Expensiveproprietary software prohibiting 
- This means that it is very often impossible to reproduce an analysis
- Not intended to be disparaging, takes a lot of time to learn how to do these things. Time that other scientists spend learning their subject to get to the point of doing research in the firstplace. 

- The smae fate can easily befall us as data scientists. Not only does it take time to learn the skills and pracitices to ensure reproducibility, it takes time to implement them. And the time of an expert data practitioner does not come cheap. If you wait until the end of your project to make it reproducible you are too late - time or money will run out. 

## Replication crisis 

- We've seen already how publication bias becomes pervasive when null results are not reported.
- This is exacerbated by the fetishisation of novelty: funding and presteige are given to studies that test new models and find new results, much more so than is given to studies seeking to confirm existing results (which may not be as solid as published evidence suggests).   
- This means that relatively few confirmatory studies are run, and the results of these are truly polarised in their impact. They will either cause a media frienzie as a well-known result or else there is only a quiet retraction of previous claims. As with most things in life, neither of these results in a healthy 
- 



- Minimal working examples and reprex for bug fixing. What is the smallest bit of code that can recreate your issue?
- 
-




These worries apply to all aspects of science. The intersection of computing and statistics we are well placed to address both of these. Many of our suggested workflows were indended to ensure reproducibility, and not only this but to allow automated reporducibility. This is one huge advantage that we have as a computational disipline - re-running our experiments is cheap and efficient. Even if we have huge computational costs where models take days to fit, that is nothing when compared to wet-lab sciences. 









