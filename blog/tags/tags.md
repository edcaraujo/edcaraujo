---
layout: page

permalink: /blog/tags/

title: tags
icon: <i class="fas fa-tags"></i>

sections:
 - Todas
 - Detalhes
---

## Todas

<ul>
{% for tag in site.tags %}
<li><a href="#{{ tag[0] }}">{{ tag[0] }}</a></li>
{% endfor %}
</ul>

## Detalhes

{% for tag in site.tags %}
### {{ tag[0] }}

<ul>
{% for post in tag[1] %}
<li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
{% endfor %}

