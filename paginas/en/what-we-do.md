---
title: What we do
permalink: "/en/what-we-do/"
lang: en
layout: pagina
imagem: "/assets/img/paginas/o-que-fazemos-desktop.jpg"
imagem_mobile: "/assets/img/paginas/o-que-fazemos-mobile.jpg"
description: For more than 15 years, we create and maintain community libraries on
  Amazon rural area as a social transformation and cultural exchange tool.
---

<div class="container">
  <h2>Get to know our programs</h2>
  <div class="programas">
    <a class="botao" href="/en/expedition-program">
      <h3>Expedition Program</h3>
    </a>
    <a class="botao" href="/en/net-program">
      <h3>Net Program</h3>
    </a>
  </div>
</div>

<div class="secao-fundo-escuro">
  <div class="container">
    <ul class="numeros_em_destaque">
      {% for destaque in site.data.oquefazemos.en.numeros_em_destaque %}
        {% assign numero = '<span class="numero">#</span>' | replace: '#', destaque.numero %}
      <li>
        <div class="texto">{{ destaque.texto | replace: '#', numero }}</div>
      </li>
      {% endfor %}
    </ul>
  </div>
</div>

