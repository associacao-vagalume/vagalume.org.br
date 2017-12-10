# 6. Redireciona erros 404 para arquivo.vagalume.org.br

Data: 2017-12-09

## Status

Aceito

## Contexto

Nós mudamos o site anterior para arquivo.vagalume.org.br e criamos um novo site em vagalume.org.br. Contudo, todos os links que antes eram válidos, como `interna/398/programa-expedicao--azul` agora retornam um erro de página não encontrada (ou erro 404).

## Decisão

Vamos utilizar uma configuração no arquivo `.htaccess` para redirecionar os erros para arquivo. Estamos utilizando o código `302 - Found` para que não percamos acesso a urls como `quem-somos`, por exemplo.

## Consequências

Qualquer página que não for encontrada em `vagalume.org.br` será redirecionada para `arquivo.vagalume.org.br` com código 302. O ideal seria 301 para que os mecanismos de busca pudessem se atualizar. Uma vez que as páginas internas sejam migradas para o site novo, faz sentido mudar o redirect para 301.
