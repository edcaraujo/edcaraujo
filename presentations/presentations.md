---
layout: page

permalink: /apresentacoes/

title: apresentações

navigation:
 - 2019
 - 2018
 - 2017
 - 2016
 - 2015
 - 2014
 - 2013
 - 2012
 - 2011
---

{% for n in page.navigation %}

{% assign list = site.data.presentations 
  | where_exp: "item", "item.date contains n"
  | sort: "date" | reverse %}

<h2 id="{{ n }}">{{ n }} ({{ list.size }})</h2>

{% include content-data.html %}

{% endfor %}