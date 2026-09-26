---
layout: page
title: MPC and MHE for an Overhead Crane
description: Experimental validations of MPC and MHE
status: PhD Contribution
permalink: /projects/crane_experiments/
---

[![Overhead crane controlled by auto-generated nonlinear MPC](https://img.youtube.com/vi/YuiSrqe7rlo/0.jpg)](https://www.youtube.com/watch?v=YuiSrqe7rlo)

This was the first application of an auto-generated Nonlinear Model Predictive Control (MPC) from the ACADO toolkit. The experiments are explained in detail in [this publication](https://ieeexplore.ieee.org/document/6315390). Although the tracking was slow, we showed that we can run the so-called real-time iteration (RTI) scheme in hard real-time. Furthermore, experiments proved a fast convergence rate of the RTI scheme. This implementation used a simple MPC formulation and a simple estimator.

The results of the improved experiments are published in [this paper](https://www.sciencedirect.com/science/article/pii/S1474667016431356). We used a more detailed model and a more complex formulation for the MPC. Moreover, this time we used nonlinear Moving Horizon Estimation (MHE) to more accurately estimate the system' states. As a result, faster motions are achieved. Besides faster motions, we also achieved faster execution times of the controller and the estimator: we used a newer version of the code generator.

[![Overhead crane controlled by nonlinear MPC and MHE](https://img.youtube.com/vi/QEf05rTS-BE/0.jpg)](https://www.youtube.com/watch?v=QEf05rTS-BE)

A detailed comparison of the two aforementioned approaches can be found in Chapter 5 of my [PhD thesis](https://kuleuven.limo.libis.be/discovery/fulldisplay?docid=lirias1692951&context=SearchWebhook&vid=32KUL_KUL:Lirias&lang=en&search_scope=lirias_profile&adaptor=SearchWebhook&tab=LIRIAS&query=any,contains,LIRIAS1692951&offset=0).
