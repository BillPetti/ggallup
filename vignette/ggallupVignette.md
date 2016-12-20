---
title: "ggallup Vignette"
author: "Bill Petti"
date: "December 2016"
output: html_document
---

# Introduction

This package contains a custom `ggplot2` theme that aligns with Gallup's general brand standards, as well as a custom palette that includes current colors that also align to Gallup's standards.

To see how they work, let's load some sample survey data and place each respondent into one of three groups:

```{r, warning=FALSE, message=FALSE}
sample_data <- read.csv("https://raw.githubusercontent.com/BillPetti/R-Crash-Course/master/survey_sample_data.csv")
head(sample_data)
set.seed(42)
sample_data$group <- sample(1:3, 116, replace = TRUE)
with(sample_data, table(group))
```

Now, let's load `ggplot2` and the `ggallup` packages:

```{r, warning=FALSE, message=FALSE}
require(ggplot2)
require(devtools)
install_github("BillPetti/ggallup", force = TRUE)
require(ggallup)
```

Here is what a bar chart of average scores for Q1 per group looks like:  

``````{r, warning=FALSE, message=FALSE}
require(tidyverse)

sample_data_mean <- sample_data %>%
    gather(question, value, -resp, -group) %>%
    group_by(question, group) %>%
    summarise_each(funs(mean(., na.rm = TRUE)), mean = value) %>%
    spread(question, mean)
    
q1_plot <- ggplot(sample_data_mean, aes(factor(group), Q1)) +
    geom_bar(aes(fill = factor(group)), stat = "identity") +
    ggtitle("\nAverage Scores for Q1, by Group\n") +
    xlab("\nGroups\n") +
    ylab("Q1\n") +
    coord_cartesian(ylim = c(3,4.25))

q1_plot
```

The plot colors each data based on the number of PAs in a given player's season.

If we apply the `theme_gallup`, here's what the same chart would look like:

``````{r, warning=FALSE, message=FALSE}

ggallup(q1_plot)

```

The plot is still using `ggplot2`'s standard color scale. What if we wanted those colors to be compliant with Gallup standards? For that we can use the `gallup_palette` object. If we call the object we can see the hexidecimal codes for the colors:

``````{r, warning=FALSE, message=FALSE}
gallup_palette
[1] "#007934" "#61C250" "#C3E76F" "#A0A19E" "#7D7F7E" "#404545"
```

The palette includes our three greens as well as three greys. You can use `scale_fill_continuous` in this case to apply the palette to our current group:

``````{r, warning=FALSE, message=FALSE}
ggallup(q1_plot + 
    scale_fill_manual(values = gallup_palette, "Group"))
```
