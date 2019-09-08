---
layout: page

permalink: /projetos/

title: projetos

navigation:
 - ferramentas
---

Aqui você encontra algumas das ferramentas e projetos que estive envolvido nos últimos anos. Porém, projetos de pesquisa são listados apenas no meu [Curriculum Lattes](http://lattes.cnpq.br/0799632818632295). Se você está procurando por outros projetos que não estão listados abaixo, por favor entre [em contato](/#contato). 

{% for n in page.navigation %}
 
{% assign list = site.pages 
  | where_exp: "item", "item.categories contains 'projetos'"
  | where_exp: "item", "item.categories contains n"
  | sort: "duration" | reverse %}

<h2 id="{{ n }}">{{ n }} ({{ list.size }})</h2>

{% for item in list %}
<h3 id="{{ item.title }}">{{ item.title }}</h3>

<p><strong>{{ item.subtitle }}</strong></p>

<p>
  <i class="far fa-calendar-alt"></i> <em>{{ item.duration }}</em> • <i class="fas fa-tags"></i> Tags:
  {% assign tags = item.tags | sort %}

  {% for tag in tags %}
    <a>{{ tag }}</a> {% if tag != tags.last %}•{% endif %}
  {% endfor %}
</p>

<p>{{ item.excerpt }}</p>

<i class="fas fa-link"></i>  [Mais detalhes…](/projetos/{{ item.title }}/)
{% endfor %}

{% endfor %}
