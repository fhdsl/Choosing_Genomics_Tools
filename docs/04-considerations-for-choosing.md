


# Considerations for choosing tools

## Learning Objectives

![](04-considerations-for-choosing_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g21f6c5d3981_0_0.png){width=100%}

## Overview

In this course, we will introduce you to the fundamentals of various data types and give you advice about choosing tutorials and tools whenever possible. However, it is critical to note that there is no "one size fits all" when it comes to genomic data decisions. Instead, our goals are to equip you with the knowledge you need as well as the questions you need to ask yourself (or others) when making decisions about your genomics data.

We will discuss the following considerations you should gather information and otherwise ponder when comparing one or more tools for your analysis:

![](04-considerations-for-choosing_files/figure-docx//1YwxXy2rnUgbx_7B7ENH9wpDX-j6JpJz6lGVzOkjo0qY_g21f6c5d3981_0_5.png){width=100%}

### Is this tool appropriate for your data type?

Certain tools are built for certain kinds of data. In each data-type-specific chapter we will attempt to point you tools that are appropriate for the given data type. However, note that some tools also might require tweaks in parameters for non-standard data collection methods. If you were not sure of the data collection methods used for your data type, be sure to follow the data type specific advice in the chapter to find out the information about your data that you need to know to make an informed decision.  

### Is this tool appropriate for your scientific question?

Some tools may be appropriate for the general data type, but might mask information  you will need to answer your particular scientific question or hypothesis. For example, for RNA-seq if you are interested in splice variants, you may not be able to use certain alignment tools that do not differentiate between splice variants.

Be sure to make your goals and scientific questions clear when asking for advice or guidance. Some tools may be applicable to certain scientific questions, but other accommodations or preprocessing may need to be done

### Is this tool in an interface or programming language you feel comfortable with?

Genomics and informatics tools can be classified into two groups based on how you interact with them. These groups are 1) command line or 2) graphics user interface (GUI). GUIs are tools that you can use by clicking and pointing with your mouse whereas command line tools require input through writing out commands.

Command line tools often lend to greater reproducibility of an analysis since a script can have all the steps needed to re-run analysis. This makes it so you could re-run and reproduce your results with one command instead of lots of clicking various buttons in particular order as you would need to do with a GUI based tool.

Your level of comfort or willingness/time available to learn a programming language like R or Python will influence what tool options you have. If you are unfamiliar and uncomfortable writing in R, Python, or Bash scripting, this will influence what tools you have available to you or whether you will need to enlist more outside help.

If you are interested in learning to use command line, we have many resources and recommendations for you to use for learning in this next chapter. However, if you do not have the bandwidth or motivation to learn how to code, you will want to gravitate toward tools that have GUIs.

### How much computing power do you have?

Some tools require a lot more computing resources (or runtime) than others. Many institutions have cloud computing resources or high powered computing clusters for your use. [We'll recommend you to our Computing Course for more information about this](https://jhudatascience.org/Computing_for_Cancer_Informatics/computing-resources.html).

But your computing budget access, and time allotment, may influence what tools you would like to use for a project. For example, for RNA seq data alignment, traditional aligners that use the genome take an order of magnitude greater amount of time to run than quantifying transcripts with pseudo alignment based tools. For many applications pseudoaligners are perfectly appropriate and efficient choices that can be run on a laptop. But if you prefer a traditional aligner because you are interested in something that is not detected by pseudosligners such as splice variants, then you may want to look into using some computing resources for this task. All these decisions need to be weighed in balance with each other. 

### Are there benchmarking papers that compare this tool to other options?

Some tools and their algorithms have been more thoroughly examined and tested than others. And this doesn't always align to a tool's popularity. Seek out the literature and what studies have been done comparing this tool to others like it. Keep in mind the tool developer's own bias if the paper is coming directly from the group or individual who is the creator of the tool. Developers will be more likely to understand and know how to tweak parameters of their own tool properly, while not necessarily spending as much time testing and adjusting tools made by others. This concept has sometimes been called the ["Continental Breakfast Included"](https://www.biorxiv.org/content/10.1101/385534v4) concept.  

### Is the tool well documented and usable?

Well documented and usable tools can be very powerful. Poorly documented tools which may lead to unknown parameters or other mishandling of the data if it has not been made clear by the tool developers and maintainers. Good understanding of what a tool is doing with the data you give it is perhaps more important than using fancy algorithms that are unclear. Not only does documentation and usability increase your ability to use a tool, but your analysis will be more reproducible if others can also understand the tools that you used.

The existence of forums and user groups for particular tools, not only makes it a useful resource for you for analysis, troubleshooting and interpretation of your results, but it also indicates a particular drive for the tool to continue to be maintained and developed overtime.

### Is the tool well maintained?

If a tool is actively being maintained this will aid in the reproducibility of your results. Tools on GitHub (an open-source platform for software) or other repositories often indicate when latest updates to a tool were made. Ideally updates are being made regularly to the tool, but a lack of updates does not speak well for the future existence of the tool. A tool that is not well maintained or supported may deprecate and make it increasingly difficult if not possible to reproduce, re-run or further develop your analysis.

### Is the tool generally accepted by the field?

While tool popularity should not be the only consideration when choosing a tool, it is an aspect that can influence communication or acceptance of your results. All things being equal, it can be better to choose a tool that is more accepted by the community as tried and true, and well benchmarked as opposed to the bleeding edge technology that may have not been truly scrutinized yet. In an analysis it is perhaps more valuable to know and weigh the known limitations of an older tool than to use a newer tool whose limitations may not have been identified yet (but it certainly will have its own limitations identified in time).

## Coming to a decision

It's important to note that the questions we will discuss here need to be considered in balance of one another. Rarely should you make a decision about a tool without considering all of these items congruently. For example, some tools may have better benchmarking but if it is more computationally costly and you do not have access to the necessary computing resources to run the tool, then you may need to consider other options.



## More resources

- [A longer list of tools and resources can be found here](https://hutchdatascience.org/code_review/more_resources.html)

- [DataTrail curriculum](https://datatrail-jhu.github.io/DataTrail/index.html)
- [Introduction to Reproducibility](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/introduction.html)
- [Advanced Reproducibility in Cancer Informatics](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/introduction.html)
- [Computing in Cancer Informatics](https://jhudatascience.org/Computing_for_Cancer_Informatics/)
