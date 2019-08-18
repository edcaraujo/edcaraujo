---
layout: page

permalink: /blog/categorias/

title: categorias
icon: <i class="fas fa-tags"></i>

sections:
 - Todas
 - Detalhes
---

## Todas

<ul>
{% for category in site.categories %}
{% if category[0] != "blog" %}
<li><a href="#{{ category[0] }}">{{ category[0] }}</a></li>
{% endif %}
{% endfor %}
</ul>

## Detalhes

{% for category in site.categories %}
{% if category[0] != "blog" %}
### {{ category[0] }}

<ul>
{% for post in category[1] %}
<li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
{% endif %}
{% endfor %}

