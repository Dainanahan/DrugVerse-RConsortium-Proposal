DrugVerse-RConsortium-Proposal
================
Mohammed Ali
2019-09-29

# Signatories

<!-- 
This section provides the ISC with a view of the support received from the community for a proposal. Acceptance isn't predicated on popularity but community acceptance is important.  Willingness to accept outside input is also a good marker for project delivery. 

An optional section would be for R-Core signatories where changes to R are proposed.
-->

## Project team

<!-- 
Who are the people responsible for actually delivering the project if the proposal gets accepted and are already signed up and rearing to go?
-->

  - Mohammed Ali, R\&D Developer @ Upland Software
  - Ali Ezzat, Chief Data Scientist @ Synapse Analytics
  - Nada Mamdouh, Teaching Assistant @ Modern Academy
  - João Torres, Linguistic Administrator @ Council of the European
    Union

## Contributors

<!-- 
Who are the people who have actively helped with this proposal but won't necessarily be on the core project team later?
-->

Contributors are all DrugVerse users who reported bugs in or requested
features to be added to DrugVerse.

## Consulted

<!-- 
Who has been given the opportunity to provide feedback on the proposal? This should include any R Consortium & ISC members who the proposal has been discussed with.
-->

# The Problem

At present, there is no single R package (or series of packages) that
acts as a one-stop shop when it comes to pharmaceutical research
activities. Practitioners in the pharmaceutical industry are currently
forced to work with different tools for handling the different (data
science) tasks. Oftentimes, these tasks require extra effort from the
practitioners to develop their own code that does what they need
depending on the situation.

As far as we know, there is no cohesive, well-integrated series of
packages in R that tackles tasks that are typical of a data science
workflow in the field of drug discovery. Ideally, this series of
packages would:

  - gather data from disparate data sources and be able to wrangle them
    despite the different formats they may come in
  - explore the data from various aspects to come up with findings that
    are relevant to pharmaceutical researchers
  - building/implementing prediction models tailored for the challenges
    in the field of drug discovery

Having such a series of packages would significantly reduce the time and
effort required by pharmaceutical researchers in the drug discovery
pipeline. Furthermore, since many researchers use R in their daily work,
we imagine that these packages would be useful for them and the drug
discovery community.

<!-- 
Outlining the issue / weak point / problem to be solved by this proposal. This should be a compelling section that sets the reader up for the next section - the proposed solution!

It is important to cover:

 - [ ] What the problem is
 - [ ] Who it affects
 - [ ] Have there been previous attempts to resolve the problem
 - [ ] Why it should be tackled
-->

# The proposal

<!--
This is where the proposal should be outlined. 
-->

DrugVerse provides pharmaceutical researchers with different tools that
mimic the data science life cycle and helps them to achieve their
missions in solving challenges pertaining to drug development.

## Overview

<!--
At a high-level address what your proposal is and how it will address the problem identified. Highlight any benefits to the R Community that follow from solving the problem. This should be your most compelling section.
-->

Following is what DrugVerse would be capable of doing upon its
completion:

  - wrangle data obtained from different drugs-related data sources and
    formats into forms that are more analysis-ready under R,
  - explore and mine drugs-related data in Shiny applications containing
    user-friendly interfaces and interactive visualizations,
  - run prediction algorithms (e.g. similarity based algorithms, feature
    based algorithms, semantic based algorithms, etc) for the prediction
    of different associations (e.g. drug-target interactions,
    drug-disease associations, etc.)
  - validate prediction results both quantitatively (via latest known
    statistical validation methods) and qualitatively (e.g. viewing
    highest-ranked predictions and highlighting those that are already
    known in the literature) in intuitive and easy-to-understand
    reports.

Following the development of DrugVerse:

  - The R community would benefit from packages that perform data
    retrieval, data wrangling and building prediction models for drug
    development
  - Practitioners in drug discovery would benefit from visualization
    facilities provided in DrugVerse that would enable them to explore
    data in an interactive manner
  - Practitioners would also be provided with facilities to implement
    cross validation strategies for use in drug discovery efforts

## Detail

<!--
Go into more detail about the specifics of the project and it delivers against the problem.

Depending on project type the detail section should include:

 - [ ] Minimum Viable Product
 - [ ] Architecture
 - [ ] Assumptions
-->

