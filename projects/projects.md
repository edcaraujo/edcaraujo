---
layout: page

permalink: /projetos/

title: projetos

navigation:
 - ferramentas
---

Aqui você encontra algumas das ferramentas e projetos que estive envolvido nos últimos anos. Vale lembrar que projetos de pesquisa são listados apenas no meu [Curriculum Lattes](http://lattes.cnpq.br/0799632818632295). Se está procurando algum projeto ou ferramenta que não está listado abaixo, por favor entre [em contato](/#contato). 

{% assign list = site.pages 
  | where_exp: "item", "item.categories contains 'projects'"
  | where_exp: "item", "item.categories contains 'tools'"
  | sort: "duration" | reverse %}

<h2 id="ferramentas">ferramentas ({{ list.size }})</h2>

{% for item in list %}
<h3 id="{{ item.title }}">{{ item.title }}</h3> 

<p><strong>{{ item.subtitle }}</strong> {% if item.highlight %}<code class="highlight-rouge">{{ item.highlight }}</code>{% endif %}</p>

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
