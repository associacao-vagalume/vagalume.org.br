---
title: Programa Expedição
permalink: /programa-expedicao/
layout: pagina-markdown
imagem: '/assets/img/paginas/programa-expedicao-desktop.jpg'
imagem_mobile: '/assets/img/paginas/programa-expedicao-mobile.jpg'
description: Saiba mais sobre o Programa Expedição, cujo principal objetivos é
  promover o acesso à leitura em comunidades rurais da Amazônia.
galeria:
  - img_src: /assets/img/expedicao/aldeia-campina-cruzeiro-do-sul-ac-rayssa-coe.jpg
    legenda: Aldeia Campina - Cruzeiro do Sul, AC (Rayssa Coe)

  - img_src: /assets/img/expedicao/alter-do-chao-santarem-rayssa-coe.jpg
    legenda: Alter do Chão - Santarém, PA (Rayssa Coe)

  - img_src: /assets/img/expedicao/castanhal-pa.jpg
    legenda: Castanhal, PA

  - img_src: /assets/img/expedicao/com-marajo-tefe-am-enymiranda.jpg
    legenda: Comunidade Marajó - Tefé, AM (Eny Miranda)

  - img_src: /assets/img/expedicao/oriximina-pa-rayssa-coe.jpg
    legenda: Oriximiná, PA (Rayssa Coe)

  - img_src: /assets/img/expedicao/sao-sebastiao-portel-pa-emilie-rivas.jpg
    legenda: São Sebastião - Portel, PA (Emilie Rivas)
---

Com esse programa promovemos o acesso à leitura em comunidades rurais da Amazônia.
Fazemos isso doando livros, estantes e esteiras para a comunidade montar a sua própria
biblioteca, capacitamos mães, pais, educadores - e quem mais se interessar - como
mediadores de leitura, fazendo com que os livros saiam das prateleiras e cheguem até as
crianças jovens e adultos.
E também incentivamos a gestão comunitária, afinal, essa biblioteca é da comunidade!
E para que tudo isso faça ainda mais sentido para as comunidades, valorizamos a cultura
local incentivando e capacitando a comunidade a escrever livros artesanais com as suas
próprias histórias.

<div class="galeria" id="galeria">
{% for foto in page.galeria %}
  <figure>
    <img src="{{ foto.img_src }}" alt="{{ foto.legenda }}">
    <figcaption>
      {{ foto.legenda }}
    </figcaption>
  </figure>
{% endfor %}
  <a href="" class="slidesjs-previous slidesjs-navigation">&lt;</a>
  <a href="" class="slidesjs-next slidesjs-navigation">&gt;</a>
</div>

Desse jeito trabalhamos para formar leitores, pois acreditamos que a leitura abre novas portas e oferece muitas possibilidades de caminhos para crianças e jovens da Amazônia.
