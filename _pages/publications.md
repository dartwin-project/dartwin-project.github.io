---
title: "DarTwin Project - Publications"
layout: gridlay
excerpt: "DarTwin Project -- Publications."
sitemap: false
permalink: /publications/
---


# Publications

{% assign number_printed = 0 %}
{% for publi in site.data.publist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if publi.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div markdown="0" class="col-12 col-md-6 mb-4 pubcard">
  <div class="card h-100">
    <div class="card-body">
      <p class="card-title pubtit">{{ publi.title }}</p>
      <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-fluid float-start me-3 mb-2" style="width:33%;" alt="{{ publi.title }}" />
      <p class="card-text">{{ publi.description }}</p>
      <p class="card-text"><em>{{ publi.authors }}</em></p>
      <p class="card-text"><strong><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></strong></p>
      {% if publi.news1 %}
      <p class="text-danger"><strong>{{ publi.news1 }}</strong></p>
      {% endif %}
      {% if publi.news2 %}
      <p class="card-text">{{ publi.news2 }}</p>
      {% endif %}
    </div>
  </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}


## Full List of publications

{% for publi in site.data.publist %}

  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br /><a href="{{ publi.link.url }}">{{ publi.link.display }}</a>

{% endfor %}
