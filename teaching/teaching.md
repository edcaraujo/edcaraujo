---
layout: page

permalink: /ensino/

title: ensino

navigation:
 - 2020.2
 - 2020.1
---

{% for n in page.navigation %}

{% assign list = site.data.classes 
  | where_exp: "item", "item.year contains n"
  | sort: "year" | reverse %}

<h2 id="{{ n }}">{{ n }} ({{ list.size }})</h2>

{% for item in list %}
<h3>{{ item.title }}</h3> 

<p><strong>{{ item.institution }}</strong></p>

<p>
  <i class="far fa-calendar-alt"></i> <em>{{ item.schedule }}</em> • <i class="fas fa-map-marker-alt"></i> <em>{{ item.location }}</em> • <i class="fas fa-tags"></i> Tags:
  {% assign tags = item.tags | sort %}

  {% for tag in tags %}
    <a>{{ tag }}</a> {% if tag != tags.last %}•{% endif %}
  {% endfor %}
</p>

<i class="fas fa-link"></i>  [Mais detalhes…]({{ item.url }})
{% endfor %}

{% endfor %}
