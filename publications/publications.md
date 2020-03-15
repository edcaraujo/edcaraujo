---
layout: page

permalink: /publicacoes/

title: publicações

navigation:
 - 2014
 - 2013
 - 2011
 - 2009
 - 2008
 - 2006
---

{% for n in page.navigation %}

{% assign list = site.data.publications 
  | where_exp: "item", "item.date contains n"
  | sort: "date" | reverse %}

<h2 id="{{ n }}">{{ n }} ({{ list.size }})</h2>

{% include content-documents.html %}

{% endfor %}