# (PART\*) Specific Data Types {-}




# DNA Methods Overview

<div class = "warning">
This chapter is in a beta stage. If you wish to contribute, please [go to this form](https://forms.gle/dqYgmKH8XXE2ohwD9) or our [GitHub page](https://github.com/fhdsl/Choosing_Genomics_Tools).
</div>

## Learning Objectives

<img src="resources/images/09-DNA_files/figure-html//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g12890ae15d7_0_71.png" alt="Learning objectives This chapter will demonstrate how to: Understand the goals and data collection for DNA sequence collection and variant identification. Compare and contrast the following methods: DNA/SNP microarrays, Whole Genome Sequencing, Whole Exome Sequencing, and Targeted Sequencing" width="100%" />

## What are the goals of analyzing DNA sequences?

There are several larger goals behind DNA sequencing experiments ranging from assembling whole genomes, to identifying variation or performing a functional genomic analysis or comparative genomic study. Each of these has implications when studying disease.

* Assembling whole genomes:

  Because an organism's genome determines how an organism develops and functions [@NHGRIGlossary2024], an important task in the genomics field is assembling the genome of an organism from sequencing reads. This assembly process attempts to reconstruct how the sequencing reads overlap or fit together [@Schatz2010; @Li_Durbin_2024]. Recent examples of genome assembly in the genomics field include a complete 3.055 billion-base pair sequence of the human reference genome which was published by the Telomere-to-Telomere (T2T) Consortium [-@Nurk2022], the T2T-CHM13 version (followed not long after by the complete sequence of the human Y chromosome [-@Rhie2023]). A goal of the field is to better capture human genetic diversity by creating a reference pangenome, assembled from multiple donors within the population [-@Taylor_2024]. Genome assemblies are an important part of genomics beyond human genomics research; there are reference gnomes available for most model organisms as well as many plants, animals, and pathogens, with more and more being published at a high frequency [@Miller2023; @Alonge2022; @Gershman2023; @Sistrom2016]. These reference genomes each act as an extensive compilation of the observed DNA sequence of genes, regulatory elements, etc. and the related coordinate systems for these elements, such that, for the corresponding organism, sequencing reads from other experiments can be mapped or aligned to the reference in order to localize where that read was in the genome. In the case of cancer informatics, a recent approach utilized personalized genome assembly to more accurately detect tumor somatic mutations. This is likely to be an area of future research for application in precision medicine [@Xiao2022; @Ermini_Driguez_2024].   

* Identifying variation:

  Variant caller software is used within the field of genomics to identify places where reads from a DNA sequencing experiment differ from a comparative reference genome sequence [@NHGRIfactsheet2022]. Variants may be as small as single nucleotide differences (single-nucleotide polymorphisms or SNPs) or much larger (50 base pairs or more) structural variation (SVs) such as duplications, deletions, insertions, inversions, translocations [@Wong2011]. (Shorter insertions or deletions are termed indels.) The SVs involving gains or losses in genomic DNA can lead to copy number variations (CNVs). Mutation and structural variants are very common in cancer as well as larger-scale catastrophic genomic rearrangements [@Zhang2022]. Overall, variants may be rare in a population or fairly common [@Audano2019]. Further, variants may be somatic or germline variants: germline variants are hereditary and will be passed down from parent to offspring; in the offspring, the variant will be present in every cell, while somatic variants are generally not hereditary and present only in some cells rather than every cell [@NHSFrost2022]. Because variation, specifically genetic diversity is a necessary part of a healthy species [@GeneticDiversity] and because variation, specifically mutations/variants may cause disease, identifying variation is a common goal in a DNA sequencing workflow. An example of research focusing on studying genetic diversity in humans is the 1000 Genomes Project which recently expanded its resource of sequenced genomes and in doing so discovered even more variation present in the population [@Byrska-Bishop2022].      

* Functional genomic analysis:

  Genomes contain more than just genes (the coding sequences that will be transcribed and translated into a protein); they also contain functional elements such as promoters, enhancers, or silencers that modulate the expression of genes [@Kellis2014]. Further, differential gene expression is the phenomenon by which cells with the same DNA sequence show different patterns of gene expression. Functional genomic analyses aim to better understand differential gene expression and the impact of genetic variation found in functional elements. For example, many human genetic variants associated with common traits and diseases are localized in or near known functional elements [@Hindorff2009]. These variants may impact gene expression due to either changes in transcription factor binding at that site, or resulting epigenetic changes, which are defined as chemical modifications of chromatin or nucleotides beyond the DNA sequence. Such epigenetic modifications, which include histone marks and DNA methylation, can alter DNA compaction and influence a functional element’s accessibility for transcriptional machinery (e.g., if the element isn't accessible, transcription may not occur; while previously the element was accessible and the gene could be transcribed). In later sections, methods that study epigenetic modifications like chromatin accessibility, DNA methylation, or binding of specific proteins will be discussed. All of these methods support functional genomic analyses and are important for better understanding differential gene expression and the impact of genetic variants located in functional elements may have on disease occurrence. A somewhat recent and high profile example of a functional genomic analysis centers again on work from the T2T Consortium. Not only did they publish a new, complete reference genome, but they also studied the epigenetic landscape in the newly resolved regions of the genome and pointed to potential newly discovered functional elements in a region previously thought to be transcriptionally inactive [@Gershman2022].

* Comparative genomics:

  A common saying in the genomics field is that structure determines function and conserved structure may be constrained such that there is an important function which needs to be conserved [@Alföldi_Lindblad-Toh_2013]. Further, similarities in structure may be due to shared ancestry through the processes of evolution; therefore, some comparative genomics studies aim to infer homology or an evolutionary relationship from structural similarity [@Pearson2013]. More pertinent to the topics discussed previously, comparative genomics studies are also useful for identifying functional elements [@Taylor2006] and variants associated with disease (e.g., by comparing the genomes of those with the disease and those without it and identifying differences) [@Alföldi_Lindblad-Toh_2013; @Eichler_2019].  

## Comparison of DNA methods

<img src="resources/images/09-DNA_files/figure-html//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g138a6ce16b7_35_18.png" alt="Comparing DNA Sequencing Techniques. The most common DNA sequencing techniques are described. Whole genome sequencing coverages all genes and non-coding DNA. 3.2 billion bases are covered when applied to human samples. This the most expensive of the techniques. Depth of coverage required for 99.9% sensitivity is 30X. Whole exome sequencing coverage is the exome or expressed genes. Approximately 45 million bases are sequenced. This is a cost-effective technique. The depth of coverage required for 99.9% sensitivity is 100X. Targeted gene panel sequencing coverages 50-500 genes. 20,000 to 62 million bases are sequenced. This is the most cost-effective technique. Depth of coverage is &gt;500X." width="100%" />
There are four DNA sequencing methods discussed in this chapter. The above graph compares WGS, WXS, and Targeted gene sequencing. The last section compares all 4.

1. Whole genome sequencing (WGS)
2. Whole exome sequencing (WXS)
3. Targeted gene sequencing
4. DNA/SNP microarrays

Compared to WXS and Targeted Gene Sequencing, WGS is the most expensive but requires the lowest depth of coverage to achieve 95% sensitivity. In other words, WGS requires sequencing each region of the genome (3.2 billion bases) 30 times in order to confidently be able to pick up all possible meaningful variants. [@Sims2014] goes into more depth on how these depths are calculated.

Alternatively, WXS is a more cost effective way to study the genome, focusing places in the genome that have open reading frames -- aka generally genes that are able to be expressed. This focuses on enriching for exons and not introns so splicing variants may be missed. In this case, each gene must be sequenced 80-100x for sufficient sensitivity to pick up meaningful variants.

In targeted gene sequencing, a panel of 50-500 regions of interest are selected. This technique is very applicable for studying a set of specific genes of interest at great depth to identify all varieties of mutations within those specific genes. These genes must be sequenced at much greater depth (>500x) to confidently identify all meaningful variants. [This page from Illumina](https://www.illumina.com/science/technology/next-generation-sequencing/plan-experiments/coverage.html) also provides information regarding sequencing depth considerations for different modalities.

Additional references:
WGS: [@Bentley2008]
WES: [@Clark2011]
Targeted: [@BewickeCopley2019]

## How to choose a DNA sequencing method

Before starting any sequencing method, you likely have a research question or hypothesis in mind. In order to choose a DNA sequencing method, you will need to consider a few items in balance of each other:

### 1. What region(s) of the genome pertain to your research question?

Is this unknown? Can it be narrowed down to non-coding or coding regions? Is there an even more specific subset of interest?

### 2. What does your project budget allow for?

Some methods are much more costly than others. Cost is not only a factor for the reagents needed to sequence, but also the computing power needed to process and store the data and people's compensation for their work on the data. All of these costs increase as the amounts of data that are collected increase. For more information on computing decisions see our [Computing in Cancer Informatics course](https://www.itcrtraining.org/courses#h.civy2cnri95t).

### 3. What is your detection power for these variants?

Detecting DNA variants is not simply a matter of yes or no, but a confidence level due to sequencing errors in data collection. Are the variants you are looking for very rare and/or small (single nucleotide or very few copy number differences)? If so you will need more samples and potentially more sequencing depth to detect these variants with confidence.

## Strengths and Weaknesses of different methods

Is not much known about DNA variants in your organism or disease in question? In this instance you may want to cast a large net to explore more variants by using WGS.

If previous research has identified sections of the genome that are of interest to your research question, then it's highly advisable to not sequence the entire genome with WGS methods. Not only will whole genome sequencing be more costly, but it will decrease your statistical power to discover true positive variants of interest and increase your chances of discovering false positive variants. This is because multiple testing correction needs to be applied in instances where many tests are being done currently. In this instance, the tests being performed are across the whole genome.

If your research question does not pertain to non-coding regions of the genome or splicing, then its advisable to use WXS. Recall that only about 1-2% of the genome is coding sequences meaning that if you are uninterested in noncoding regions but still use WGS then 98-99% of your data will be uninteresting to you and will only serve to increase your chances of finding false positives or cost you a lot of funding. Not only does sequencing more of the genome take more money and time but it will be more costly in time and resources in terms of the computing power needed to analyze it.

Furthermore, if you are able to narrow down even further what regions are of interest this would be better in terms of cost and detection abilities. A targeted sequencing panel or DNA microarray are ideal for assaying known groups of targets. DNA microarrays are the least costly of all the methods to identify DNA variants, but with both targeted sequencing and DNA microarray you will need to find or create a custom probe or primer set. Ideally a probe or primer set that hits your regions of interest already exists commercially but if not, then you will have to design your own -- which also costs time and money.


<img src="resources/images/09-DNA_files/figure-html//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g13438a9a5b2_0_6.png" alt="There are three general methods we will discuss for evaluating DNA sequences. Whole Genome Sequencing (WGS) assays more of the genome than other methods but is much more costly and computationally intensive. Depending on your goals WGS may be overkill. SNP microarrays on the other hand, are much more cost effective but are not able to be used for exploratory purposes. Whole Exome Sequencing (WXS or WES) and other targeted sequencing methods allow you to survey regions of the genome in way that is more cost effective and potentially at higher depths." width="100%" />

In these upcoming chapters we will discuss in more detail each of these methods, what the data represent, what you need to consider, and what resources you can consult for analyzing your data.
