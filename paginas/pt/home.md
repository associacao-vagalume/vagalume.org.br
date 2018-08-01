---
title: Home
permalink: "/"
layout: home
---

{% include_relative _includes/home-apresentacao.html
  video_id=site.home_video_id
  video_titulo=site.home_video_titulo %}

{% include_relative _includes/home-proposito.html
  descricao=site.data.proposito.descricao %}

{% include_relative _includes/home-o-que-fazemos.html %}

{% include_relative _includes/home-como-colaborar.html
  url_fisica="/doe"
  url_juridica="http://arquivo.vagalume.org.br/interna/42/doe-empresas" %}

{% include_relative _includes/home-parceiros.html
  parceiros=site.data.parceiros.financiadores %}
