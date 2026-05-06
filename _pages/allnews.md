---
title: "News"
layout: textlay
excerpt: "DarTwin - Foundations for the Systematic Evolution of Digital Twins."
sitemap: false
permalink: /allnews.html
---

# News

{% for article in site.data.news %}
<h3 markdown="0">{{ article.date }} <br> {{ article.headline | markdownify}}</h3>
{% if article.image %}
<img src="{{ article.image }}" alt="News Image" style="max-width: 100%; height: auto; margin-bottom: 20px;">
{% endif %}
{% if article.maintext %}
<p>{{ article.maintext }}</p>
{% endif %}
{% endfor %}
