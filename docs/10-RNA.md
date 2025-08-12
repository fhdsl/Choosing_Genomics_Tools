


# RNA Methods Overview

<div class = "warning">
This chapter is in a beta stage. Some of it has been written with an AI tool ([Claude 3.7 Sonnet](https://poe.com/Claude-Sonnet-3.7)). If you wish to contribute, please [go to this form](https://forms.gle/dqYgmKH8XXE2ohwD9) or our [GitHub page](https://github.com/fhdsl/Choosing_Genomics_Tools).
</div>

## Learning Objectives

![](10-RNA_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g12890ae15d7_0_76.png){width=100%}

## What are the goals of gene expression analysis?

The goal of gene expression analysis is to quantify RNAs across the genome. This can signify the extent to which various RNAs are being transcribed in a particular cell. This can be informative for what kinds of activity a cell is undergoing and responding to.

![](10-RNA_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g142c259a793_0_0.png){width=100%}

## Comparison of RNA methods

There are three general methods we will discuss for evaluating gene expression. RNA sequencing (whether bulk or single-cell) allows you to catch more targets than gene expression microarrays but is much more costly and computationally intensive. Gene expression microarrays have a lower dynamic range than RNA-seq generally but are much more cost effective. Spatial transcriptomics is the newest method on the block and has the ability to relate gene expression to tissue regions and subpopulations.

![](10-RNA_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g13438a9a5b2_0_80.png){width=100%}

### Single-cell RNA-seq (scRNA-seq):

- Cost: scRNA-seq methods can be relatively expensive due to the need for specialized protocols and reagents. Droplet-based methods (e.g., 10x Genomics) are generally more cost-effective than full-length methods (e.g., SMART-seq) because they require fewer sequencing reads per cell.
- Experimental Goals: scRNA-seq is suitable when studying cellular heterogeneity and characterizing gene expression profiles at the single-cell level. It provides insights into cell types, cell states, and cell-cell interactions.
- Specific Requirements: scRNA-seq requires single-cell isolation techniques, and the choice of method depends on the desired cell throughput, desired coverage, and the need for full-length transcript information.

### Bulk RNA-seq:

- Cost: Bulk RNA-seq is generally more cost-effective compared to scRNA-seq because it requires fewer sequencing reads per sample. The cost primarily depends on the sequencing depth required.
- Experimental Goals: Bulk RNA-seq is appropriate for analyzing average gene expression profiles across a population of cells. It provides information on gene expression levels and can be used for differential gene expression analysis.
- Specific Requirements: Bulk RNA-seq requires a sufficient quantity of RNA from the sample, typically obtained through RNA extraction and purification.

### Gene Expression Microarray:
- Cost: Gene expression microarrays are usually less expensive compared to RNA-seq methods. The cost includes array production and hybridization.
- Experimental Goals: Microarrays are useful for profiling gene expression levels across a large number of genes in a cost-effective manner. They can be employed for differential gene expression analysis and identification of gene expression patterns.
- Specific Requirements: Microarrays require labeled cDNA or cRNA targets, and they are limited to the detection of known transcripts represented on the array platform.

### Spatial Transcriptomics:
- Cost: Spatial transcriptomics methods can vary in cost depending on the technique used. Some methods involve additional steps and specialized equipment, making them relatively more expensive.
- Experimental Goals: Spatial transcriptomics allows the investigation of gene expression patterns within the context of tissue or cellular spatial organization. It provides spatial information on gene expression, enabling the identification of cell types and their interactions.
- Specific Requirements: Spatial transcriptomics requires intact tissue sections or samples, and the choice of method depends on factors such as desired spatial resolution, throughput, and compatibility with downstream analyses.

In these upcoming chapters we will discuss in more detail each of these methods, what the data represent, what you need to consider, and what resources you can consult for analyzing your data.
