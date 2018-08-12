---
title: Partners
lang: en
permalink: "/en/partners/"
layout: pagina-markdown
imagem: "/assets/img/paginas/parceiros-desktop.jpg"
imagem_mobile: "/assets/img/paginas/parceiros-mobile.jpg"
description: Find out who are the companies which also believe on the Amazon children’s empowerment and support this cause.
---

[comment]: # Os parceiros estão definidos no arquivo _data/parceiros.yml

{% include_relative _includes/partners-list.html
  financiadores=site.data.parceiros.financiadores
  apoiadores=site.data.parceiros.apoiadores
%}