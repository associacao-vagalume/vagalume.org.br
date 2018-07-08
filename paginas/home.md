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
  - numero: 22
    descricao: Municípios da Amazônia Legal
  - numero: 99
    descricao: bibliotecas comunitárias
  - numero: 4000
    descricao: mediadores de leitura formados
como_colaborar:
  descricao: |-
    Colaborar com os nossos Programas é uma oportunidade de você se tornar um agente de transformação social e contribuir com o empoderamento de comunidades rurais da Amazônia.

    Doe e vamos escrever juntos novas histórias na Amazônia!
  pessoa_fisica:
    chamada: Seja um Vaga Lume
    modos:
    - Doe
    - Voluntarie-se
    - Doe seu Imposto de Renda
  pessoa_juridica:
    chamada: Faça Parte
    modos:
    - Investimento Social Direto
    - Investimento com Incentivos Fiscais
    - Serviços de assessoria
    - Licenciamento de marca
    - Marketing relacionado à causa
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
