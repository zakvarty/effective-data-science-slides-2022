# Scalability
 

 - Scalability in running time 
 - Scalability in memory

 - Tradeoff-between development and usage costs
 - MCMC that currently takes 4 days to get posterior sample 
 - Cut that down to 4 hours with a lot of effort 24 x speed up
 - Is this good? It depends:	
 	- How long did it take you to make these changes  
 	- How many times will the code be run
 	- Does the code still as safe / stable / general / readable as needed? 
 	- As we will see scalability or efficiency often require us to sacrifice on or more of these properites. 


- If we are going to improve our code we need to identify the bottlenecks. 	
	- these are the most resource intensive aspects of our work, whether in time or memory. 
- While over time you can develop a nose for bottleneck candiates, in any individual case it's far from straightforward to identify based on code alone what these will be.

- Can appeal to the science part of data science: run some experiments and make measuerments to identify the bottlenecks in our workflow. 
- Timing our code and measuring memory usage: known as code profiling. 

- Improtant to use representative examples when profiling and to consider where to invest our effort 

- Depending on the scale of your problem different parts of the code may present the bottleneck. When setting up your MCMC code, when collecting short chains the limiting factor might be reading in a large data set or checking that the initial parameter values are added. As the number of samples you collect grows, this might shift so that the biggest issue become how quickly you can perform updates or how efficiently you can store the sampled parameter values. 

- If we put too much effort in to scalability early on in a project's development, we might

optimising too early often leads to fixing second-order issues first and 
-
