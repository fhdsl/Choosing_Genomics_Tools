


# DNA Methylation Sequencing

<div class = "warning">
This chapter is incomplete! If you wish to contribute, please [go to this form](https://forms.gle/dqYgmKH8XXE2ohwD9) or our [GitHub page](https://github.com/fhdsl/Choosing_Genomics_Tools).
</div>

## Learning Objectives

![](resources/images/14-methylation_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g12890ae15d7_0_71.png){width=100%}

## What are the goals of analyzing DNA methylation?

![](resources/images/14-methylation_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g14492c87338_0_10.png){width=100%}

To detect methylated cytosines (5mC), DNA samples are prepped using bisulfite (BS) conversion. This converts unmethylated cytosines into uracils and leaves methylated cytosines untouched. Probes are then designed to bind to either the uracil or the cytosine, representing the unmethylated and methylated cytosines respectively.

For a given sample, you will obtain a fraction, known as the Beta value, that indicates the relative abundance of the methylated and unmethylated versions of the sequence. Beta values exist then on a scale of 0 to 1 where 0 indicates none of this particular base is methylated in the sample and 1 indicates all are methylated.

Note that bisulfite conversion alone will not distinguish between 5mC and 5hmC though these often may indicate different biological mechanics.

Additionally, 5-hydroxymethylated cytosines (5hmC) can also be detected by oxidative bisulfite sequencing (OxBS) [@Booth2013. oxidative bisulfite conversion measures both 5mC and 5hmC. If you want to identify 5hmC bases you either have to pair oxBS data with BS data OR you have to use Tet-assisted bisulfite (TAB) sequencing which will exclusively tag 5hmC bases [@Yu2012].

![](resources/images/14-methylation_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g17e24e1c00a_0_35.png){width=100%}

## Methylation data considerations

### Beta values binomially distributed

Because beta values are a ratio, by their nature, they are not normally distributed data and should be treated appropriately. This means data models (like those used by the `limma` package) built for RNA-seq data should not be used on methylation data. More accurately, Beta values follow a binomial distribution.

![](resources/images/14-methylation_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g17e24e1c00a_0_0.png){width=100%}

This generally involves applying a generalized linear model.

### Measuring 5mC and/or 5hmC

If your data and questions are interested in both 5mC and 5hmC, you will have separate sequencing datasets for each sample for both the BS and OBS processed samples. 5mC is often a step toward 5hmC conversion and therefore the 5mC and 5hmC measurements are, by nature, not independent from each other. In theory, 5mC, 5hmC and unmethylated cytosines should add up to 1.

![](resources/images/14-methylation_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g17e24e1c00a_0_42.png){width=100%}

Because of this, its been proposed that the most appropriate way to model these data is to combine them together in a model [@Kochmanski2019].

![](resources/images/14-methylation_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g17e24e1c00a_0_49.png){width=100%}

## Methylation data workflow

![](resources/images/14-methylation_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g17e24e1c00a_0_5.png){width=100%}

Like other sequencing methods, you will first need to start by quality control checks. Next, you will also need to align your sequences to the genome. Then, using the base calls, you will need to make methylation calls -- which are methylated and which are not. This details of step depends on whether you are measuring 5mC and/or 5hmC methylation calls. Lastly, you will likely want to use your methylation calls as a whole to identify differentially methylated regions of interest.

## Methylation tools!

### Quality control
TODO: How should this be the same or different from general sequencing quality control checks?
- [FASTQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)

### Genome Alignment
TODO: How should this be the same or different from general sequencing alignment?

### Methylation calls
TODO: What other packages/tools should be mentioned here?

- [MethylKit](https://bioconductor.org/packages/release/bioc/html/methylKit.html) - https://compgenomr.github.io/book/data-filtering-and-exploratory-analysis.html

### Find regions of interest!

https://compgenomr.github.io/book/extracting-interesting-regions-differential-methylation-and-segmentation.html

### Annotation of regions of interest
TODO: How does this differ from annotating genomic regions in general?

## More resources

- [DNA methylation analysis with Galaxy tutorial](https://training.galaxyproject.org/training-material/topics/epigenetics/tutorials/methylation-seq/tutorial.html)
- [The mint pipeline](https://github.com/sartorlab/mint/blob/master/README.md) for analyzing methylation and hydroxymethylation data.
- [Book chapter about finding methylation regions of interest](https://compgenomr.github.io/book/extracting-interesting-regions-differential-methylation-and-segmentation.html)
