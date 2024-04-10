---
<br>
<br>
<br>

# Hypothesis testing

.large[At its core, hypothesis testing is a simple idea] $-$ .large[you, the researcher, have some theory about how the world works, and want to determine whether or not available data support your theory.]

--

.large[A **research hypothesis** involves make a substantive*, testable scientific claim.]

.footnote[*having a firm basis in reality]

```{r, echo = FALSE}
# --
# .large[In practice, this can be be tricky.]
```
---

## Some examples of research hypotheses

.large[&#x1F3B5; **Listening to music reduces your ability to concentrate on other things**] $-$ .large[this is a claim about the causal relationship between two psychologically meaningful concepts (listening to music and paying attention to things). This is a reasonable scientific hypothesis.]

--

.large[&#129504; **Intelligence is related to personality**] $-$ .large[this is another relation claim, this time about two psychological constructs (intelligence and personality). The claim is weaker because it proposes correlation not causation.]

--

.large[&#129504; **Intelligence is the speed of information processing**] $-$ .large[this is not a relation claim, it's an ontological claim about the definition of intelligence. This is a research questions, but it's usually more straightforward to ask *"does X affect y?"* than *"what is X?"*.]

--

.large[Most everyday research questions tend to be relational.]


.footnote[Examples [*Learning Statistics with R*](https://learningstatisticswithr.com/book/hypothesistesting.html#hypotheses)]
---
  
  .large[**Love is a battlefield**] $-$ .large[too vague to be testable. A research hypothesis can be vague to some extent, but you have to be able to break into down into testable theories. This statement can't be converted into a concrete research design.]

--

.large[**The first rule of tautology* club is the first rule of tautology club.**] $-$ .large[this is by definition true. Your hypotheses must have the possibility of being wrong!]

--

.large[**More people in my experiment will say "yes" than say "no"**] $-$ .large[this is a claim about the data, not about a scientific theory. This hypothesis actually sounds more like a statistical hypothesis.]

.footnote[Examples [*Learning Statistics with R*](https://learningstatisticswithr.com/book/hypothesistesting.html#hypotheses)

tautology = saying the same thing twice in different words
]  

---
<br>
<br>
<br>

## Two types of errors

.large[
If we flip a coin 10 times and all 10 times we get heads, this is pretty strong evidence that our coin is biased. But there's a 1 in 1024 chance that this would happen even if the coin was fair.]

--

.large[
We **always** have to accept there's a chance that the results of any experiment are wrong.]

--

.large[
The goal behind statistical hypothesis testing is not to *eliminate* but to *minimize* errors.
]

---
<br>
<br>
<br>

## Two types of errors

.large[
After we run the test, one of four things might have happened:

* $H_0$ is true and we correctly accept the null

* $H_0$ is true and we incorrectly accept the null (type I error)

* $H_0$ is false and we correct reject the null

* $H_0$ is false and **incorrectly** reject the null (type II error)
]

---
<br>
<br>
<br>

## Two types of errors

.large[
If we reject a null hypothesis that is actually true, then we have a **type I error**.

If we retain the null hypothesis that is actually false, then we have a **type II error**.]

--

.large[
One of the most important design principles of hypothesis testing is to control the probability $\alpha$ of a **type I error**. 

$\alpha$ is called the significance level. 

By convention we often use $\alpha$ of 0.05, 0.01, 0.001.]

--

.large[
A hypothesis test that is said to have a significance level $\alpha$ has a type I error rate is no larger than $\alpha$.
]

---
<br>
<br>
<br>

## Two types of errors

<br>

.large[
What about type II error rate? We care about this probability $\beta$ too. We refer to the **power** of the test, which is the probability that we reject the null hypothesis when it really is false, which is $1 - \beta$. A powerful test has a small value of $\beta$. Note we don't have a corresponding level for $\beta$.]

--

<br>

.large[
Statistical tests are designed to minimise $\alpha$, not $\beta$.
]

---
background-image: url("img/blue-bird.png")
background-size: contain
background-size: 15%
background-position: 90% 10%

<br>
<br>
<br>


---
class: middle
background-image: url("img/giraffe.png")
background-size: contain
background-size: 70%
background-position: right

.pull-left[
  ## (Re)Introduction to the normal distribution
  
  ### And a few other terms
  
  ### Day 1 - Part 3
]

---
background-image: url("img/giraffe.png")
background-size: contain
background-size: 70%
background-position: right

<br>
<br>
<br>
  
.pull-left[

# Objectives
    
.large[

* Recap: [*The Normal Distribution*](https://docs.google.com/presentation/d/1y0o0u0tf_LdIphPsfgz55I5Zafbr7GOm1p1XVgLNWs0/edit?usp=sharing)
      
* Types of Data
]
    
.footnote[Further reading [*Teacups giraffes and statistics*](https://tinystats.github.io/teacups-giraffes-and-statistics/)]
  
]

---
class: middle
background-image: url("img/cont_discrete.png")
background-size: contain
background-size: 70%
background-position: right

.pull-left[
# Types of data
  
]

---
class: middle
background-image: url("img/nom_ord_bin.png")
background-size: contain


---
class: middle
# Data

.pull-left[
.large[**Fourth group exercise**]
  
What types of data are used in the tests in your paper?
    
Spend 5 minutes putting together the 'Data' slide.
]

.pull-right[
  ```{r, echo=FALSE}
  countdown::countdown(
    minutes = 5, 
    seconds = 0, 
    warn_when = 1, 
    style = "position: relative; width: min-content; margin: 1em auto;",
    #color_running_background = "#31b09e",
    color_warning_background = "#f79334",
    #color_finished_background = "#b56b6f",
    #color_finished_text = "#eaeaea"
  )
  ```
]

---
class: middle inverse

.pull-left[

<br>
<br>

.center[
## Questions?
]

]


.pull-right[
<center><img src="https://mochimochiland.com/wp-content/uploads/cheerupDRAFT1sm.gif" alt="" height="300px" /></center>
]

```{r, eval=FALSE, echo=FALSE}
renderthis::to_pdf("day-01.Rmd", complex_slides = TRUE)
```