---
layout: page

permalink: /blog/

title: blog

navigation:
 - últimas postagens
---

<h2 class="post-list-heading">últimas postagens</h2>

{%- if site.posts.size > 0 -%}
<ul class="post-list">
  {%- for post in site.posts -%}
  <li>
    <span class="post-meta">
      <span><i class="far fa-calendar-alt"></i> {% include content-date.html %}</span> • <span><i class="fas fa-user"></i> {{ page.author | default: "edcaraujo" }}</span>
    </span>
    <h3>
      <a class="post-link" href="{{ post.url }}">
        {{ post.title | escape }}
      </a>
    </h3>
  
    {{ post.excerpt }}

    <a href="{{ post.url }}">Leia mais »</a>
  </li>
  {%- endfor -%}
</ul>

<p class="rss-subscribe">se inscreva <a href="{{ "/feed.xml" }}">via RSS</a></p>
{%- endif -%}


