---
title: O que fazemos
permalink: "/o-que-fazemos/"
lang: pt
layout: pagina
imagem: "/assets/img/paginas/o-que-fazemos-desktop.jpg"
imagem_mobile: "/assets/img/paginas/o-que-fazemos-mobile.jpg"
description: Há mais de 15 anos nós criamos e mantemos bibliotecas em comunidades
  rurais da Amazônia como ferramenta de transformação social e de trocas culturais.
---

<div class="container">
  <h2>Conheça os nossos programas</h2>
  <div class="programas">
    <a class="botao" href="/programa-expedicao">
      <h3>Programa Expedição</h3>
    </a>
    <a class="botao" href="/programa-rede">
      <h3>Programa Rede</h3>
    </a>
  </div>
</div>

<div class="secao-fundo-escuro">
  <div class="container">
    <ul class="numeros_em_destaque">
      {% for destaque in site.data.oquefazemos.numeros_em_destaque %}
        {% assign numero = '<span class="numero">#</span>' | replace: '#', destaque.numero %}
      <li>
        <div class="texto">{{ destaque.texto | replace: '#', numero }}</div>
      </li>
      {% endfor %}
    </ul>
  </div>
</div>

