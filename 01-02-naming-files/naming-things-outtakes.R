----------
  ## Summary


  # Naming Things in Your Code

  ```
00-download.R
01-wrangle.R
02-model.R
...
09-model_evaluation.R
10-model_comparison_plots.R
```

- Where to split is an art.

- Aim for files that can be named concisely while still evoking thier purpose.

- All `library()` calls go at the top of a script.

- Use commented lines of `-` and `=` to break the file into readable chunks

```
# Load data -----------------------

# Plot data -----------------------
```

## Syntax - object names

- Name varaibles and functions using only lowecase letters, numbers and `_`

- Do not used dots in function names (looking at you, python people). These should be reseved for methods in the S3 OOP (`funcion.class`).

- Names are not the place for data: if you have model_2018 , model_2019 and  model_2020 consider storing these as a list or data.frame called `models`.

- variable names $=$ nouns, function names $=$ verbs.

- Where possible, do not rename common function and variables

```{r}
T <- FALSE
c <- 10
mean <- function(x) sum(x)
```

## Syntax - Spacing

- Spaces go after all commas, never before. Just like English.

-

  ## References {visibility="uncounted"}

```{r}
#temp <- xml2::read_xml("images/example.xml")
#temp
#test <- xml2::as_list(temp)
```
