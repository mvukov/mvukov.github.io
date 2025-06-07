---
layout: page
title: Rotational Start-up of an Airborne Wind Energy System
description: Experimental validations of MPC and MHE
status: PhD Contribution
permalink: /projects/awe_experiments/
---

[![YouTube Video](https://img.youtube.com/vi/1UmN3MiR65E/0.jpg)](https://www.youtube.com/watch?v=1UmN3MiR65E)

And what were we doing at KU Leuven? Among many amazing things, we have used to spend huge amounts of time modeling, simulating, optimizing and controlling AWE systems. Before energy production, one needs to launch the kite in the sky. One way to do it is to utilize the concept of the rotational start-up. We have made a small scale setup at our lab and we used that setup for testing and demonstration purposes. In particular, to play with fast algorithms and solvers for nonlinear Model Predictive Control (MPC) and moving horizon estimation (MHE).

[![YouTube Video](https://img.youtube.com/vi/qta9N8gNRyk/0.jpg)](https://www.youtube.com/watch?v=qta9N8gNRyk)

Above you can see then work-in-progress video (Q4 2014) of a first-person view on the Leuven kite carousel experiments. Here we demonstrated the closed-loop performance with MPC and MHE. The goal of the experiments was to achieve stable movements from one steady-state to the other one, which are characterized mostly by the roll angle and the height of the plane.

The screen on the left serves for the live feed of the data coming from sensors and the data the controllers send to the actuators:

* top row: gyroscope, accelerometer and winch data.
* bottom row: control surfaces (ailerons and the elevator control surfaces' deflection angles), main motor speed and control, and the line angle sensor data.

You can see the MHE horizons on the screen on right. The current pose estimate is the one that is not shaded.

The system was modeled with an index-3 DAE (27 differential states, 4 inputs, and 1 algebraic state). Both MHE and the MPC work at a 25 Hz rate in a unified control-estimation cycle. Horizon for the MHE was set to be 30 intervals (1.2 seconds). For the controller, we chose 50 intervals (2 seconds).

Finally, about 4 years of team-work in the lab have been summarized in Chapter 6 of my [PhD thesis](ftp://ftp.esat.kuleuven.be/pub/SISTA/mvukov/reports/thesis_final_print.pdf) and [this paper](http://www.sciencedirect.com/science/article/pii/S0967066115300095). The chapter has quite more details on the hardware setup, while the paper has more information regarding the results (the paper has been revised, corrected and published after the defense). Unfortunately, since my funding was running out and the team was considerably decimated, there is no comparison of the performance of different controllers and estimators in the paper. That is the main reason why the paper has been written as (a yet another) application of MPC & MHE using the ACADO code-generation tool' features, then indeed to a challenging system. To my knowledge, in 2015 (and possibly quite a bit afterward) that paper reported the most challenging use-case of nonlinear MPC and MHE on a mechatronics system given the model dimensions and horizons of the controller and the estimator. Besides showing off real-world experiments and real-time capability of the implementation, we have also honestly reported certain unsatisfactory results and discussed the limitations of the approach.

## Links to some software used for experiments

* [ACADO toolkit](http://www.acadotoolkit.org) -- code generation for nonlinear MPC and MHE
* [CasADi](http://www.casadi.org) -- nonlinear optimization, code generation for symbolics
* [HPMPC](https://github.com/giaf/hpmpc) -- QP solver for linear MPC and MHE
* [OROCOS](http://www.orocos.org) -- real-time middleware
* [PyQtGraph](http://www.pyqtgraph.org/) -- real-time capable line plotter in Python (yes, in Python)
* [qpOASES](http://www.qpoases.org) -- QP solver
* [rawesome](https://github.com/ghorn/rawesome) -- modeling environment for AWE
