---
layout: page

permalink: /blog/

title: blog
icon: <i class="fas fa-rss-square"></i>

sections:
 - Últimos posts
---

{%- if site.posts.size > 0 -%}
  <h2 class="post-list-heading">Últimos posts</h2>
  
  <ul class="post-list">
    {%- for post in site.posts -%}
    <li>
      <span class="post-meta"><i class="far fa-calendar-alt"></i> {{ post.date | date: "%b %-d, %Y" }}</span>
      <h3>
        <a class="post-link" href="{{ post.url }}">
          {{ post.title | escape }}
        </a>
      </h3>
    </li>
    {%- endfor -%}
  </ul>

  <p class="rss-subscribe">se inscreva <a href="{{ "/feed.xml" }}">via RSS</a></p>
{%- endif -%}


