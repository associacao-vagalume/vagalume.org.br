# 4. Usar arquivos de configuração para itens da página

Data: 2017-11-27

## Status

Aceito

## Contexto

Existem itens na página que são alterados com mais frequência que outros, como
a lista de parceiros e itens de menu. Temos a opção de deixar todos esses itens
diretamente definidos no código html, contudo tem a desvantagem de ser mais fácil
errar na hora de adicionar ou remover itens.

## Decisão

Utilizar o arquivo `_config.yml` e os arquivos no diretório `_data` para guardar
informações que podem ser alteradas, como os itens do menu, os parceiros, o id
do Google Analytics, etc.

## Consequências

Há um passo a mais para entender como o site está montado, já que as informações
não moram só no HTML. A vantagem é que as informações agora são estruturadas,
tornando mais fácil editar os itens que aparecem na tela.
