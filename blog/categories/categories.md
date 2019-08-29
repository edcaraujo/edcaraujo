---
layout: page

permalink: /blog/categorias/

title: categorias

navigation:
 - todas
 - relacionados
---

<h2 id="todas">todas ({{ site.tags.size }})</h2>

<ul>
{% for category in site.categories %}
  {% if category[0] != "blog" %}
  <li><a href="#{{ category[0] }}">{{ category[0] }}</a></li>
  {% endif %}
{% endfor %}
</ul>

<h2 id="relacionados">relacionados ({{ site.posts.size }})</h2>

{% for category in site.categories %}
{% if category[0] != "blog" %}
<h3 id="{{ category[0] }}">{{ category[0] }} ({{ category[1].size }})</h3> 

<ul>
{% for post in category[1] %}
  <li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
{% endif %}
{% endfor %}

