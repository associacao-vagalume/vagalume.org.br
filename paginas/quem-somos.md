---
title: Quem Somos
permalink: "/quem-somos/"
layout: pagina
imagem: "/assets/img/paginas/quem-somos-desktop.jpg"
imagem_mobile: "/assets/img/paginas/quem-somos-mobile.jpg"
description: Saiba "quem é quem" na equipe Vaga Lume e conheça as pessoas que fazem
  parte da Assembléia de Associados, do Conselho Consultivo, do Conselho Fiscal, do
  Conselho Literário e da Direção da associação.
---

<div class="quem-somos secao-fundo-escuro">
  <div class="container">
    <h2>Equipe</h2>
    <ol>
      {% for membro in site.data.equipe.equipe %}
      <li>{{ membro }}</li>
      {% endfor %}
    </ol>
    <h2>Conselho ({{ site.data.equipe.conselho.mandato }})</h2>
    <h3>Conselho Fiscal</h3>
    <ol>
      {% for membro in site.data.equipe.conselho.conselho_fiscal %}
        <li>{{ membro }}</li>
      {% endfor %}
    </ol>
    <h3>Conselho Consultivo</h3>
    <ol>
      {% for membro in site.data.equipe.conselho.conselho_consultivo %}
        <li>{{ membro }}</li>
      {% endfor %}
    </ol>
    <h2>Assembleia de Associados</h2>
    <ol>
      {% for associado in site.data.equipe.associados %}
        <li>{{ associado }}</li>
      {% endfor %}
    </ol>
  </div>
</div>
