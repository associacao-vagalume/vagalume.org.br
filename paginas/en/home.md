---
title: Home
permalink: "/en/"
layout: home
o_que_fazemos:
  descricao: Through the qualification of reading mediators and the creation of community libraries for children in the Amazon, we promote cultural interchanges using reading, writing and orality to help shape people more engaged with the transformation of their realities.
  estatisticas:
  - numero: 22
    descricao: municipalities from the Legal Amazon
  - numero: 99
    descricao: community libraries
  - numero: 4000
    descricao: reading mediators qualified
como_colaborar:
  descricao: |-
    Collaborating with our Programs is an opportunity of becoming an agent of social transformation and contributing with the empowerment of rural communities of the Amazon.

    Donate and contribute to many stories in the Amazon!
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

{% include_relative _includes/home-presentation.html
  video_id=site.home.video.id.en
  video_titulo=site.home.video.titulo.en %}

{% include_relative _includes/home-what-we-do.html %}

{% include_relative _includes/home-purpose.html
  descricao=site.data.proposito.en.descricao %}


{% include_relative _includes/home-como-colaborar.html
  url_fisica="/doe"
  url_juridica="http://arquivo.vagalume.org.br/interna/42/doe-empresas" %}

{% include_relative _includes/home-parceiros.html
  parceiros=site.data.parceiros.financiadores %}
