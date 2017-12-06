# Instruções de instalação

## Índice

* [Instale a versão correta do Ruby](#instale-a-vers%C3%A3o-correta-do-ruby)
* [Instale o Bundler](#instale-o-bundler)
* [Instale as dependências do projeto](#instale-as-depend%C3%AAncias-do-projeto)

## Instale a versão correta do Ruby

Caso seja o seu desejo desenvolver este projeto localmente, será necessário
instalar o Ruby na sua máquina.

Quando clonar o repositório de código na sua máquina, você vai encontrar no
primeiro nível de pastas o arquivo .ruby-version. Ali você encontra a versão da
linguagem Ruby que as desenvolvedoras do site estão usando (e também a versão
usada no nosso pipeline :).

Recomendamos o uso de um gerenciador de versões de Ruby para facilitar sua
vida. As opções mais populares são [chruby][chruby], [rbenv][rbenv] e
[rvm][rvm]. Siga as instruções de instalação para seu sistema operacional. Em
seguida entre na pasta do projeto e execute o comando do seu gerenciador de
versões de Ruby que instala a versão indicada no arquivo .ruby-version.

## Instale o Bundler

Para gerenciar as dependência do projeto usamos o Bundler (http://bundler.io).
Para instalá-lo, execute `gem install bundler`.

## Instale as dependências do projeto

Depois do Bundler instalado, entre na pasta do projeto e digite o comando
`bundle install` em seu terminal. Acabou!