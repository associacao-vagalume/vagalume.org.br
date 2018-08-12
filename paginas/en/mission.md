---
title: Mission
lang: en
permalink: "/en/mission/"
layout: pagina
imagem: "/assets/img/paginas/proposito.jpg"
imagem_mobile: "/assets/img/paginas/proposito.jpg"
description: Get to know our project’s purpose, our values and understand the eight principles that lead us to pursue our main mission.
ajuda: Para alterar o propósito e os princípios, mude o arquivo _data/principios.yml
---

{::options parse_block_html="true" /}

<div class="container pagina-proposito">
  <h2>The challenge</h2>

  Our work at Vaga Lume takes place in the Legal Amazon, a very important region of Brazil: it covers 61% of our territory and is the home of 24 million Brazilians. Besides, it occupies ⅕ of the planet's forest reserve and provides ⅕ of the available fresh water on Earth.

  But, at the same time, the Legal Amazon has a low Human Development Index. For example, Brazil's HDI is 0.754, while in the Northern Region the HDI is around 0.667. On top of that, the ten lowest HDI of the country are all municipalities within the Northern Region¹, and 20% of its population is functional illiterate².

  Source: Atlas of Human Development in Brazil (PNUD - 2013).
  {: .fonte }

  [^1]: Among the 5.565 municipalities present in the Atlas of Human Development in Brazil in 2013, the 10 worst are all in the Northern Region.

  [^2]: Fonte: PNAD 2015 - Brazil's rate is 17%.

</div>

{::options parse_block_html="false" /}

{% include_relative _includes/mission.html proposito=site.data.proposito.en.descricao %}
{% include_relative _includes/principles.html principios=site.data.proposito.en.principios %}
