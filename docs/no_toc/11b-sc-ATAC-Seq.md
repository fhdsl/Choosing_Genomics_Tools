


# Single cell ATAC-Seq

<div class = "warning">
This chapter is incomplete! If you wish to contribute, please [go to this form](https://forms.gle/dqYgmKH8XXE2ohwD9) or our [GitHub page](https://github.com/fhdsl/Choosing_Genomics_Tools).
</div>

## Learning Objectives

<img src="resources/images/11b-sc-ATAC-Seq_files/figure-html//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g227d7dd1e08_0_41.png" title="Learning objectives This chapter will demonstrate how to: Understand the basics of single cell ATAC-Seq data collection and processing workflow Identify the next steps for your particular single cell ATAC-Seq data. Formulate questions to ask about your single cell ATAC-Seq data" alt="Learning objectives This chapter will demonstrate how to: Understand the basics of single cell ATAC-Seq data collection and processing workflow Identify the next steps for your particular single cell ATAC-Seq data. Formulate questions to ask about your single cell ATAC-Seq data" width="100%" />

## What are the goals of scATAC-seq analysis?

The primary goal of single-cell ATAC-seq is to obtain a high-resolution map of chromatin accessibility at the single-cell level. It is often used for the identification of cell type-specific cis-regulatory elements (CREs) or transcription factor (TF) binding sites because single-cell resolution enables researchers to parse heterogeneous subgroups within a sample. Single-cell ATAC-seq is often applied to questions in developmental biology and cell differentiation.

## scATAC-seq general workflow overview

Align reads to genome and assign to cells based on barcodes
This step can be performed using Cell Ranger if the data were generated using a 10X Genomics kit (commercially available). For other methods, this step largely resembles the alignment step of bulk ATAC-seq analysis, using aligners such as Bowtie2 or BWA, filtering tools such as Picard, and adapter-trimming tools such Trimmomatic. Prior to adapter trimming barcodes should be matched to the list of known barcodes generated in the experiment and either assigned to a cell or assigned as ambiguous. At this stage unique molecular identifiers (UMIs) added to fragments during library preparation are also extracted and associated with each read to allow for PCR deduplication.
Quality control

The most important considerations for single-cell ATAC-seq are the number of unique fragments per cell, the transcription start site (TSS) enrichment score and detection of doublets.

The number of unique fragments in a cell is a critical quality control metric for single-cell ATAC-seq. Cells with a low fragment count do not provide enough information to draw conclusions about their characteristics, and cells with extremely high fragment counts are likely to be doublets containing reads from multiple cells. To determine the number of unique reads per cell, short random barcodes termed unique molecular identifiers (UMIs) are added to the fragments during library preparation. After the reads have been aligned to the genome and grouped by their cell barcodes, the UMIs can be used to remove PCR duplicates by retaining only one copy of reads with the same UMI and genomic location. The resulting UMI counts can be used as a more accurate measure of chromatin accessibility at specific genomic regions in individual cells. An additional step is typically taken to filter out reads mapping to the mitochondrial genome, so that the final unique fragment counts consist of only unique reads corresponding to nuclear DNA.

The TSS enrichment score in ATAC-seq measures the preferential accessibility of chromatin regions near gene promoters. This approach was established in pipelines for bulk ATAC-seq, such as the ENCODE pipeline (cite), and is also applicable to single-cell ATAC-seq. In brief, the TSS enrichment score quantifies the enrichment of open chromatin regions at TSSs versus a non-TSS background (e.g. +/-2000 bp beyond TSSs). A high TSS enrichment score therefore indicates that the number of accessible regions at TSSs, where high accessibility is expected, is significantly higher than background (cite), while a low TSS enrichment score indicates that the data quality is not high enough to distinguish accessible regions from background insertion patterns.

Doublet detection is any approach that attempts to computationally identify cell barcodes which contain reads from a mixture of single cells. Although an extremely high number of fragment counts may indicate that a cell is in fact a doublet, doublet detection provides a more targeted approach by assigning a score or a probability that each cell is a doublet. These approaches may compare cells to simulated doublets generated randomly from the data, or may rely on the fact that the number of ATAC-seq reads in a single cell is limited to only two reads per cell for diploid organisms. This step is not as common in scATAC-seq analysis as it is in single cell RNA-seq analysis owing to the difficulty of estimating doublets from the highly	sparse data, but can be done for additional rigor or if there is particular concern that the dataset contains a high number of doublets.

Additionally, the fragment size distribution of the library should exhibit nucleosomal periodicity, where fragments are enriched at ~147 bp intervals corresponding to the length of nucleosome-bound DNA that are refractory to Tn5 insertion.

## Peak calling

Peak calling in ATAC-seq is performed in a similar manner to bulk ATAC-seq [ref bulk chapter].  Importantly, it should be performed by treating data from all cells within a cluster as a pseudo-bulk replicate. This is because scATAC-seq data is highly sparse and any individual cell only has enough information to convey whether a region is accessible or inaccessible, due to the maximum of 2 reads per locus per cell. Peak calling is commonly performed using MACS2, but other peak callers suitable for ATAC-seq could be used as well, as described in our chapter on bulk ATAC-seq (reference).

## Dimensionality reduction

As ATAC-seq data is extremely high dimensional, with counts for hundreds of thousands of peaks in thousands of cells, dimensionality reduction must be performed to represent the data in a way which reflects the major sources of variation while allowing for efficient computation. Many of the most popular dimensionality reduction approaches for ATAC-seq are borrowed from natural language processing, including latent semantic indexing (LSI) as well as probabilistic approaches such as latent Dirichlet allocation (LDA) and probabilistic LSI (pLSI). LSI and its variations are commonly used and are a simple, efficient approach based on PCA. Probabilistic approaches calculate the probability of information in a dataset being related to specific ‘topics’ identified by the statistical model. They are more mathematically complex than LSI but attempt to more accurately reconstruct the latent (not observable) structure in the data.

## Embedding (visualization)

Embedding is the process of representing the high-dimensional  scATAC-seq dataset in two (or occasionally three) dimensions for visualization. First, dimensionality reduction must have been performed using one of the methods described in the section above. Then, the result of dimensionality reduction can be provided as input to the chosen embedding approach. The most common method for generating ATAC-seq embeddings is UMAP (Uniform Manifold approximation) but other methods, such as force-directed graph layouts or t-SNE (t-distributed Stochastic Neighbor Embedding) can also be used.

## Clustering

Clustering is the process of computationally detecting populations of cells with similar characteristics - in this case, cells with similar accessibility profiles. Leiden clustering, which uses the similarity of cells to their neighbors to group cells into clusters, is a common choice for identifying clusters in scATAC-seq data.

## Cell type annotation

Cell type annotation on scATAC-seq data alone can be performed based on the enrichment of cell-type-specific CREs, or alternatively can be performed based on gene expression patterns observed in integrated scRNA-seq data. Gene scores are a measure of the accessibility of  a gene locus and putative CREs within a defined window of the gene. Gene scores significantly above the expected background suggest a gene is active in a given cell type, and these scores can be used to identify markers for cell type annotation. Integration with scRNA-seq data can allow for identification of cell types which may be difficult to distinguish based on ATAC-seq profiles alone(ref), but requires an scRNA-seq dataset of a comparable population of cells.

Trajectory analysis, which is used to infer and visualize the developmental or differentiation paths of individual cells within a population, can be performed on processed single-cell ATAC-seq data using tools developed for single-cell RNA-seq data. These approaches aim to reconstruct the temporal progression and identify the key intermediate states or cell fate decisions during biological processes such as embryonic development, tissue regeneration, or disease progression.

Trajectory inference algorithms, such as:

- [Monocle](https://cole-trapnell-lab.github.io/monocle3/docs/trajectories/) @Qiu2017
- [Palantir](https://github.com/dpeerlab/Palantir) @Setty2019
- [PAGA](https://github.com/theislab/paga) @Wolf2019

These are commonly used to reconstruct the developmental trajectories and order the cells along these trajectories. The resulting trajectory models provide valuable insights into the underlying regulatory dynamics, lineage relationships, and critical regulatory genes or pathways governing cellular differentiation and development.

Much like peak calling, it is not possible to obtain enough information from individual cells to perform differential accessibility analysis at the single cell level. Because of this limitation, differential accessibility analysis is performed in a similar manner to bulk ATAC-seq analysis using pseudo-bulk data at the cluster or cell type level, where counts from many single cells are aggregated together and treated as though they are a single sample generated from a bulk experiment. Common tools for differential accessibility analysis include deSeq2 and EdgeR, which were both developed for differential gene expression analysis.  

## scATAC-seq data **strengths**:

- scATAC-seq is the gold-standard for showing heterogeneity in chromatin accessibility between populations of cells and within tissues because single-cell resolution enables analysis of subpopulations that are challenging to isolate experimentally.
- scATAC-seq can be paired with scRNAseq to obtain transcriptome and chromatin accessibility measurements from the same cells. This is a powerful approach for gaining understanding of how specific patterns of chromatin accessibility affect gene expression.
- scATAC-seq is also a relatively high throughput technique, particularly with droplet based techniques. A single dataset can cover thousands of cells.

## scATAC-seq data **limitations**:

- scATAC-seq has very high sparsity compared to single-cell RNA-seq since there are only two copies of each locus in a diploid cell compared to many copies of mRNAs. Like other single-cell techniques This results in the data essentially being binary at the single cell level - a region either has reads and is considered accessible in that cell or has no reads.
- Like bulk ATAC-seq, the Tn5 transposase has a sequence bias, so regions with a preferred sequence will undergo higher levels of transposition. Highly accessible regions of DNA will also be overrepresented in the final library.
- Single-cell ATAC-seq is an expensive technique regardless of the experimental approach chosen. Plate-based methods are generally cheaper but have lower throughput, while droplet-based methods are higher throughput but extremely costly and reliant on proprietary technology. Large datasets require significant investment and often use of droplet-based techniques.
- Many scATAC-seq datasets have low cell numbers due to the cost and technical difficulty of the assay. This presents a challenge for analysis since the data is highly sparse and noisy, which in combination with a small dataset can lead to difficulty interpreting the data.

## scATAC-seq data considerations

scATAC-seq will always be sequenced with paired-end reads. There are two major experimental approaches for generating single-cell ATAC-seq data: droplet based methods, such as the commercially available [10X Chromium platform](https://www.10xgenomics.com/products/single-cell-atac), where nuclei are separated into individual droplets, and plate-based methods, which use multiple pooling and barcoding steps to tag each cell with a unique combination of barcodes (with a level of expected barcode collisions).

The procedure for demultiplexing the reads will depend on the method used to generate the data. Data generated using 10X platforms can be de-multiplexed and aligned using the Cell Ranger software, while plate-based approaches typically use an alignment and peak-calling approach similar to that used for bulk ATAC-seq, with the additional step of matching the barcodes in each read to the known set of combinatorial barcodes. Correctly matching the reads to cells and filtering reads with non-matching barcodes is a critical step for scATAC-seq analysis.

## scATAC-seq analysis tools

- [Cellranger](https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger) is a popular preprocessing tool specifically designed for scATAC-seq data generated using the 10x Genomics platform. It performs essential steps such as demultiplexing, barcode processing, read alignment, and filtering, providing a streamlined workflow for 10x-generated scATAC-seq data. However, it cannot be used for data generated by other methods.
- [Bowtie2](https://bowtie-bio.sourceforge.net/bowtie2/manual.shtml), [Picard tools](https://broadinstitute.github.io/picard/), and [Trimmomatic](http://www.usadellab.org/cms/?page=trimmomatic): These tools are commonly used for preprocessing scATAC-seq data generated using plate-based or combinatorial indexing approaches. Bowtie is a fast and widely used aligner for mapping sequencing reads to a reference genome, while Picard provides a suite of command-line tools for manipulating and analyzing BAM files and Trimmomatic can remove adapter sequences from reads. These tools can be utilized for aligning reads, removing duplicates, sorting, and filtering the data to obtain the necessary inputs for downstream analysis.
- [ArchR](https://www.archrproject.com/) is a comprehensive scATAC-seq preprocessing tool implemented in R. It accepts both 10x fragment files and BAM files as input, making it suitable for data generated using different protocols. ArchR performs quality control, peak calling, peak annotation, normalization, and data transformation steps. It is one of the most popular tools for analyzing standalone scATAC-seq data and provides a user-friendly interface for exploratory data analysis.
- [Scanpy](https://scanpy.readthedocs.io/en/stable/) is a Python-based tool widely used for visualizing and manipulating single-cell omics data, including scATAC-seq. After processing scATAC-seq data with tools like ArchR, the output can be exported as a matrix (data) or CSV (metadata) and formatted into a Scanpy data object. Scanpy offers various analytical functionalities, including dimensionality reduction, clustering, trajectory inference, differential accessibility analysis, and visualization. This tool is the tool of choice if you plan to perform your analysis primarily in Python.
- [Seurat](https://satijalab.org/seurat/) is an R-based tool that is extensively used for analyzing and visualizing single-cell omics data, including scATAC-seq. Similar to Scanpy, after preprocessing the data with tools like ArchR, Seurat can be employed for downstream analysis. It provides a wide range of functions for quality control, dimensionality reduction, clustering, differential accessibility analysis, cell type identification, and visualization. Seurat integrates well with other existing R-based tools for single-cell data analysis, offering flexibility and compatibility. This is a useful core tool to use if you plan to perform your analysis in R.
- [Signac](https://stuartlab.org/signac/) is an R package specifically designed for the analysis of single-cell epigenomics data, including scATAC-seq. It offers a comprehensive set of functions for preprocessing, quality control, dimensionality reduction, clustering, trajectory analysis, differential accessibility, and visualization. Signac integrates well with Seurat, providing an additional tool for exploring and analyzing scATAC-seq data.

Additional quality checking tools: Quality checking and filtering steps in scATAC-seq analysis can be performed using various tools depending on the workflow and programming language. Some commonly used tools with QC capabilities useful for examining library quality measures such as GC bias, overrepresented sequences, and quality scores  include FastQC and deepTools.


#### Doublet detection

[ArchR](https://www.archrproject.com/) has a tool for doublet detection - it generates synthetic doublets from combinations of cells in the dataset and uses the similarity of cells in the dataset to these synthetic doublets to identify doublets. This is a common approach, and variations of it are used by most doublet detection algorithms. Many are specifically designed to expect transcriptomic data (such as the commonly used Scrublet) and identify barcodes with mixed transcriptional signatures of multiple clusters/cell types, and these methods do not accept scATAC-seq input. Some transcription based tools can be given modified input to detect doublets in scATAC-seq data, as described in documentation from the Demuxafy project. There are also tools like AMULET which leverage the fact that the number of ATAC-seq reads at any locus in a single cell are limited by the number of copies of a chromosome to detect doublets. Overall, doublet detection is not as common of a step in scATAC-seq analysis as it is in scRNA-seq analysis, owing to the limited tools available and the difficulty of performing this analysis on extremely sparse data.


#### Visualization

[Scanpy](https://scanpy.readthedocs.io/en/stable/) (Python) and [Seurat](https://satijalab.org/seurat/) (R) are the most commonly used tools for visualizing scATAC-seq data. These tools allow you to plot the accessibility of specific peaks or gene scores, as well as metadata such as cell type, clusters, etc. on the UMAP (or other) embedding at the single-cell level.  Both packages include built-in functions to perform this plotting in a streamlined manner and to manipulate the data objects for additional quantification and visualization using general  plotting packages such as [matplotlib](https://matplotlib.org/) or [ggplot](https://ggplot2.tidyverse.org/). The choice between these tools is primarily determined by the programming language you choose for your analysis, as they share many of the same core features.
Additionally, tools such as deepTools or enrichedHeatmap may be useful for visualizing heatmaps of pseudo-bulk data, and bedGraph or BigWig representations of pseudo-bulk data can be visualized using genome browsers such as IGV or UCSC genome browser. pyGenomeBrowser is a package which allows more customizable visualization of browser tracks and may be useful for generating publication-quality figures.

## Trajectory analysis

Several tools are available for single-cell trajectory analysis. These approaches are primarily distinguished by variations used in their mathematical approaches for calculating trajectories, but most make use of graph-based approaches which model the similarity or connections between cells in a dataset. The distinct approaches of the tools discussed here lead to varying levels of performance on different types of data, and extensive benchmarking has been performed (here) and (here) on synthetic datasets to determine the accuracy of different approaches. The most important consideration here is whether there are any cyclic trajectories expected in the dataset, where the end of the trajectory would connect back to the start, or disconnected trajectories, where not all trajectories originate from the same starting state. Not all approaches can reconstruct these trajectories accurately. Most popular methods expect a tree-like structure, with a single starting point and branches which lead toward terminal cell fates.

[Monocle](http://cole-trapnell-lab.github.io/monocle-release/) is a popular choice that offers a comprehensive workflow for trajectory inference, visualization of trajectory analysis, pseudotime ordering of cells, and identification of differentially expressed genes along trajectories. Another commonly used tool is Slingshot, which utilizes a graph-based approach to infer trajectories, compute pseudotime ordering, and generate smooth curves to visualize trajectories. Additionally, it has the ability to infer multiple disconnected trajectories within a single dataset. PAGA (Partition-based Graph Abstraction) uses a distinct strategy with the goal of maintaining connections between similar groups of cells as well as the overall structure of the data. [Palantir](https://github.com/dpeerlab/Palantir) is a tool which uses a probabilistic approach to assign cell fate probabilities to each cell in a dataset, which can be used to define cells belonging to a specific trajectory.

## Motif detection (ex. ChromVar)

[Single-cell chromVAR analysis](https://bioconductor.org/packages/release/bioc/html/chromVAR.html) is a computational approach used to assess cell-to-cell variation in chromatin accessibility profiles across a population of single cells. It aims to identify TF activity differences between cell types or states and elucidate the underlying regulatory dynamics. Single-cell chromVAR leverages the concept of TF motif enrichment or depletion within cell-specific accessible regions to infer TF activity. It compares the chromatin accessibility profiles of individual cells to a background model derived from the aggregate accessibility profiles of all cells, enabling the detection of cell-specific TF binding patterns. By quantifying the enrichment or depletion of TF motifs within accessible regions, single-cell chromVAR provides insights into TF activity variation, potential regulatory networks, and cell-type-specific transcriptional regulation. It serves as a valuable tool for understanding the contribution of TFs to cellular heterogeneity and regulatory processes in single-cell chromatin accessibility data.

## Regulatory network detection

[CisTopic](https://github.com/aertslab/cisTopic) is a computational tool used for the analysis of single-cell chromatin accessibility data to identify and characterize cell subpopulations with distinct regulatory patterns. It employs a topic modeling approach to capture the variability in chromatin accessibility profiles across cells and identifies the major regulatory patterns driving cell heterogeneity. CisTopic assigns cells to topics based on the similarity of their accessibility landscapes. By analyzing the differential accessibility of genomic regions within each topic, CisTopic facilitates the discovery of transcription factor binding motifs and CREs associated with specific cell subpopulations.

## Tools for data type conversion

A comprehensive explanation of packages to convert between single-cell data object types used by Python and R packages is found here.

The most common data types for processed scATAC-seq data are:

- [SingleCellExperiment](https://bioconductor.org/packages/release/bioc/html/SingleCellExperiment.html)
- [Seurat/h5Seurat](https://mojaveazure.github.io/seurat-disk/articles/h5Seurat-load.html)
- [annData objects](https://anndata.readthedocs.io/en/latest/)

H5seurat objects can be [converted to annData objects using SeuratDisk](https://mojaveazure.github.io/seurat-disk/articles/convert-anndata.html).

## More resources and tutorials about scATAC-seq data

- [Galaxy tutorial for sc-ATAC-seq analysis](https://training.galaxyproject.org/training-material/topics/single-cell/tutorials/scatac-preprocessing-tenx/tutorial.html)
- [Signac scATAC-seq tutorial with pbmcs](https://stuartlab.org/signac/articles/pbmc_vignette.html)
- [sc ATAC-seq chapter - Intro to Bioinformatics and Comp Bio](https://liulab-dfci.github.io/bioinfo-combio/scatac.html)
- [Single Cell ATAC-seq youtube video](https://www.youtube.com/watch?v=ufUVMHLDa00)
- [Comprehensive analysis of single cell ATAC-seq data with SnapATAC](https://www.nature.com/articles/s41467-021-21583-9)