DrugVerse proposed tools are designed to handle the different stages of
drug discovery data science projects lifecycle as follow:

  - **dbparser (currently at version 1.0.4, updated regularly)**: It is
    an R package. Its main purpose is to parse the DrugBank database
    which is downloadable in XML format into more than 75 R dataframes.
    These dataframes can then be explored and analyzed as desired by the
    user. This package further provides the facility of saving the
    parsed data into a given database (e.g. MySQL).

  - **DrugMiner (under development)**: **DrugMiner** is an R Shiny
    application that can be used to do the following:
    
      - DrugMiner is working on parsed data from **dbparser**
      - Displaying an interactive drug-target network.
      - Augmenting the visualized network with drug-enzyme,
        drug-transporter and drug-carrier relations.
      - Selecting certain drugs to perform specific tasks on them using
        one of the other tools that are available in DrugVerse such as
        the Drug-Target Interaction Predictor (see below).

  - **Drug Target Interaction Predictor (under development)**:
    Drug-Target Interaction Predictor is an R package that provides
    implementations of different algorithms for predicting drug-target
    interactions. These algorithms can be categorized as follows:
    
      - Similarity-based methods
      - Bipartite local models
      - Matrix factorization methods
      - Feature-based methods
      - Network-based methods

  - **Byakugan (in planning phase, development to commence shortly)**:
    Byakugan is an R Shiny application that provides the following
    features:
    
      - Extracting pharmacological information of drugs and biomedical
        documents using NLP and text mining techniques from different
        online resources to find implicit co-occurrent compound–protein
        relations.
      - Building its own knowledge base from the extracted information
      - Answering queries about drugs and targets based on the knowledge
        parsed from the different data sources (e.g. article abstracts,
        online biological databases, RDF databases, etc.)

# Project plan

## Start-up phase

<!--
Covering the planning phase, this section should provide a relatively detailed plan of how work will start on the project. This section is important because projects need to get up and running quickly.


 - [ ] Setting up collaboration platform inc. code for contributors etc.
 - [ ] Licence decisions
 - [ ] Reporting framework
-->

