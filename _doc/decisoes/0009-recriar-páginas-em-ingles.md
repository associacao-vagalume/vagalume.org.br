# 9. Recriar páginas em inglês

Data: 2018-07-31

## Status

Aceito

## Contexto

Precisamos ter o site em inglês pois haverá uma campanha internacional
da Vaga Lume.

Como temos poucos voluntários trabalhando no site, precisamos de uma solução que
seja simples de implementar.

Foram consideradas as seguintes alternativas:

- Instalar um plugin de internacionalização do Jekyll
- Duplicar a estrutura do site em inglês

## Decisão

Duplicar toda a estrutura do site em inglês dentro da URL /en/

## Consequências

O site pode ser recriado facilmente, bastando duplicar as páginas e mudar os
permalinks.

Contudo, os textos a serem traduzidos estão espalhados, além da estrutura do site
precisar ser mudada em dois lugares em caso de alteração no conteúdo.

Como a quantidade de conteúdo não é tão grande, acreditamos que essa solução é bastante
adequada.
