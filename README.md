# vagalume.org.br

[![Build Status](https://travis-ci.org/associacao-vagalume/vagalume.org.br.svg?branch=master)](https://travis-ci.org/associacao-vagalume/vagalume.org.br)

## Instalando ferramentas necessárias para desenvolvimento

### Instale a versão correta do Ruby

Este site usa o gerador de sites estáticos Jekyll (https://jekyllrb.com). Por isso, é preciso ter Ruby instalado na sua máquina.

Quando clonar o repositório de código na sua máquina, você vai encontrar no primeiro nível de pastas o arquivo .ruby-version. Ali você encontra a versão da linguagem Ruby que as desenvolvedoras do site estão usando (e também a versão usada no nosso pipeline :).

Recomendamos o uso de um gerenciador de versões de Ruby para facilitar usa vida. As opções mais populares são rbenv (https://github.com/rbenv/rbenv) e rvm (https://rvm.io). Siga as instruções de instalação para seu sistema operacional. Em seguida entre na pasta do projeto e execute o comando do seu gerenciador de versões de Ruby que instala a versão indicada no arquivo .ruby-version.

### Instale o Bundler

Para gerenciar as dependência do projeto usamos o Bundler (http://bundler.io). Para instalá-lo, execute `gem install bundler`.

### Instale as dependências do projeto

Depois do Bundler instalado, entre na pasta do projeto e digite o comando `bundle install` em seu terminal. Acabou!

## Rodando o site localmente

Para rodar o site localmente, entre na pasta do projeto e execute em seu terminal o comando `bundle exec jekyll serve`. Aí é só entrar no endereço http://localhost:4000 para poder acompanhar as mudanças que você fizer localmente.
