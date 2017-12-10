# 5. utiliza o plugin jekyll-assets

Data: 2017-12-09

## Status

Aceito

## Contexto

Os assets do projeto estão sendo definidos diretamente no html pelo nome. Isso
te torna um problema quando o css/javascript são alterados mas o browser tem uma
versão anterior em cache. A página fica quebrada nesses casos, e é necessário
fazer um hard refresh.

Nem todo usuário sabe como fazer esse tipo de refresh, e a página vai aparecer
quebrada para essas pessoas

## Decisão

Utilizar o plugin jekyll-assets para gerenciar o css e o javascript da página.
Ele automaticamente adiciona um hash do conteúdo no nome do arquivo, que é um
mecanismo conhecido como cache-busting.

O blog [Unleash Mr.Hyde! Introduction of Jekyll-Assets.](http://ixti.net/software/2012/12/30/unleash-mr-hyde-introduction-of-jekyll-assets.html)
mostra um exemplo de como utilizar o plugin jekyll-assets.

## Consequências

Os arquivos css e javascript são adicionados na página com as tags {% css
nome-do-css-sem-extensão %} e {% javascript nome-do-js-sem-extensão %}. Isso não
é tão óbvio quanto adicionar diretamente, e é uma coisa a mais para aprender
para desenvolver a página.

Acreditamos que vale a pena pois a experiência do usuário não fica prejudicada
quando os estilos forem alterados.
