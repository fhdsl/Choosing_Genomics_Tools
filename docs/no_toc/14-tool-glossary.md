


# ITCR -omic Tool Glossary

Here's all the tools that have been mentioned in this course or are otherwise recommended for your use. The list is in alphabetical order.

* [ARCHS4](#archs4)
* [Bioconductor](#bioconductor)
  + [Notable Bioconductor genomics tools:](#notable-bioconductor-genomics-tools-)
* [Cancer Models](#cancer-models)
* [CIViC](#civic)
* [CTAT](#ctat)
* [DeepPhe](#deepphe)
* [Genetic Cancer Risk Detector (GARDE)](#genetic-cancer-risk-detector--garde-)
* [GenePattern](#genepattern)
* [Gene Set Enrichment Analysis (GSEA)](#gene-set-enrichment-analysis--gsea-)
* [Integrative Genomics Viewer (IGV)](#integrative-genomics-viewer--igv-)
* [NDEx](#ndex)
* [MultiAssayExperiment](#multiassayexperiment)
* [OpenCRAVAT](#opencravat)
* [pVACtools](#pvactools)
* [TumorDecon](#tumordecon)
* [WebMeV](#webmev)
* [Xena](#xena)

## ARCHS4

All RNA-seq and ChIP-seq sample and signature search (ARCHS4) (https://maayanlab.cloud/archs4/) is a resource that provides access to gene and transcript counts uniformly processed from all human and mouse RNA-seq experiments from GEO and SRA. The ARCHS4 website provides the uniformly processed data for download and programmatic access in H5 format, and as a 3-dimensional interactive viewer and search engine. Users can search and browse the data by metadata enhanced annotations, and can submit their own gene sets for search. Subsets of selected samples can be downloaded as a tab delimited text file that is ready for loading into the R programming environment. To generate the ARCHS4 resource, the kallisto aligner is applied in an efficient parallelized cloud infrastructure. Human and mouse samples are aligned against the most recent Ensembl annotation (Ensembl 107).

## Bioconductor

The mission of the Bioconductor project is to develop, support, and disseminate free open source software that facilitates rigorous and reproducible analysis of data from current and emerging biological assays. We are dedicated to building a diverse, collaborative, and welcoming community of developers and data scientists.

Bioconductor uses the R statistical programming language, and is open source and open development. It has two releases each year, and an active user community. Bioconductor is also available as Docker images.

### Notable Bioconductor genomics tools:

- [annotatr](https://bioconductor.org/packages/release/bioc/html/annotatr.html)
- [ensembldb](https://bioconductor.org/packages/release/bioc/html/ensembldb.html)
- [GenomicRanges](https://www.bioconductor.org/packages/release/bioc/html/GenomicRanges.html) - useful for manipulating and identifying sequences.
- [GO.db](https://bioconductor.org/packages/3.16/data/annotation/html/GO.db.html) - Gene ontology annotation
- [org.Hs.eg.db](https://bioconductor.org/packages/release/data/annotation/html/org.Hs.eg.db.html)
- [RSamtools](https://www.bioconductor.org/packages/release/bioc/html/Rsamtools.html)

- [A full list of Bioconductors annotation packages](https://bioconductor.org/packages/3.16/data/annotation/) - contains annotation for all kinds of species and versions of genomes and transcriptomes.

- [ComplexHeatmap](https://bioconductor.org/packages/release/bioc/html/ComplexHeatmap.html#:~:text=Complex%20heatmaps%20are%20efficient%20to,and%20supports%20various%20annotation%20graphics.)
- [MultiAssayExperiment](https://bioconductor.org/packages/MultiAssayExperiment/)
- [limma](https://www.bioconductor.org/packages/release/bioc/html/limma.html)
- [DESEq2](https://www.bioconductor.org/packages/release/bioc/html/DESeq2.html)
- [edgeR](https://www.bioconductor.org/packages/release/bioc/html/edgeR.html)
- [curatedTCGAData](https://bioconductor.org/packages/curatedTCGAData/)
- [cBioPortalData](https://bioconductor.org/packages/cBioPortalData/)
- [SingleCellMultiModal](https://bioconductor.org/packages/SingleCellMultiModal/)

## Cancer Models

Patient Derived Cancer Models Finder (www.cancermodels.org) is a cancer research platform that aggregates clinical, genomic and functional data from patient-derived xenografts, organoids and cell lines. The PDCM Finder standardises, harmonises and integrates the complex and diverse data associated with PDCMs for cancer community.

Data types used are model meta data, related clinical metadata from the sample for which the model was derived, e.g.  molecular and treatment-based. Data are preprocessed, consistently semantically annotated, harmonised and FAIR.

PDCM Finder contains >6200 models across 13 cancer types, including rare pediatric models (17%) and models from minority ethnic backgrounds (33%), making it the largest free to consumer and open access resource of this kind.
Get started at www.cancermodels.org to browse and query models by cancer type

## CIViC

[CIViC](www.civicdb.org) is a knowledgebase and curation interface for the clinical interpretation of variants in cancer. Evidence is curated from published literature describing the diagnostic, prognostic, predictive, predisposing, oncogenic, or functional role of variants in specific cancer types. Evidence submitted by community curators is revised and moderated by expert editors. Individual evidence is synthesized into gene summaries, variant summaries and variant-disease assertions of specific clinical relevance. Anyone can make use of CIViC knowledge through the open web interface or API. Information on how to use or contribute to CIViC is available in our help docs (docs.civicdb.org). The main distinguishing feature of CIViC compared to similar resources it is total commitment to open data sharing. All data are available in the Public Domain (CC0). The code is available for any use under an MIT license.

## CTAT

[The Trinity Cancer Transcriptome Analysis Toolkit (CTAT)](https://github.com/NCIP/Trinity_CTAT/wiki) provides a diverse collection of tools to gain insights into the biology of cancer through the lens of the transcriptome. Using RNA-seq as input, CTAT modules enable detection of mutations, fusion transcripts, copy number aberrations, cancer-specific splicing aberrations, and oncogenic viruses including insertions into the human genome.  CTAT uses both read mapping and de novo assembly methods to analyze RNA-seq, leveraging tumor bulk and single cell transcriptomes. CTAT modules provide interactive visualizations as outputs, are easily installed for local execution or run via cloud computing (eg. Terra), have detailed user guides and tutorials, and are well-supported through user forums.

## DeepPhe

[DeepPhe: Natural Language Processing Tools for Cancer Research](https://deepphe.github.io/)

Under development since 2014, the DeepPhe suite of software tools aims to extract deep phenotype information from the Electronic Medical Records from patients with cancer. DeepPhe combines:

1) multiple natural language processing (NLP) techniques based on cTAKES,1  
2) a structured cancer information model including concepts from the NCIT and the HemOnc ontology
3) a graph data model supporting persistence of extracted details including links between patient data enabling semantically informed interpretation, aggregation, and disaggregation of key attributes,  
4) visual analytics tools supporting patient- and cohort-level displays of extracted data5 including identification of patients matching key research criteria and the examination of individual patient records such as exploration of links  between summary items and supporting text mentions, and   
5) multiple strategies for use, including containerized REST services and GUIs for installation and pipeline execution.  

DeepPhe tools are available for download and installation from the [DeepPhe website](https://deepphe.github.io/) under an open-source license for non-commercial use.


## Genetic Cancer Risk Detector (GARDE)

[Genetic Cancer Risk Detector (GARDE)](https://reimagineehr.utah.edu/innovations/garde/) screens and identifies patients who meet National Comprehensive Cancer Network (NCCN) criteria for genetic evaluation of familial cancer risk based on their family history in the EHR using both structured data and natural language processing of free-text data. Patients identified by GARDE are imported into an EHR's population health management dashboard (e.g., Epic's Healthy Planet module) where genetic counseling staff review individual cases, select, and send bulk outreach messages to patients via chatbot and/or through the patient portal.

GARDE is a population clinical decision support (CDS) platform based on Fast Healthcare Interoperability Resources (FHIR) and CDS Hooks standards to support interoperability and logic sharing beyond single vendor solutions.

## GenePattern

GenePattern, www.genepattern.org, is an open software environment providing access to hundreds of tools for the analysis and visualization of genomic data. Analyses include general machine learning methods, the gene set enrichment analysis suite, ‘omics-specific tools for bulk and single-cell gene expression, proteomics, flow cytometry, variant annotation, sequence variation and others, as well as  cancer-specific analyses. Also included are data preprocessing and utility tools. A web-based interface provides easy, non-programmatic access to these tools and allows the creation of multi-step analysis pipelines that enable reproducible in silico research.

The GenePattern Notebook interface, notebook.genepattern.org, extends the Jupyter Notebook system to allow users to combine GenePattern analyses with text, graphics, and code to create complete research narratives. It includes many additional features to make notebooks accessible to non-programmers. The online GenePattern Notebook Workspace allows investigators to create, run, and collaborate on notebooks using only a web browser. A library of GenePattern Notebooks implementing common scientific workflows is available for investigators to use as templates and adapt to their own requirements.

To get started with GenePattern you can go through the GenePattern Quick Start Tutorial, view the GenePattern User Guide, or the videos on our YouTube channel. To learn more about GenePattern Notebook, view the GenePattern Notebook Quick Start, GenePattern Notebook documentation, run through the tutorial notebooks (click the Tutorial button), or view the videos on the GenePattern Notebooks YouTube channel.

## Gene Set Enrichment Analysis (GSEA)

[Gene Set Enrichment Analysis (GSEA)](https://www.gsea-msigdb.org/gsea/index.jsp) is a method to identify the coordinate activation or repression of groups of genes that share common biological functions, pathways, chromosomal locations, or regulation, thereby distinguishing even subtle differences between phenotypes or cellular states. Gene set-based enrichment analysis is now standard practice for interpreting global transcription profiling experiments and elucidating the biological mechanisms associated with disease and other biological phenotypes of interest. The method is more powerful than typical single-gene approaches to comparing phenotypes, as it can identify sets of genes (e.g., perturbation signatures or molecular pathways) that are coordinately up- or downregulated when each gene in the set may not be significantly differentially expressed. The GSEA software provides useful visualizations and reports for the exploration and interpretation of results. GSEA bundles direct access to the Molecular Signatures Database (MSigDB) – a comprehensive curated repository of annotated gene sets representing signatures derived from publications, pathway databases, and other sources of public data; MSigDB can also be used independently.

The website for the GSEA-MSigDB resource can be found at gsea-msigdb.org. To get started with GSEA you can view the GSEA User Guide, and access the GSEA software through the downloads page or through the GSEA modules available on GenePattern. See the MSigDB section of the website  for more information about MSigDB and to interactively explore the gene sets and their annotations. User support for GSEA and MSigDB is available through our help forum.

## Integrative Genomics Viewer (IGV)

The [Integrative Genomics Viewer (IGV)](https://software.broadinstitute.org/software/igv/) is a track-based browser for interactively exploring genomic data mapped to a reference genome. IGV supports all the standard genomic data types (aligned reads, variants, signal peaks, genome annotations, copy number variation, etc.) as well as sample information, such as clinical, phenotypic, or other attributes. IGV provides great flexibility in loading data, whether investigator generated or publicly available, directly from multiple disparate sources without the need for any pre-processing. Supported data sources include local file systems; web servers on the user’s intranet or the Internet; commercial cloud providers (Google, Amazon, Azure, Dropbox); web links to data in public repositories. Authentication to access private data on the web is supported with the industry standard OAuth protocol.

IGV is available in multiple forms, including both end-user applications and versions for use by developers. The IGV website at https://igv.org provides access to all modalities of IGV. Download and install the IGV Desktop application from the downloads page. To learn about using the application see the tutorial videos on the IGV YouTube channel and the online User Guide. The IGV-Web app is available at https://igv.org/app. To learn about using the app, the Help link in the menu bar provides access to the documentation, and see also the tutorial videos on the YouTube channel. The igv.js JavaScript component is for web developers who wish to embed IGV in their web apps or portals. More information can be found in the Readme file and the Wiki in the igv.js GitHub repository. IGV user support is available through the igv-help online forum and the GitHub repositories.

## NDEx

The [Network Data Exchange (NDEx)](https://www.ndexbio.org/#/) project provides an open-source framework where scientists and organizations can store, share and publish biological network knowledge. A distinctive feature of NDEx is that it serves as a home for models that are currently available only as figures, tables, or supplementary information, such as networks produced via systematic mining and integration of large-scale molecular data.

NDEx includes features to support data distribution and access according to FAIR principles. Its full integration with Cytoscape, the popular desktop application for network analysis and visualization, provides the cloud back-end component for data I/O; so, if a network file format can be opened in Cytoscape, it can also be stored in (and retrieved from) NDEx.

NDEx can be accessed via its web user interface or programmatically, via REST API and client libraries in Python, R, Java. Web applications can interface with NDEx via JavaScript: MSigDB, CRAVAT, cBioPortal and IQuery, are all examples of web applications integrated with NDEx.

For more information, please review the About NDEx page.
To get started, visit the NDEx public server: there, you can review the NDEx FAQ, access documentation, contact us, and search or browse thousands of biological network models.

## MultiAssayExperiment

[MultiAssayExperiment](https://bioconductor.org/packages/MultiAssayExperiment/) is an R/Bioconductor package that harmonizes data management, manipulation, and subsetting of multiple experimental assays performed on an overlapping set of specimens. It supports on-disk and remote data storage, and provides reshaping tools for adaptability to arbitrary downstream analysis.

MultiAssayExperiment is distinct from alternative approaches in its focus on multi’omic data management and manipulation and in its integration with the Bioconductor ecosystem: it is used by more than 50 other Bioconductor packages, it provides a familiar Bioconductor user experience by extending concepts from SummarizedExperiment while supporting an open-ended mix of data classes for individual assays, and it allows subsetting by genomic ranges, row names, phenotypic data, and assays.

You can get started with the MultiAssayExperiment Bioconductor package documentation, or start with prebuilt MultiAssayExperiments objects from [curatedTCGAData](https://bioconductor.org/packages/curatedTCGAData/), [cBioPortalData](https://bioconductor.org/packages/cBioPortalData/), or [SingleCellMultiModal](https://bioconductor.org/packages/SingleCellMultiModal/).

## OpenCRAVAT

[OpenCRAVAT](https://run.opencravat.org) uses variation data in many popular variant file formats and its outputs are variant annotations and visualizations.  To get started go to opencravat.org.  Download and run on your local machine, multi-user servers, at https://run.opencravat.org or in the cloud. We offer a broader selection of annotation tools than comparable software and results can be explored with an interactive GUI that provides customized filtering options, interactive tables and widgets.  Use it for a single sample or a large cohort, or pull single variant reports with a structured url (Example: https://run.opencravat.org/webapps/variantreport/index.html?chrom=chr11&pos=48123823&ref_base=A&alt_base=C )

## pVACtools

Identification of neoantigens is a critical step in predicting response to checkpoint blockade therapy and design of personalized cancer vaccines. We have built a computational framework called pVACtools that, when paired with a well-established genomics pipeline, produces an end-to-end solution for neoantigen characterization. pVACtools supports identification of altered peptides from different mechanisms, including point mutations, in-frame and frameshift insertions and deletions, and gene fusions. Prediction of peptide:MHC binding is accomplished by supporting an ensemble of MHC Class I and II binding algorithms within a framework designed to facilitate the incorporation of additional algorithms. Prioritization of predicted peptides occurs by integrating diverse data, including mutant allele expression, peptide binding affinities, and determination whether a mutation is clonal or subclonal. Interactive visualization via a Web interface allows clinical users to efficiently generate, review, and interpret results, selecting candidate peptides for individual patient vaccine designs. Additional modules support design choices needed for competing vaccine delivery approaches. One such module optimizes peptide ordering to minimize junctional epitopes in DNA vector vaccines. Downstream analysis commands for synthetic long peptide vaccines are available to assess candidates for factors that influence peptide synthesis. All of the aforementioned steps are executed via a modular workflow consisting of tools for neoantigen prediction from somatic alterations (pVACseq and pVACfuse), prioritization, and selection using a graphical Web-based interface (pVACview), and design of DNA vector–based vaccines (pVACvector) and synthetic long peptide vaccines. pVACtools is available at http://www.pvactools.org.

## TumorDecon

It is only software that includes these four digital cytometry methods in one platform, so that users can compare the results of these methods. It is the only software that includes a method for creating signature matrix from single cell gene expression data.

TumorDecon software includes four deconvolution methods (DeconRNAseq [Gong2013], CIBERSORT [Newman2015], ssGSEA [Şenbabaoğlu2016], Singscore [Foroutan2018]) and several signature matrices of various cell types, including LM22. The input of this software is the gene expression profile of the tumor, and the output is the relative number of each cell type and several visualization plots. Users have an option to choose any of the implemented deconvolution methods and included signature matrices or import their own signature matrix to get the results. Additionally, TumorDecon can be used to generate customized signature matrices from single-cell RNA-sequence profiles.

In addition to the 3 tutorials provided on GitHub (tutorial.py, sig_matrix_tutorial.py, & full_tutorial.py) there is a User Manual available at: https://people.math.umass.edu/~aronow/TumorDecon

TumorDecon is available on Github (https://github.com/ShahriyariLab/TumorDecon) and PyPI (https://pypi.org/project/TumorDecon/).

For more info please see: Rachel A. Aronow, Shaya Akbarinejad, Trang Le, Sumeyye Su, Leili Shahriyari, TumorDecon: A digital cytometry software, SoftwareX, Volume 18, 2022, 101072, https://doi.org/10.1016/j.softx.2022.101072.

## WebMeV

[WebMeV](https://webmev.tm4.org) is an online tool that facilitates analysis of large-scale RNA-seq and other multi-omic datasets by providing intuitive access to advanced analytical methods and high-performance computing for a wide range of basic, clinical, and translational researchers. Although WebMeV provides support for “bulk” RNA-seq data, single-cell RNA-seq, and other types of -omic data and provides easy access to public data resources such as The Cancer Genome Atlas (TCGA) and the Genotype-Tissue Expression project (GTEx)—as well as user-provided data. WebMeV uniquely provides a user-friendly, intuitive, interactive interface to processed analytical data uses cloud-computing elasticity for computationally intensive analyses that are increasingly required for genomic data analysis. WebMeV’s design places an emphasis on user-driven data analysis by providing users the ability to visualize, interact with, and dissect genomic data at each step in the analysis with a “point-and-click” interactive data environment. Although the primary input is normalized “count matrices,” WebMeV does include tools for data normalization and quality control and uses Dropbox and Google Drive as means of easily uploading data. Analytical methods include statistical tests for comparing cohorts, for identifying gene seats, for doing functional enrichment analysis on gene sets (GSEA), and for inferring gene regulatory network models and comparing these networks between phenotypes to understand the drivers of disease. WebMeV also provides a platform to support reproducible research and makes code for the entire system and its component methods available as open-source software code.

## Xena

[UCSC Xena](http://xena.ucsc.edu/) is a web-based visualization tool for multi-omic data and associated clinical and phenotypic annotations.

Xena showcases seminal cancer genomics datasets from TCGA, the Pan-Cancer Atlas, GDC, PCAWG, ICGC, and more; a total of more than 1500 datasets across 50 cancer types. We support virtually any type of functional genomics data (sometimes known as level 3 or 4 data). This includes SNPs, INDELs, copy number variation, gene expression, ATAC-seq, DNA methylation, exon-, transcript-, miRNA-, lncRNA-expression and structural variants. We also support clinical data such as phenotype information, subtype classifications and biomarkers. All of our data is available for download via python or R APIs, or through our URL links.

### Questions Xena can help you answer include:

* Is overexpression of this gene associated with better survival?
* What genes are differentially expressed between these two groups of samples?
* What is the relationship between mutation, copy number, expression, etc for this gene?

Our tool differentiates itself by its ability to visualize more uncommon data types, such as DNA methylation, its visual integration of multiple types of genomic data side-by-side, and its ability to easily privately visualize your own data.

Get started with our tutorials: https://ucsc-xena.gitbook.io/project/tutorials. If you use us please cite us: https://www.nature.com/articles/s41587-020-0546-8
