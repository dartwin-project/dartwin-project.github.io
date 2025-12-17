---
title: "News"
layout: textlay
excerpt: "DarTwin - Foundations for the Systematic Evolution of Digital Twins."
sitemap: false
permalink: /allnews.html
---

# News

{% for article in site.data.news %}
<p markdown="0">{{ article.date }} <br> {{ article.headline | markdownify}}</p>
{% endfor %}
