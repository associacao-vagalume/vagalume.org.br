# 3. Uso do Travis para publicar o site

Data: 2017-10-30

## Status

Aceito

## Contexto

Queremos que ele seja fácil de trabalhar para as pessoas que vierem depois da gente.
Portanto, quanto mais automatizado for a publicação do site, melhor para as pessoas
que vierem a trabalhar com a Vaga Lume.

Além disso, qualidade do código é uma coisa importante para que o site sempre seja
simples de melhorar. Logo, ter testes automatizados oferece muitos ganhos para a saúde
do projeto.

## Decisão

Vamos usar o [Travis](https://travis-ci.org/) para fazer a pipeline de entrega do
site. Essa ferramenta executa passos automáticos a cada alteração, como validar o
html gerado, executar testes nas configurações do site e publicar o site no
servidor. Caso algum requisito de qualidade não seja cumprido, o site não vai para
o ar.

## Consequências

A publicação do site e a qualidade do código estão automatizados, portanto é mais
fácil para novas pessoas trabalharem no site. Contudo, esse esquema é mais complexo
do que copiar os arquivos manualmente, então há uma curva de aprendizado atrelada a
essa escolha.