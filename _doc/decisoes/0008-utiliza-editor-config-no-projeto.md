# 8. Utiliza Editor Config no projeto

Data: 2017-12-21

## Status

Aceito

## Contexto

Ter um conjunto de regras sobre o estilo e formatação dos arquivos de um projeto
é importante para manter o código uniforme.

Como esperamos que muitas pessoas colaborem com esse projeto, sabemos que é
possível que o estilo do código acabe divergindo.

## Decisão

Utilizar o arquivo .editorconfig, conforme descrito em http://editorconfig.org/

## Consequências

Será necessário instalar uma extensão nos editores que não suportam esse arquivo
por padrão.

Algumas configurações alteram os arquivos no momento do salvamento, como
adicionar uma linha vazia no final do arquivo e remover identação de linhas
vazias.
