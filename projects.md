---
layout: page
title: Projects
permalink: /projects/
---

# Research Projects

Here are some of the key projects I've worked on during my research career:

{% for project in site.projects %}
  <div style="margin-bottom: 2em;">
    <h2><a href="{{ project.url }}">{{ project.title }}</a></h2>
    <p>{{ project.description }}</p>
    {% if project.status %}
      <p><strong>Status:</strong> {{ project.status }}</p>
    {% endif %}
  </div>
{% endfor %}
