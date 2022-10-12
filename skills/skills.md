---
layout: page

permalink: /habilidades/

title: habilidades

navigation:
 - todas
---

Lista histórica de **habilidades**, **papeis**, **tecnologias**, **ferramentas** e **projetos** presentes na minha rotina profissional. 

{% assign skills = site.data.skills 
  | sort: "title" %}

<h2 id="todas">todas</h2>

<p>
{% for skill in skills %}
<a href="{{ skill.url }}">{{ skill.title }}</a> {% if skill != skills.last %}•{% endif %}
{% endfor %}
</p>
