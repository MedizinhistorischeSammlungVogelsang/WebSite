---
layout: page
title: MHS
subtitle: Medizinhistorische Sammlung Gommern-Vogelsang e.V.
use-site-title: true
---

<img src="img/mhs/klinik-vogelsang-gemaelde-kh-leue-1988.png" />

Die Medizinhistorische Sammlung Gommern-Vogelsang e.V. wurde 2002 gegründet. Die Vereinsmitglieder bestehen aus medizinischem und verwaltungstechnischem Krankenhauspersonal, ehemaligen Angestellten und Mitarbeitern, sowie interessierten Laien. Sie haben es sich zur Aufgabe gemacht die Geschichte der Medizin sowie der ehemaligen Heilstätte zu bewahren. Das Anliegen der Medizinhistorischen Sammlung besteht in der Sammlung und Präsentation von Gerätschaften, Literaturbeiträgen, Bilddokumenten und mündlichen Überlieferungen zur wechselvollen Geschichte der ehemaligen Lungenheilstätte für Frauen und Mädchen und der derzeitigen Helios Fachklinik für Rheumatologie, Anästhesie, Orthopädie und Schmerztherapie Gommern-Vogelsang.

Die Ausstellung befindet sich in den Vereinsräumen im Wirtschaftsgebäude unter dem Speisesaal des Fachkrankenhauses und ist über eine Außentreppe er erreichen.

Öffnungszeiten der Ausstellung: Montag 14.00 Uhr bis 16.00 Uhr.

Für Interessierte ist die Besichtigung auch außerhalb dieser Zeit möglich. Dazu wird um telefonische Voranmeldung der Prof. Dr. Keitel unter 0391 9960101 gebeten.

## Neuigkeiten

<div class="posts-list">
  {% for post in site.posts %}
  <article class="post-preview">
    <a href="{{ post.url | prepend: site.baseurl }}">
	  <h4 class="post-title">{{ post.title }}</h4>

	  {% if post.subtitle %}
	  <h3 class="post-subtitle">
	    {{ post.subtitle }}
	  </h3>
	  {% endif %}
    </a>

    <p class="post-meta">
      Posted on {{ post.date | date: "%B %-d, %Y" }}
    </p>

    <div class="post-entry-container">
      {% if post.image %}
      <div class="post-image">
        <a href="{{ post.url | prepend: site.baseurl }}">
          <img src="{{ post.image }}">
        </a>
      </div>
      {% endif %}
      <div class="post-entry">
        {{ post.excerpt | strip_html | xml_escape | truncatewords: site.excerpt_length }}
        {% assign excerpt_word_count = post.excerpt | number_of_words %}
        {% if post.content != post.excerpt or excerpt_word_count > site.excerpt_length %}
          <a href="{{ post.url | prepend: site.baseurl }}" class="post-read-more"
             >[lesen]</a>
        {% endif %}
      </div>
    </div>

    {% if post.tags.size > 0 %}
    <div class="blog-tags">
      Tags:
      {% if site.link-tags %}
      {% for tag in post.tags %}
      <a href="{{ site.baseurl }}/tags#{{- tag -}}">{{- tag -}}</a>
      {% endfor %}
      {% else %}
        {{ post.tags | join: ", " }}
      {% endif %}
    </div>
    {% endif %}

   </article>
  {% endfor %}
</div>
