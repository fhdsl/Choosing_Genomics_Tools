


# Guidelines for Good Metadata

## Learning Objectives

![](resources/images/03-whats-metadata_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g12709027cba_1_70.png){width=100%}

## What are metadata?

Metadata are critically important descriptive information about your data.

**Without metadata, the data themselves are useless or at best vastly limited.**

Metadata describe how your data came to be, what organism or patient the data are from and include any and every relevant piece of information about the samples in your data set.

![](resources/images/03-whats-metadata_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g12709027cba_1_12.png){width=100%}

Metadata includes but isn't limited to, the following example categories:

![](resources/images/03-whats-metadata_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g12709027cba_1_45.png){width=100%}

<div class = "warning">
At this time it's important to note that if you work with human data or samples, your metadata will likely contain personal identifiable information (PII) and protected health information (PHI). It's critical that you protect this information! For more details on this, we encourage you to see our [course about data management](https://jhudatascience.org/Ethical_Data_Handling_for_Cancer_Research/data-privacy.html).
</div>


## How to create metadata?

Where do these metadata come from? The notes and experimental design from anyone who played a part in collecting or processing the data and its original samples. If this includes you (meaning you have collected data and need to create metadata) let's discuss how metadata can be made in the most useful and reproducible manner.

### The goals in creating your metadata:

#### Goal A: Make it _crystal clear_ and _easily readable_ by both humans and computers!

Some examples of how to make your data crystal clear:
- Look out for typos and spelling errors!
- Don't use acronyms unless you need to and then if you do need to make sure to explain what the acronym means.
- Don't add extraneous information -- perhaps items that are relevant to your lab internally but not meaningful to people outside of your lab. Either explain the significance of such information or leave it out.

- Make your [data tidy](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html#:~:text=Tidy%20data%20is%20a%20standard,Every%20row%20is%20an%20observation.).
> Tidy data is a standard way of mapping the meaning of a dataset to its structure. A dataset is messy or tidy depending on how rows, columns and tables are matched up with observations, variables and types. In tidy data:
> - Every column is a variable.
> - Every row is an observation.
> - Every cell is a single value.

#### Goal B: Avoid introducing errors into your metadata in the future!

Toward these two goals, [this excellent article](https://www.tandfonline.com/doi/full/10.1080/00031305.2017.1375989) by Broman & Woo discusses metadata design rules. We will very briefly cover the major points here but highly suggest you read the original article.

1. _Be Consistent_ - Whatever labels and systems you choose, use it universally. This not only means in your metadata spreadsheet but also anywhere you are discussing your metadata variables.

2. _Choose good names for things_ - avoid spaces, special characters, or within the lab jargon.

3. _Write Dates as YYYY-MM-DD_ - this is a global standard and less likely to be messed up by Microsoft Excel.

4. _No Empty Cells_ - If a particular field is not applicable to a sample, you can put `NA` but empty cells can lead to formatting errors or just general confusion.

5. _Put Just One Thing in a Cell_ - resist the urge to combine variables into one, you have no limit on the number of metadata variables you can make!

6. _Make it a Rectangle_ - This is the easiest way to read data, for a computer and a human. Have your samples be the rows and variables be columns.

7. _Create a Data Dictionary_ - Have somewhere that you describe what your metadata mean in detailed paragraphs.

8. _No Calculations in the Raw Data Files_ - To avoid mishaps, you should always keep a clean, original, raw version of your metadata that you do not add extra calculations or notes to.

9. _Do Not Use Font Color or Highlighting as Data_ - This only adds to confusion to others if they don't understand your color coding scheme. Instead create a new variable for anything you might be tempted to color code.

10. _Make Backups_ - Metadata are critical, you never want to lose them because of spilled coffee on a computer. Keep the original backed up in a multiple places. We recommend keeping writing your metadata in something like GoogleSheets because it is both free and also saved online so that it is safe from computer crashes.

11. _Use Data Validation to Avoid Errors_ - set data types to have googlesheets or excel check that the data in the columns is the type of data it expects for a given variable.


<div class = "warning">
Note that it is very dangerous to open gene data with Excel. According to @Ziemann2016, approximately one-fifth of papers with Excel gene lists have errors. This happens because Excel wants to interpret everything as a date. We strongly caution against opening (and saving afterward) gene data in Excel.
![](resources/images/03-whats-metadata_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g13a7f78e577_0_0.png){width=100%}
</div>

### To recap:

![](resources/images/03-whats-metadata_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g12709027cba_1_52.png){width=100%}

![](resources/images/03-whats-metadata_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g12890ae15d7_0_1.png){width=100%}

If you are not the person who has the information needed to create metadata, or you believe that another individual already has this information, make sure you get ahold of the metadata that correspond to your data. It will be critical for you to have to do any sort of meaningful analysis!
