---
title: Home
permalink: "/"
layout: home
o_que_fazemos:
  descricao: Por meio da formação de mediadores de leitura e criação de bibliotecas
    comunitárias para crianças da Amazônia, promovemos intercâmbios culturais com
    a leitura, a escrita e a oralidade para ajudar a formar pessoas mais engajadas
    na transformação de suas realidades.
  estatisticas:
  - numero: 23
    descricao: Municípios da Amazônia Legal
  - numero: 149
    descricao: bibliotecas comunitárias
  - numero: 3.633
    descricao: mediadores de leitura formados
como_colaborar:
  descricao: Você pode ajudar na criação de bibliotecas em comunidades rurais na Amazônia
    e, com isso, incentivar a gestão comunitária e a valorização da cultura local!
  pessoa_fisica:
    chamada: Seja um Vaga Lume
    modos:
    - Lei Rouanet
    - Voluntariado
    - Compra de produtos Vaga Lume
    - Doação recorrente
  pessoa_juridica:
    chamada: Faça Parte
    modos:
    - Lei Rouanet
    - Parceria
    - Doação para projetos
---

{% include_relative _includes/home-apresentacao.html
  video_id=site.home_video_id
  video_titulo=site.home_video_titulo
  url_doar = site.url_doar %}

{% include_relative _includes/home-proposito.html
  descricao=site.data.proposito.descricao %}

{% include_relative _includes/home-o-que-fazemos.html %}

{% include_relative _includes/home-como-colaborar.html
  url_fisica=site.url_doar
  url_juridica="http://arquivo.vagalume.org.br/interna/42/doe-empresas" %}

{% include_relative _includes/home-parceiros.html
  parceiros=site.data.parceiros.financiadores %}
