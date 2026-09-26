---
layout: page
title: Projects
permalink: /projects/
description: Projects by Milan Vukov, including rules_ros2 (Bazel rules for ROS 2), the ACADO Toolkit, and experimental validations of nonlinear MPC and MHE.
---

{% assign projects = site.projects | sort: "order", "last" %}
{% for project in projects %}
  <div style="margin-bottom: 2em;">
    <h2><a href="{{ project.url }}">{{ project.title }}</a></h2>
    <p>{{ project.description }}</p>
    {% if project.status %}
      <p><strong>Status:</strong> {{ project.status }}</p>
    {% endif %}
  </div>
{% endfor %}
