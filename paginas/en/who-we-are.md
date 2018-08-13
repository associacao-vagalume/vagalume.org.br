---
title: Who we are
permalink: "/en/who-we-are/"
lang: en
layout: pagina
imagem: "/assets/img/paginas/quem-somos-desktop.jpg"
imagem_mobile: "/assets/img/paginas/quem-somos-mobile.jpg"
description: Get to know who Vaga Lume’s team members are and the people that take
  part on our Assembly of Associates, our Financial and Consulting Board.
---

<div class="quem-somos secao-fundo-escuro">
  <div class="container">
    <h2>Team</h2>
    <ol>
      {% for membro in site.data.equipe.equipe %}
      <li>{{ membro }}</li>
      {% endfor %}
    </ol>
    <h2>Board ({{ site.data.equipe.conselho.mandato }})</h2>
    <h3>Financial Board</h3>
    <ol>
      {% for membro in site.data.equipe.conselho.conselho_fiscal %}
        <li>{{ membro }}</li>
      {% endfor %}
    </ol>
    <h3>Consulting Board</h3>
    <ol>
      {% for membro in site.data.equipe.conselho.conselho_consultivo %}
        <li>{{ membro }}</li>
      {% endfor %}
    </ol>
    <h2>Assembly of Associates</h2>
    <ol>
      {% for associado in site.data.equipe.associados %}
        <li>{{ associado }}</li>
      {% endfor %}
    </ol>
  </div>
</div>
