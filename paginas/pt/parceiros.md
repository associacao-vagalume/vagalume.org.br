---
title: Parceiros
lang: pt
permalink: "/parceiros/"
layout: pagina-markdown
imagem: "/assets/img/paginas/parceiros-desktop.jpg"
imagem_mobile: "/assets/img/paginas/parceiros-mobile.jpg"
description: Descubra quem são as empresas que, assim como nós, acreditam no empoderamento
  das crianças da Amazônia e apoiam essa causa.
---

[comment]: # Os parceiros estão definidos no arquivo _data/parceiros.yml

{% include_relative _includes/lista-parceiros.html
  financiadores=site.data.parceiros.financiadores
  apoiadores=site.data.parceiros.apoiadores
%}