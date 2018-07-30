---
title: Propósito
permalink: "/proposito/"
layout: pagina
imagem: "/assets/img/paginas/proposito.jpg"
imagem_mobile: "/assets/img/paginas/proposito.jpg"
description: Conheça o propósito do nosso projeto, nossos valores e entenda os oito
  princípios que seguimos para atingir nossa principal missão.
ajuda: Para alterar o propósito e os princípios, mude o arquivo _data/principios.yml
---

{::options parse_block_html="true" /}

<div class="container pagina-proposito">
  <h2>O Desafio</h2>

  Nós da Vaga Lume trabalhamos na Amazônia Legal brasileira, uma região muito importante para o Brasil, pois cobre 61% do nosso território e é o lar de 24 milhões de brasileiros. Além disso, ocupa ⅕ da reserva florestal do planeta e provê ⅕ da água doce disponível na Terra.

  Mas, ao mesmo tempo, a Amazônia Legal tem baixos Índices de Desenvolvimento Humano. Por exemplo, o IDH do Brasil é 0,754 e o IDH da Região Norte é 0,667. E mais, os dez municípios com os piores IDH estão na região Norte[^1] e 20% de sua população é analfabeta funcional[^2].

  Fonte: Atlas de Desenvolvimento Humano do Brasil (PNUD - 2013).
  {: .fonte }

  [^1]: Dentre os 5.565 municípios presentes no Atlas do Desenvolvimento Humano no
        Brasil, em 2013, os 10 piores estão na região Norte.

  [^2]: Fonte: PNAD 2015’ Média Brasil é 17%.

</div>

{::options parse_block_html="false" /}

{% include_relative _includes/proposito.html proposito=site.data.proposito.descricao %}
{% include_relative _includes/principios.html principios=site.data.proposito.principios %}
