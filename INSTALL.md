# Instruções de instalação

## Índice

* [Instale o plugin para o EditorConfig](#instale-o-plugin-para-o-editorconfig)
*-[Instale a versão correta do Ruby](#instale-a-vers%C3%A3o-correta-do-ruby)
* [Instale o Bundler](#instale-o-bundler)
* [Instale as dependências do projeto](#instale-as-depend%C3%AAncias-do-projeto)

## Instale o plugin para o EditorConfig

Estamos utilizando o arquivo [.editorconfig](http://editorconfig.org/) neste
projeto para definir diretrizes básicas para o código. Para ver se seu editor
suporta esta configuração, acesse o [site](http://editorconfig.org/#download)
do EditorConfig. Lá você encontrará instruções de onde encontrar as extensões
necessárias.

## Instale a versão correta do Ruby

Caso seja o seu desejo desenvolver este projeto localmente, será necessário
instalar o Ruby na sua máquina.

Quando clonar o repositório de código na sua máquina, você vai encontrar no
primeiro nível de pastas o arquivo .ruby-version. Ali você encontra a versão da
linguagem Ruby que as desenvolvedoras do site estão usando (e também a versão
usada no nosso pipeline :).

Recomendamos o uso de um gerenciador de versões de Ruby para facilitar sua
vida. As opções mais populares são [chruby][chruby], [rbenv][rbenv] e
[rvm][rvm]. Eu pessoalmente prefiro o chruby por ser menos intrusivo.

Siga as instruções de instalação do gerenciador de sua preferência.

Para instalar a versão do projeto do ruby, execute o comando abaixo:

```bash
ruby-install ruby $(cat .ruby-version)
```

## Instale o Bundler

Para gerenciar as dependência do projeto usamos o [Bundler][bundler].
Para instalá-lo, execute

```bash
gem install bundler
```

## Instale as dependências do projeto

Depois do Bundler instalado, entre na pasta do projeto e digite o comando
`bundle install` em seu terminal. Acabou!

[chruby]: https://github.com/postmodern/chruby/blob/master/README.md
[rbenv]: https://github.com/rbenv/rbenv/blob/master/README.md
[rvm]: https://rvm.io
[bundler]: http://bundler.io