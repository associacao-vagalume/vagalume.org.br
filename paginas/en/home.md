---
title: Home
permalink: "/en/"
lang: en
layout: home
---

{% include_relative _includes/home-presentation.html %}

{% include_relative _includes/home-what-we-do.html %}

{% include_relative _includes/home-mission.html
  descricao=site.data.proposito.en.descricao %}

{% include_relative _includes/home-how-to-collaborate.html %}

{% include_relative _includes/home-partners.html
  parceiros=site.data.parceiros.financiadores %}