All the code is hosted in GitHub [Dainanahan
Account](https://github.com/Dainanahan) in which each tool is hosted in
its own reprository
(i.e. [dbparser](https://github.com/Dainanahan/dbparser)). Moreover,
each tool has the following:

  - MIT License, i.e. [dbparser
    license](https://github.com/Dainanahan/dbparser/blob/master/LICENSE)
  - Code of Conduct, i.e. [dbparser code of
    conduct](https://github.com/Dainanahan/dbparser/blob/master/CODE_OF_CONDUCT.md)
  - Reporting issues, i.e. [dbparser issues
    reporting](https://github.com/Dainanahan/dbparser/issues)
  - Tool Site and Documentation, i.e. [dbparser
    site](https://dainanahan.github.io/dbparser/index.html)

## Technical delivery

<!--
Covering the actual delivery of the project this section should provide at least a high-level the implementation. 

Including target dates is really important as you need to be committed and the ISC need to have a means of tracking delivery
-->

**DrugVerse** tools are R packages and Shiny R applications detailed as
follow:

  - **dbparser** (already released) –\> an R package with different
    functionalities to parse different elements of DrugBank xml
    database.

  - **DrugMiner** (Expected to be released on December 2020) –\> an R
    package that builds plots that are designed specifically for drug
    dicovery process in addition to an R shiny application that presents
    this plots and reports in an interactive and atrractive way.

  - **Drug Target Interaction Predictor** (Expected to be released on
    February 2020)–\> an R package that implement different machine
    learning algorithms in which are designed specifically for Drug
    Discovery process along with different cross validations methods.

  - **Byakugan** (Expected to be released on February 2021)–\> an R
    package that:
    
      - retrieve and parse related drugs documents (i.e. articles,
        books, papers).
      - apply different NLP and semantic algorithms for these documents
        to retrieve meaningful information.
      - build semantic database with that information.
      - build webservices to connect to other online drug semantic
        databases to enrich later phases of mining and prediction.
      - apply mining and prediction algorithms on semantic data.
      - In addition to the R package, an R shiny application will
        present the above features to the user with interactive and
        attractive plots and reports.

## Other aspects

The following activities are intended to publish Drugverse tools:

  - present DrugVerse in [rPharma](http://rinpharma.com/) conference
    2020,
  - write different papers for DrugVerse diferent tools and we intend to
    present them related Drug Discover conferences,
  - publish a site for each tool
    (i.e. [dbparser](https://dainanahan.github.io/dbparser/index.html))
  - publish posts about the tools in different channels
    (i.e. ResearchGate, Twitter, LinkedIn),
  - announce packages on different R communites channels. <!--
    Covering non-technical activities like on-going publicity, paper preparation, discussion groups etc. that might be required to facilitate successful delivery of the project.
    
     - [ ] Announcement post
     - [ ] Delivery blog post
     - [ ] Twitter
     - [ ] UseR!
     - [ ] ISC meetings
    -->

# Requirements

<!-- 
An idea of what is required to make the project actually happen
-->

## People

<!--
Who needs to be involved, what's the proposed structure, what will it take to get their involvement?
-->

It is required to have the dedication of a minimum of:

  - three full-time data scientists
  - two part-time pharamceutical researchers
  - one part-time web developer
  - one part-time DevOps engineer

## Processes

<!-- 
What processes need to be put in place e.g. codes of conduct, regular ISC meetings, handover to the community at large?
-->

At present, DrugVerse is being developed under the MIT license, and the
link below has our code of conduct:
<https://github.com/Dainanahan/dbparser/blob/master/CODE_OF_CONDUCT.md>

We are meeting regularly for the sake of:

  - discussing DrugVerse’s proposed features and how to implement them
  - responding to the latest issues raised by users of DrugVerse

## Tools & Tech

<!--
What is going to be needed to deliver this project? 

Will cloud computing be used - if yes are there are necessary components that will be deciding factors between providers?

Are there tools or tech that don't exist that will be produced to facilitate the project?
-->

We intend to host the project on the cloud (RStudio hosting service) to
host different web applications and data stores pertaining to DrugVerse.

## Funding

<!-- 
[TO DO] THE GUIDANCE IS PRETTY UNCLEAR, ESP IN LIGHT OF GABOR'S PROPOSAL VS AWARD SIZE
-->

We will require funding for:

  - the salaries of the personnel who will be working on this project,
  - the hosting service on the cloud and to cover papers publishing and
  - conference attendance required fees.

## Summary

<!--
A summary of the requirements that contextualises the costs
-->

Costs of this project consist of those for paying the salaries of the
personnel working on this project and hosting the project on the cloud.

# Success

<!-- 
Projects should have a definition of done that is measurable, and a thorough understanding going in of what the risks are to delivery 
-->

## Definition of done

<!-- 
What does success look like? 
-->

The DrugVerse series of packages would all be successfully uploaded to
CRAN, and a Shiny R server that is using DrugVerse would be hosted on
Shiny’s hosting service (R Studio).

## Measuring success

<!-- 
How will we know when success is achieved, what markers can we use along the way 
-->

  - The packages would easily accessible and downloadable from CRAN
  - The users of DrugVerse and/or its Shiny R server would be able to
    provide us with feedback via DrugVerse’s GitHub pages and via email
  - Many users would fork/star DrugVerse’s repository on GitHub as well
    as submitting pull requests to be approved
  - We will have published a few papers on the different features
    provided in DrugVerse
  - Users of DrugVerse would cite our papers in their work

## Future work

<!-- 
How could this be extended / developed in the future by yourself and/or the community in general?
-->

We have the following short-term objectives in mind:

  - Conduct further research into taking advantage of heterogeneous
    information sources for enhancing the accuracy of the different
    prediction algorithms.
  - Further our self-branding on social media (LinkedIn, ResearchGate,
    etc.) to improve our reach as well as attend conferences to show our
    work (see next section for more details).
  - Make use of ensemble learning and deep learning to further improve
    accuracy of the prediction models.
  - Utilizing Big Data technologies and tools in order to support the
    huge amounts of data that we will eventually be dealing with.
  - Conduct a search for individuals who are willing to contribute to
    DrugVerse and who preferably possess a background in
    pharmaceuticals.

## Key risks

<!-- 
What sort of things could come up that can delay or break the project?

 - [ ] People
 - [ ] Processes
 - [ ] Tooling & Technology
 - [ ] Costs

-->

  - It would hurt the project, if people who are working on it
    (especially the full-timers) leave for whatever reason.
  - Some of the employees reside in other countries and communicating
    with them may not always be efficient online.
  - Untimely delivery of DrugVerse’s tools
  - Costs of salaries and web-hosting services might not be adequately
    covered by the provided funds,
