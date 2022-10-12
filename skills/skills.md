---
layout: page

permalink: /habilidades/

title: habilidades

navigation:
 - todas
---

Lista histórica de **habilidades**, **papeis**, **tecnologias** e **ferramentas** presentes na minha rotina profissional. 

{% assign skills = site.data.skills 
  | sort: "title" %}

<h2 id="todas">todas ({{ skills.size }})</h2>

<p>
{% for skill in skills %}
<a href="{{ skill.url }}">{{ skill.title }}</a> {% if skill != skills.last %}•{% endif %}
{% endfor %}
</p>
