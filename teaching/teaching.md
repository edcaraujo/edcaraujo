---
layout: page

permalink: /ensino/

title: ensino

navigation:
 - 2024.1
 - 2023.2
 - 2023.1
 - 2022.2
 - 2022.1
 - 2021.2
 - 2021.1
 - 2020.2
 - 2020.1
---

{% for n in page.navigation %}

{% assign list = site.data.classes 
  | where_exp: "item", "item.year contains n"
  | sort: "year" | reverse %}

<h2 id="{{ n }}">{{ n }} ({{ list.size }})</h2>

{% for item in list %}
<h3><a href="{{ item.url }}" target="_blank">{{ item.title }}</a></h3>

<p><strong>{{ item.code }}</strong><br/><small>{{ item.institution }}</small></p>

<p>
  <i class="far fa-calendar-alt"></i> <em>{{ item.schedule }}</em> • <i class="fas fa-map-marker-alt"></i> <em>{{ item.location }}</em> • <i class="fas fa-tags"></i> Tags:
  {% assign tags = item.tags | sort %}

  {% for tag in tags %}
    <a>{{ tag }}</a> {% if tag != tags.last %}•{% endif %}
  {% endfor %}
</p>
{% endfor %}

{% endfor %}
