


# Single-cell RNA-seq

<div class = "warning">
This chapter is incomplete! If you wish to contribute, please [go to this form](https://forms.gle/dqYgmKH8XXE2ohwD9) or our [GitHub page](https://github.com/fhdsl/Choosing_Genomics_Tools).
</div>

## Learning Objectives

![](resources/images/10b-single-cell-RNA-seq_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g15bed4cad37_396_1.png){width=100%}

## Where single-cell RNA-seq data comes from

![](resources/images/10b-single-cell-RNA-seq_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g15bed4cad37_396_6.png){width=100%}

As opposed to bulk RNA-seq which can only tell us about tissue level and within patient variation, single-cell RNA-seq is able to tell us cell to cell variation in transcriptomics including intra-tumor heterogeneity.

Single cell RNA-seq can give us cell level transcriptional profiles. Whereas bulk RNA-seq masks cell to cell heterogeneity. If your research questions require cell-level transcriptional information, single-cell RNA-seq will on interest to you.

![](resources/images/10b-single-cell-RNA-seq_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g15bed4cad37_396_11.png){width=100%}

## Single-cell RNA-seq data types

There are broadly two categories of single-cell RNA-seq data methods we will discuss.

- **Full length RNA-seq**: Individual cells are physically separated and then sequenced.
- **Tag Based RNA-seq**: Individual cells are tagged with a barcode and their data is separated computationally.

Depending on your goals for your single cell RNA-seq analysis, you may want to choose one method over the other.

![](resources/images/10b-single-cell-RNA-seq_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g15bed4cad37_396_25.png){width=100%}

![](resources/images/10b-single-cell-RNA-seq_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g15bed4cad37_396_25.png){width=100%}

(Material borrowed from [@AlexsLemonade2022]).

### Unique Molecular identifiers

Often Tag based single cell RNA-seq methods will include not only a cell barcode for cell identification but will also have a unique molecular identifier (UMI) for original molecule identification. The idea behind the UMIs is it is a way to have insight into the original snapshot of the cell and potentially combat PCR amplification biases.

![](resources/images/10b-single-cell-RNA-seq_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g15bed4cad37_396_41.png){width=100%}

## Single cell RNA-seq tools

There are a lot of scRNA-seq tools for various steps along the way.

![](resources/images/10b-single-cell-RNA-seq_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g161687fdf93_0_0.png){width=100%}

In a very general sense, single cell RNA-seq workflows involves first quantification/alignment. You will also need to conduct quality control steps that may involve using UMIs to check for what’s detected, detecting duplets, and using this information to filter out data that is not trustworthy. After you have a set of reliable data, you need to normalize your data. Single cell data is highly skewed - a lot of genes barely or not detected and a few genes that are detected a lot. After data has been normalized you are ready to conduct your downstream analyses. This will be highly dependent on the original goals and questions of your experiment. It may include dimension reduction, cell classification, differential expression, detecting cell trajectories or any number of other analyses.

Each step of this very general representation of a workflow can be conducted by a variety of tools. We will highlight some of the more popular tools here. But, to look through a full list, you can consult the [scRNA-tools website](https://www.scrna-tools.org/table).

## Quantification/Alignment

- [Alevin](https://salmon.readthedocs.io/en/latest/alevin.html)
- [CellRanger](https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger)
- [Kallisto bustools](https://www.kallistobus.tools/)

## Quality control

#### Checking UMIs

- [AlevinQC](https://bioconductor.org/packages/release/bioc/html/alevinQC.html)

#### Checking for doublets

- [scDblFinder](https://bioconductor.org/packages/release/bioc/html/scDblFinder.html)
- [DoubletDetection](https://doubletdetection.readthedocs.io/en/stable/)

## Normalization and downstream analyses

- [Gene Pattern's single cell RNA-seq tutorials](https://notebook.genepattern.org/single-cell/) - an open software environment providing access to hundreds of tools for the analysis and visualization of genomic data. 
- [Seurat](https://satijalab.org/seurat/)
- [Single Cell Genome Viewer](https://github.com/KrasnitzLab/SCGV)
- For normalization [scater](https://bioconductor.org/packages/devel/bioc/vignettes/scater/inst/doc/overview.html)
- [scanpy](https://scanpy.readthedocs.io/en/stable/)
- [TumorDecon](https://people.math.umass.edu/~aronow/TumorDecon) can be used to generate customized signature matrices from single-cell RNA-sequence profiles. It is available on Github (https://github.com/ShahriyariLab/TumorDecon) and PyPI (https://pypi.org/project/TumorDecon/).

## Visualization GUI tools

- [WebMeV](https://webmev.tm4.org) uniquely provides a user-friendly, intuitive, interactive interface to processed analytical data uses cloud-computing elasticity for computationally intensive analyses and is compatible with single cell or bulk RNA-seq input data.
- [UCSC Xena](http://xena.ucsc.edu/) is a web-based visualization tool for multi-omic data and associated clinical and phenotypic annotations. It can be used with single cell RNA-seq data.
- [Integrative Genomics Viewer (IGV)](https://software.broadinstitute.org/software/igv/) is a track-based browser for interactively exploring genomic data mapped to a reference genome.

## Useful tutorials

These tutorials cover explicit steps, code, tool recommendations and other considerations for analyzing RNA-seq data.

- [Orchestrating Single Cell Analysis with Bioconductor](http://bioconductor.org/books/3.15/OSCA.intro/) - An excellent tutorial for processing single cell data using Bioconductor.
- [Advanced Single Cell Analysis with Bioconductor](http://bioconductor.org/books/3.15/OSCA.advanced/) - a companion book to the intro version that contains code examples.
- [Alex's Lemonade scRNA-seq Training module](https://alexslemonade.github.io/training-modules/scRNA-seq/) - A cancer based workshop module based in R, with exercise notebooks.
- [Sanger Single Cell Course](https://www.singlecellcourse.org/) - a general tutorial based on using R.
- [ASAP: Automated Single-cell Analysis Pipeline](https://asap.epfl.ch/) is a web server that allows you to process scRNA-seq data.
- [Processing raw 10X Genomics single-cell RNA-seq data (with cellranger)](https://swaruplab.bio.uci.edu/tutorial/cellranger/cellranger-rna.html) - a tutorial based on using CellRanger.

## Useful readings
- [An Introduction to the Analysis of Single-Cell RNA-Sequencing Data](https://doi.org/10.1016/j.omtm.2018.07.003) [@AlJanahi2018].
- [Orchestrating single-cell analysis with Bioconductor](https://www.nature.com/articles/s41592-019-0654-x) [@Amezquita2019].
- [UMIs the problem, the solution and the proof](https://cgatoxford.wordpress.com/2015/08/14/unique-molecular-identifiers-the-problem-the-solution-and-the-proof/) [@Smith2015].
- [Experimental design for single-cell RNA sequencing](https://doi.org/10.1093/bfgp/elx035) [@BaranGale2018].
- [Tutorial: guidelines for the experimental design of single-cell RNA sequencing studies](https://doi.org/10.1038/s41596-018-0073-y) [@Lafzi2019].
- [Comparative Analysis of Single-Cell RNA Sequencing Methods](http://dx.doi.org/10.1016/j.molcel.2017.01.023) [@Ziegenhain2018].
- [Comparative Analysis of Droplet-Based Ultra-High-Throughput Single-Cell RNA-Seq Systems](https://doi.org/10.1016/j.molcel.2018.10.020) [@Zhang2018].
- [Single cells make big data: New challenges and opportunities in transcriptomics](http://dx.doi.org/10.1016/j.coisb.2017.07.004) [@Angerer2017].
- [Comparative Analysis of common alignment tools for single cell RNA sequencing](https://www.biorxiv.org/content/10.1101/2021.02.15.430948v2) [@Bruning2021].
- [Current best practices in single-cell RNA-seq analysis: a tutorial](https://doi.org/10.15252/msb.20188746) [@Luecken2019].
