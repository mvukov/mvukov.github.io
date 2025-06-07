---
layout: page
title: ACADO Toolkit
description: Toolkit for Automatic Control and Dynamic Optimization
status: PhD Contribution
permalink: /projects/acado/
---

[ACADO Toolkit](https://acado.github.io/) is a software environment and algorithm collection for automatic control and dynamic optimization. It provides a general framework for using a great variety of algorithms for direct optimal control, including model predictive control, state and parameter estimation and robust optimization. ACADO Toolkit is implemented as a self-contained C++ code and user-friendly API. The object-oriented design allows for convenient coupling of existing optimization packages and for extending it with user-written optimization routines.

During my PhD days, the developments of ACADO used to be mostly focused around the auto-generated optimization solvers with the idea to employ those on fast mechatronics systems. I have spent quite a bit of my time on the solvers for nonlinear MPC and MHE. Compared to the starting point of my developments, at the end of my PhD we achieved the state of far more capable package and an order of magnitude faster generated code. Besides algorithmic implementations, I contributed to the code base maintenance: we started using CMake as a build system, we moved code repository to Git and we set up a continuous integration system.

Besides algorithmic implementations, I contributed to the code base maintenance:
* Started using CMake as a build system
* Moved code repository to Git
* Set up a continuous integration system

More about the code-generation tool (CGT) can be found e.g. in Chapter 4 of my [PhD thesis](ftp://ftp.esat.kuleuven.be/pub/SISTA/mvukov/reports/thesis_final_print.pdf). For other publications on the topic please refer to my [Google Scholar](http://scholar.google.com/citations?user=gnSTyOMAAAAJ&hl=en&oi=ao) profile. Despite being a PhD-grade software package (read: no (unit-)tests, developed mainly for an increase of personal publication counters), the tool has been successfully used in a number of academic applications even without any help from the development team. Furthermore, we have learned through various channels that the generated code has been used in some commercial applications. That is brave and certainly contributes to the success of the project.
