---
layout: page

permalink: /blog/tags/

title: tags

navigation:
 - todas
 - relacionados
---

<h2 id="todas">todas ({{ site.tags.size }})</h2>

<ul>
{% for tag in site.tags %}
  <li><a href="#{{ tag[0] }}">{{ tag[0] }}</a></li>
{% endfor %}
</ul>

<h2 id="relacionados">relacionados ({{ site.posts.size }})</h2>

{% for tag in site.tags %}
<h3 id="{{ tag[0] }}">{{ tag[0] }} ({{ tag[1].size }})</h3> 

<ul>
{% for post in tag[1] %}
  <li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
{% endfor %}

