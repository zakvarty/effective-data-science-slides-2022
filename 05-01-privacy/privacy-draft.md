
## Privacy and Data

Data privacy is all about keeping people's personal information confidential and secure. It's the idea that people have control over their personal data, and that companies and organizations are responsible for protecting it. Personal data can include things like names, addresses, phone numbers, email addresses, medical information, and even online activity.

Under the concept of data privacy, individuals have the right to know what information is being collected about them, how it's being used, who it's being shared with, and to have the ability to control that information. Companies and organizations, on the other hand, have a responsibility to keep this information secure and to use it only for the purpose it was intended.

It's important to remember that with the growing use of machine learning and data science metods, personal information is being collected, stored, and shared more than ever before. This makes data privacy a critical issue to our work as data sceintists. By ensuring that personal information is handled responsibly and with respect for people's privacy, we can build trust and confidence in the digital world. 

In this section of the course I hope to introduce you to some key ideas around data privacy and use some case studies to demonstrate that privacy is not an easy thing to ensure.


## 

### Article 12 of the Universal Declaration of Human Rights 

> No one shall be subjected to arbitrary interference with his
privacy, family, home or correspondence, nor to attacks
upon his honour and reputation. Everyone has the right
to the protection of the law against such interference or
attacks. - [UN General Assembly](https://www.un.org/en/about-us/universal-declaration-of-human-rights), 1948

The idea of a right to privacy is not a new one. Article 12 of the Universal Declaration of Human Rights, written in 1948, states that everyone has the right to privacy in their personal and family life, home and correspondence (this includes communication via the post, telephone, and email).

This means that everyone has the right to keep their personal information, private and protected from being disclosed to others without their consent. This right to privacy is essential for protecting an individual's autonomy, dignity, and freedom. 

The Universal Declaration of Human Rights it is often considered as a benchmark for human rights and many countries have incorporated its principles into their own laws and regulations. This means that in many countries the right to privacy is legally protected and people have the right to take action if their privacy is violated.

This means we have to take particular care in our work as data scientists when handling any information personal information, whether that is at the individual level or in aggregate.

--- 

## GDPR 

> ‘Consent’ of the data subject means any freely given, specific, informed and unambiguous indication of the data subject’s wishes by which he or she, by a statement or by a clear affirmative action, signifies agreement to the processing of personal data relating to him or her;  - GDPR [Article 4](https://gdpr-info.eu/art-4-gdpr/)


A more recent set of regulations relating to the use of personal data is the General Data Protection Regulation (GDPR). This is a comprehensive data privacy regulation that went into effect on May 2018 within the European Union. The purpose of the GDPR is to give individuals more control over their personal information and how it's used, and to unify data protection laws across the EU.

The GDPR is an extensive legal doucument that lays down strict rules for how companies and organizations must handle the personal data of EU citizens, _regardless of where that data is stored or processed_. 

Some key provisions of the GDPR include the requirement to obtain explicit, informed and active consent from individuals before the collection and processing of their personal data. This is precisely why banner notifications about cookies on websites became ubiquitous, 

GDPR also establishes the right for individuals to request access to, or deletion of, their personal data. Furthermore, it states that in the event of a data breach (where unorthorised access or use of personal data occurs) the data holder must inform the affected individuals and relevant authorities within 72 hours. 


--- 

## Measuring Privacy: Key Terms


> _Pseudonmisation_: processing data so that it does not relate to an identifiable person.

> _Re-identification_: elating a pseudonymised data entry to an identifiable person.

> _Anonymisation_: A pseudonmisation method that precludes re-identification.

:::{.notes}
Measuring privacy within a dataset is a complex task that involves assessing the degree to which personal information is protected from unauthorized access, use, or disclosure. There are many ways of measuring and increasing the degree of privacy within a data set. To understand these, and the literature on data privacy, it helps to be familiar with a few key terms. 

A data entry is pseudonymised when it has been processed in a way that it does not relate to an identifiable person. 

The key word here is identifiable. Replacing your name with your CID would be considered a form of pseudonymisation, because based on that information alone you cannot be identified. 

Re-identification is the act of relating a pseudonymised data entry to an identifiable person. Re-identification makes something about that person known that wasn't known beforehand, perhaps by using processing techniques or cross-referencing against external information. 

In the previous grading scenario, reidentifiaction occurs after marking so that your grades can be returned to you. 

Anonymisation is a word that in casual usage is often conflated with our previous definition of Pseudonymisation. In the technical sense, anonymisation is any form of pseudonymisation that precludes the possiblity of re-identification.

We don't wanto to anonymise test scores, or we would not be able to map them back to individual students. However, if grades were to be published online then we would want to ensure that this is only done in an anonymised format. 
:::

__ 

## Measuring Privacy: Pseudo-identifiers and K-anonymity 

Can talk about k-anonymity of one or more sensitive attrubties 
> A variable (attribute) that can also be observed in public data. For
example, someone’s name, job title, zip code, or email.

> Consider the set of quasi-identifiers A1, . . . ,An. A table is
k-anonymous if each possible value assignment v1, . . . , vn to these
variables is observed for either 0 or at least k individuals (i.e.,
among observed value assignments, each is shared by k data rows).

:::{.notes}
K-anonymity is a technique that ensures each combination of attributes that might be observable elsewhere is shared by at least k records within the dataset. This ensures that each individual's data can't be distinguished from at least k-1 other individuals. This porvides some rudimentary level of privacy, where k correspons to the size of smallest equivalence class of pseudo-identifiers within the data. Therefore larger values of k correspond to greater levels of privacy. 

:::

__ 

## K-anonymity Example 


|    | Post Code | Age  | Drug Use | **Condition** |
|----|-----------|------|----------|---------------|
| 1  | OX1****   | <20  | *        | **Herpes**    |
| 2  | OX1****   | <20  | *        | **Herpes**    |
| 3  | OX2****   | >=30 | *        | **Chlamydia** |
| 4  | OX2****   | >=30 | *        | **Herpes**    |
| 5  | OX1****   | <20  | *        | **Gonorrhea** |
| 6  | OX2****   | >=30 | *        | **Gonorrhea** |
| 7  | OX1****   | <20  | *        | **Gonorrhea** |
| 8  | LA1****   | 2*   | *        | **Chlamydia** |
| 9  | LA1****   | 2*   | *        | **Chlamydia** |
| 10 | OX2****   | >=30 | *        | **Gonorrhea** |
| 11 | LA1****   | 2*   | *        | **Chlamydia** |
| 12 | LA1****   | 2*   | *        | **Chlamydia** |


|    | Post Code | Age  | Drug Use | **Condition** | _Equivalence Class_ |
|----|-----------|------|----------|---------------|---------------------|
| 1  | OX1****   | <20  | *        | **Herpes**    | _1_                 |
| 2  | OX1****   | <20  | *        | **Herpes**    | _1_                 |
| 3  | OX2****   | >=30 | *        | **Chlamydia** | _2_                 |
| 4  | OX2****   | >=30 | *        | **Herpes**    | _2_                 |
| 5  | OX1****   | <20  | *        | **Gonorrhea** | _1_                 |
| 6  | OX2****   | >=30 | *        | **Gonorrhea** | _2_                 |
| 7  | OX1****   | <20  | *        | **Gonorrhea** | _1_                 |
| 8  | LA1****   | 2*   | *        | **Chlamydia** | _3_                 |
| 9  | LA1****   | 2*   | *        | **Chlamydia** | _3_                 |
| 10 | OX2****   | >=30 | *        | **Gonorrhea** | _2_                 |
| 11 | LA1****   | 2*   | *        | **Chlamydia** | _3_                 |
| 12 | LA1****   | 2*   | *        | **Chlamydia** | _3_                 |

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-te3u{background-color:#f3a7a7;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-uftu{background-color:#dbe6db;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-61xu{background-color:#cbcefb;border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0pky"></th>
    <th class="tg-0pky">Post Code</th>
    <th class="tg-0pky">Age</th>
    <th class="tg-0pky">Drug Use</th>
    <th class="tg-0pky"><span style="font-weight:bold">**Condition**</span></th>
    <th class="tg-0pky"><span style="font-style:italic">_Equivalence Class_</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">1</td>
    <td class="tg-uftu">OX1****</td>
    <td class="tg-uftu">&lt;20</td>
    <td class="tg-uftu">*</td>
    <td class="tg-0pky"><span style="font-weight:bold">**Herpes**</span></td>
    <td class="tg-0pky"><span style="font-style:italic">_1_</span></td>
  </tr>
  <tr>
    <td class="tg-0pky">2</td>
    <td class="tg-uftu">OX1****</td>
    <td class="tg-uftu">&lt;20</td>
    <td class="tg-uftu">*</td>
    <td class="tg-0pky"><span style="font-weight:bold">**Herpes**</span></td>
    <td class="tg-0pky"><span style="font-style:italic">_1_</span></td>
  </tr>
  <tr>
    <td class="tg-0pky">3</td>
    <td class="tg-te3u">OX2****</td>
    <td class="tg-te3u">&gt;=30</td>
    <td class="tg-te3u">*</td>
    <td class="tg-0pky"><span style="font-weight:bold">**Chlamydia**</span></td>
    <td class="tg-0pky"><span style="font-style:italic">_2_</span></td>
  </tr>
  <tr>
    <td class="tg-0pky">4</td>
    <td class="tg-te3u">OX2****</td>
    <td class="tg-te3u">&gt;=30</td>
    <td class="tg-te3u">*</td>
    <td class="tg-0pky"><span style="font-weight:bold">**Herpes**</span></td>
    <td class="tg-0pky"><span style="font-style:italic">_2_</span></td>
  </tr>
  <tr>
    <td class="tg-0pky">5</td>
    <td class="tg-uftu">OX1****</td>
    <td class="tg-uftu">&lt;20</td>
    <td class="tg-uftu">*</td>
    <td class="tg-0pky"><span style="font-weight:bold">**Gonorrhea**</span></td>
    <td class="tg-0pky"><span style="font-style:italic">_1_</span></td>
  </tr>
  <tr>
    <td class="tg-0pky">6</td>
    <td class="tg-te3u">OX2****</td>
    <td class="tg-te3u">&gt;=30</td>
    <td class="tg-te3u">*</td>
    <td class="tg-0pky"><span style="font-weight:bold">**Gonorrhea**</span></td>
    <td class="tg-0pky"><span style="font-style:italic">_2_</span></td>
  </tr>
  <tr>
    <td class="tg-0pky">7</td>
    <td class="tg-uftu">OX1****</td>
    <td class="tg-uftu">&lt;20</td>
    <td class="tg-uftu">*</td>
    <td class="tg-0pky"><span style="font-weight:bold">**Gonorrhea**</span></td>
    <td class="tg-0pky"><span style="font-style:italic">_1_</span></td>
  </tr>
  <tr>
    <td class="tg-0pky">8</td>
    <td class="tg-61xu">LA1****</td>
    <td class="tg-61xu">2*</td>
    <td class="tg-61xu">*</td>
    <td class="tg-0pky"><span style="font-weight:bold">**Chlamydia**</span></td>
    <td class="tg-0pky"><span style="font-style:italic">_3_</span></td>
  </tr>
  <tr>
    <td class="tg-0pky">9</td>
    <td class="tg-61xu">LA1****</td>
    <td class="tg-61xu">2*</td>
    <td class="tg-61xu">*</td>
    <td class="tg-0pky"><span style="font-weight:bold">**Chlamydia**</span></td>
    <td class="tg-0pky"><span style="font-style:italic">_3_</span></td>
  </tr>
  <tr>
    <td class="tg-0pky">10</td>
    <td class="tg-te3u">OX2****</td>
    <td class="tg-te3u">&gt;=30</td>
    <td class="tg-te3u">*</td>
    <td class="tg-0pky"><span style="font-weight:bold">**Gonorrhea**</span></td>
    <td class="tg-0pky"><span style="font-style:italic">_2_</span></td>
  </tr>
  <tr>
    <td class="tg-0pky">11</td>
    <td class="tg-61xu">LA1****</td>
    <td class="tg-61xu">2*</td>
    <td class="tg-61xu">*</td>
    <td class="tg-0pky"><span style="font-weight:bold">**Chlamydia**</span></td>
    <td class="tg-0pky"><span style="font-style:italic">_3_</span></td>
  </tr>
  <tr>
    <td class="tg-0pky">12</td>
    <td class="tg-61xu">LA1****</td>
    <td class="tg-61xu">2*</td>
    <td class="tg-61xu">*</td>
    <td class="tg-0pky"><span style="font-weight:bold">**Chlamydia**</span></td>
    <td class="tg-0pky"><span style="font-style:italic">_3_</span></td>
  </tr>
</tbody>
</table>


% Please add the following required packages to your document preamble:
% \usepackage[table,xcdraw]{xcolor}
% If you use beamer only pass "xcolor=table" option, i.e. \documentclass[xcolor=table]{beamer}
\begin{table}[]
\begin{tabular}{|l|l|l|l|l|l|}
\hline
   & Post Code                       & Age                                       & Drug Use                  & **Condition** & \_Equivalence Class\_ \\ \hline
1  & \cellcolor[HTML]{DBE6DB}OX1**** & \cellcolor[HTML]{DBE6DB}\textless{}20     & \cellcolor[HTML]{DBE6DB}* & **Herpes**    & \_1\_                 \\ \hline
2  & \cellcolor[HTML]{DBE6DB}OX1**** & \cellcolor[HTML]{DBE6DB}\textless{}20     & \cellcolor[HTML]{DBE6DB}* & **Herpes**    & \_1\_                 \\ \hline
3  & \cellcolor[HTML]{F3A7A7}OX2**** & \cellcolor[HTML]{F3A7A7}\textgreater{}=30 & \cellcolor[HTML]{F3A7A7}* & **Chlamydia** & \_2\_                 \\ \hline
4  & \cellcolor[HTML]{F3A7A7}OX2**** & \cellcolor[HTML]{F3A7A7}\textgreater{}=30 & \cellcolor[HTML]{F3A7A7}* & **Herpes**    & \_2\_                 \\ \hline
5  & \cellcolor[HTML]{DBE6DB}OX1**** & \cellcolor[HTML]{DBE6DB}\textless{}20     & \cellcolor[HTML]{DBE6DB}* & **Gonorrhea** & \_1\_                 \\ \hline
6  & \cellcolor[HTML]{F3A7A7}OX2**** & \cellcolor[HTML]{F3A7A7}\textgreater{}=30 & \cellcolor[HTML]{F3A7A7}* & **Gonorrhea** & \_2\_                 \\ \hline
7  & \cellcolor[HTML]{DBE6DB}OX1**** & \cellcolor[HTML]{DBE6DB}\textless{}20     & \cellcolor[HTML]{DBE6DB}* & **Gonorrhea** & \_1\_                 \\ \hline
8  & \cellcolor[HTML]{CBCEFB}LA1**** & \cellcolor[HTML]{CBCEFB}2*                & \cellcolor[HTML]{CBCEFB}* & **Chlamydia** & \_3\_                 \\ \hline
9  & \cellcolor[HTML]{CBCEFB}LA1**** & \cellcolor[HTML]{CBCEFB}2*                & \cellcolor[HTML]{CBCEFB}* & **Chlamydia** & \_3\_                 \\ \hline
10 & \cellcolor[HTML]{F3A7A7}OX2**** & \cellcolor[HTML]{F3A7A7}\textgreater{}=30 & \cellcolor[HTML]{F3A7A7}* & **Gonorrhea** & \_2\_                 \\ \hline
11 & \cellcolor[HTML]{CBCEFB}LA1**** & \cellcolor[HTML]{CBCEFB}2*                & \cellcolor[HTML]{CBCEFB}* & **Chlamydia** & \_3\_                 \\ \hline
12 & \cellcolor[HTML]{CBCEFB}LA1**** & \cellcolor[HTML]{CBCEFB}2*                & \cellcolor[HTML]{CBCEFB}* & **Chlamydia** & \_3\_                 \\ \hline
\end{tabular}
\end{table}



---

## Improving and Breaking K-anonymity 

### Ways to Improve Privacy 

There are three main ways that you can improve the level of privacy within your data: 

- Redaction may be applied to individual or to an attribute, leading to a whole row or column being censored. This is quite an extreme approach: it can lead to a large amount of information being removed from the data set.  However, sometimes redacting a full row is necessary; for example when that row contains identifying information like a person's name or national insurance number. An addtional concern when redacting _rows_ from your data is that it will artificially alter the distibution of your sample, making it unrepresentative of the population values.


- Aggregation

- Aggregation or coarsening is a second approach where the level of anonymity can be increased by binning continuous varialbes into dicrete ranges or by conbmining categories within a variable that already takes discrete values. The idea here is to reduce the number of equivalence classes within the quasi-identifiers so that the level of k-anonymity is increased.


- Corruption

- A similar approach is to add noise to the observed data, so that overall patterns are retained but individual recorded values no longer correspond to an individial in the data set. The difficulty here is in setting the type and amount of noise to be added to the data to grant sufficient privacy without removing all information from the dataset. 

The trade-off between information loss and privacy is a common theme throughout all of these methods. 

### Breaking K-anonymity 

K anonymity ensures that there are at least k-1 other people with your particular combination of pseudo-identifiers. What it does not do is ensure that there is any variation within a particular group. The dataset on sexual health we just saw was 4-anonymous, but if we know a person how attended the clinic was from a Lancashire (LA) postcode and in their 20's then we know for certain that they have Chlamydia. An alternative privacy mesaure called l-diversity tries to address this issue. 

A second problem with K-anonymity is that this type of privacy measure is focused entirely on the data available within this dataset. It does not take into account data that might be available elsewhere or might become publicly available in the future. An external data-linkage attack can cross-reference this table against other information to reduce the size of equivalence classes and releal personal information.


## Cautionary tale: Massachussets 

Medical research is often slow because it is very difficult to share medical records while maintaining patients' privacy. In the 1990s a gavernment agency in Massachisetts wanted to improve this by releasing a dataset summarising the hospital visits made by all state employees. They were understandably quite careful about this, making this information available only to academic researchers and redacted all information like names, addresses and security numbers. They did include the the patient's date of birth, zip code, and sex - this information was deemed sufficiently general while allowing difference in healthcare provision to be investigated. 

Latanya Sweeney is now a preeminent researcher in the field of data privacy. In the 1990s she was studying for a PhD and MIT and who wanted to demonstrate the potential risks of de-anonymizing this sort of data. To demonstarte her point she chose to focus on the public records of Massachusetts' governor, William Weld. For a small fee, Sweeney was able to obtain the voter registration records for the area in which the governor lived. By cross-referencing the two datasets Sweeney was able to uniquely identify the covernors medical history and send them to him in the post. This was partularly embarassing for Weld. since he had previously given a statement reassuring the public that this data release would not compromise the privacy of public servants. 


This interaction between Sweeney and the Governor of Massachusetts was significant because it highlighted the potential privacy risks associated with the release of publicly available information. It demonstrated that even when data is stripped of names and other identifying information, it can still be possible to re-identify individuals and potentially access sensitive information. The problem here only grows with the dimension of the dataset - the more characteristics that are measures the greater the chance of one person having a unique combination of those. 

## Cautionary tale: Netflix

In 2006 Neflix announced a public competition to improve the performance of their recommender system with a pros of 1 million USD to the first person or group to improve its preformance by at least 10%. For this competition over 100 million ratings from 480,000 users were made public. Each entry contained a pseudonymised user ID, a film id, the rating out of 5 stars and the date that rating was given. 

Although the Netflix team had pseudonymised the data (and taken other steps like adding noise to the observations), two researchers at the University of Texas were able to successfully re-identify a 96% of individuals within the data. They did this by cross reference the competition dataset against reviews on the openly available internet movie database (IMDb), working on the supposition that users would rate films on both services at approximately the same time - the 96% figure uses a margin of 3 days. 

The researchers went further, showing that if we were to alter the data to achieve even a modest 2-anonymity then almots all of the useful information would be removed from competition data set.

This example should show how difficult it can be to ensure individal privacy in the face of unknown external data sources. It might seem like a trivial example compared to medical records but the media that you consum, and in particular how you rate that media, cam reveal you religious beliefs, your political stance or your sexual orientiation. These are protected characteristics that you might not want to broadcast freely. 

It might not be imporatnt if you, or even the average Netflix user, if that information becomes public. What is important is whether any user would find this provacy breach objectionable and potentially come to harm because of it.  

___

## Wrapping up


- Privacy is a fundamental concern when working with human data
- Privacy is hard to measure, hard to ensure 
- Not only a data issue but a model issue, since models are trained on data
- No universal answers but area of ongoing research. For this reason a lot of Latanya Sweeney's work was very difficult to publish, since it exposed systemati vulnerabilities for which there are currently few reliable solutions. 

