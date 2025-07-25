


# Microbiome Sequencing

<div class = "warning">
This chapter is incomplete! If you wish to contribute, please [go to this form](https://forms.gle/dqYgmKH8XXE2ohwD9) or our [GitHub page](https://github.com/fhdsl/Choosing_Genomics_Tools).
</div>

## Learning Objectives

<img src="resources/images/13-microbiome_files/figure-html//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g2668d07d0b9_0_0.png" alt="Learning Objectives" width="100%" />

## A Brief Introduction to Microbiomes


Microbes are everywhere. We have found these tiny organisms in the deepest regions of the ocean and in the upper atmosphere. We have found them in:
+ water that has been solid ice for millennia in the Antarctic
+ boiling water in the geysers of Yellowstone National Park.
+ the driest natural environments on Earth, including the Atacama Desert in Chile, where desiccation resistant microbes hide in the soil sometimes waiting ten years for the drop of rain that will jump start their metabolism long enough for them to reproduce before they return to dormancy.
+ perpetually damp environments, like the intestinal tract of the human body where they are constantly the subject of inspection by our diligent immune cells, and where they impact our health in positive and negative ways that we are only beginning to understand.
+ our nuclear reactors, prompting questions about whether we could harness them as tiny machines to help us remediate environmental disasters of the past, present, and future.

 If we looked hard enough, I think we’d find them on the surface of the moon and Mars, though they are probably microbes who stowed away on our spacecraft and are now patiently waiting for a drop of water that may or may not ever show up. If we ever colonize those worlds, microbes will be an indispensable ally in creating an environment that could sustain us.

<img src="resources/images/13-microbiome_files/figure-html//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g26ebab787e9_0_0.png" alt="Learning Objectives" width="100%" />
This figure is adapted from [@Tignat-Perrier2022] under Creative Commons license.

Microbes almost never live alone in the real world (i.e., outside of a laboratory). Rather they exist in communities of different species who are interacting with each other and their environment. Some of these communities will have many different types of organisms, and some will have only a few. Because of the large number of species and individuals involved, no two communities will ever be exactly alike, and quantifying differences between microbial communities is an important area of research at the moment. The types of interactions between organisms are also highly varied. These can include mutualistic relationships, where both organisms benefit from the interaction; parasitic relationships, where one organism exclusively benefits to the detriment of the other; and the full gradient in between.

Microbiome science is everywhere. There are tens of articles published daily in the scientific literature, and many popular science articles and books present these findings to the world of non-scientists. Understanding the promises and limitations of the methods of microbiome science can help avoid misconceptions about microbiome research, and it’s important for practitioners of microbiome science to understand and convey the promise and limitations of our field. Misconceptions abound, frequently arising from the same sources as high-quality popular science microbiome reporting.


For example, on 5 Feb 2015 an article appeared in the New York Times noting (almost offhand) that Yersinia pestis, the organism responsible for Bubonic plague, had been found in multiple locations throughout the New York City subway system as part of its normal built environment microbiome. This was rapidly followed up on 6 Feb 2015 with an article noting that there was probably not Bubonic plague on the subway system after all, but rather that the approaches used by the research team are limited in their taxonomic resolution, and that likely a harmless close relative of Y. pestis was observed: 

>“What the researchers probably found, [a spokesman for the university where the study originated] said, was bacteria from an unknown species or from organisms that happened to share some gene sequences with the plague bacterium…”.


As microbiome services and products are increasingly marketed directly to the public, consumers of microbiome research findings, products, and services need to know how to critically evaluate these offerings and their associated claims. As practitioners in the field, we can help by ensuring that the methods we apply are appropriate and reliable, and that we make our work accessible.

## Goals of Amplicon analysis

The technologies that are enabling work in microbiome science are the same that are driving the data revolution in biology. Primarily this work is driven by high-throughput DNA sequencing, which is applied for profiling microbial community composition:

+ marker gene profiling (such as 16S or ITS sequencing)
+ functional potential (such as shotgun metagenomic sequencing)
+ functional activity (such as metatranscriptome sequencing)

Other “omics” technologies are now playing an increasing role in microbiome research, such as:

+ mass-spectrometry-based metabolomics, which provides profiles of small molecule metabolites in an environment.
+ metaproteomics which provides more detailed descriptions of functional activities of microbes (and their hosts, if applicable).

 As a result, bioinformatics software tools are essential to microbiome research. For many microbiome researchers, bioinformatics is an intimidating and challenging aspect of their projects.


## Microbiome Analysis with QIIME 2
QIIME 2 is an all in one bioinformatics microbiome analysis platform. This platform allows for users to go from sequenced microbiome data to publication ready visualizations. The original QIIME, now referred to as QIIME 1, was published in 2010 [@Caporaso2010] and has been cited tens of thousands of times in the primary literature. QIIME 2, which was published in July of 2019 [@Bolyen2019], succeeded QIIME 1 on 1 January 2018. QIIME 2 is better than QIIME 1 in all ways, and QIIME 1 is no longer actively supported. If you have previously used QIIME 1, you should invest time in learning and switching to QIIME 2. If you’re new to QIIME, start with QIIME 2. (When I refer to QIIME in this book, without specifying whether I’m referring to QIIME 1 or QIIME 2, I’m referring to the platform generally.)

QIIME 2 has large and growing user and developer communities, and these communities make QIIME 2 possible. The epicenter of the community is the QIIME 2 Forum. The forum is primarily known as a place where users can get technical support with QIIME 2 for no charge. Developers of QIIME 2 moderate the forum, and typically respond to technical support questions within a couple of business days. The forum is also a great place to discuss general topics in microbiome bioinformatics, or microbiome research methods generally. There are many active discussions on these topics on the forum. Keeping up with the discussions on the forum is a great way to learn about current topics in microbiome research methods. There’s also a free job board on the forum - you can use the forum to find jobs, or post your own job ads there to find employees who are well-versed in QIIME 2 and other bioinformatics tools. If you’re not already a member of the QIIME 2 Forum, you should consider joining. It’s a great way for you to get help, and as you develop your QIIME 2 skills helping others on the forum is a great way to reenforce your learning and to get involved in the community.

[Here](https://gregcaporaso.github.io/q2book/front-matter/preface.html) is a high-level introduction to microbiome analysis using QIIME 2. This introduction will go over common methods, metrics and approaches used for microbiome science.
So grab a cup of your favorite hot beverage and let’s get started! ☕

