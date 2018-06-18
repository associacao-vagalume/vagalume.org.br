# vagalume.org.br

[![Build Status](https://travis-ci.org/associacao-vagalume/vagalume.org.br.svg?branch=master)][travis]

## Índice

* [Introdução](#introdu%C3%A7%C3%A3o)
* [Apresentação rápida sobre o repositório](#apresenta%C3%A7%C3%A3o-r%C3%A1pida-sobre-o-reposit%C3%B3rio)
* [Instalando ferramentas necessárias para desenvolvimento](#instalando-ferramentas-necess%C3%A1rias-para-desenvolvimento)
* [Decisões de arquitetura](#decis%C3%B5es-de-arquitetura)
* [Executando os testes](#executando-os-testes)
* [Rodando o site localmente](#rodando-o-site-localmente)

## Introdução

Este repositório contém o código fonte da página da [Associação Vagalume][vagalume].

O site é construido com o gerador de sites estáticos
[Jekyll][jekyll], que transforma arquivos de configuração e
templates html em uma página web puramente composta por html e css.

Estamos utilizando o Travis para validar a página gerada (veja ícone no topo
deste README) e para instalar o site automaticamente em [staging.vagalume.org.br][staging].

## Apresentação rápida sobre o repositório

Nessa seção será apresentada uma visão por cima de como o repositório está
estruturado e onde estão as informações relevantes para contribuir. Veja a
[documentação do Jekyll][jekyll-doc] para mais detalhes.

O desenvolvimento da página deve acontecer principalmente nos arquivos e
diretórios listados abaixo:

    .
    ├── _assets/         - arquivos sass e javascript
    ├── _data/           - onde estão definidos os itens de menu, parceiros, etc
    ├── _includes/       - trechos comuns da página, como cabeçalho e rodapé
    ├── _layouts/        - os diferentes layouts das páginas, para template
    ├── assets/          - imagens
    ├── _config.yml      - configuração do site
    ├── .htaccess        - configuração para o provedor web
    ├── android-*.png    - favicon para android
    ├── apple-*.png      - favicon para iOS
    ├── browserconfig.xml - configuração de favicon para Windows
    ├── favicon*.png     - favicons tradicionais
    ├── favicon.ico     - favicon tradicional
    ├── manifest.json    - configuração de favicon para android
    ├── mstile*.png      - favicons para Windows
    ├── safari-pinned-tab.svg - favicon para Safari
    └── proposito.html   - o html da página de propósito
    └── index.html       - o html da página principal

Os outros arquivos do repositório estão aqui para automatizar a instalação
para desenvolvimento e para validar e instalar o site no provedor web.

    .
    ├── _doc/            - documentação
    ├── _script/         - scripts de automação da pipeline
    ├── _spec/           - testes escritos para RSpec
    ├── _testes/         - testes de aceitação usando smoke.sh
    ├── .adr-dir         - configuração da ferramenta adr-tool
    ├── .gitignore       - arquivos que são ignorados neste repositório
    ├── .master.env      - variáveis de ambiente para o travis
    ├── .rspec           - configuração da ferramenta de testes RSpec
    ├── .ruby-version    - a versão do ruby
    ├── .travis.yml      - configuração da pipeline
    ├── deploy_rsa.enc   - chave secreta para deploy (instalação nos servidores do provedor web)
    ├── deploy_rsa_pedromanoel.enc - chave secreta para deploy no fork feito por pedromanoel
    ├── Gemfile          - dependências do projeto
    ├── Gemfile.lock     - versões fixadas das dependências
    ├── Rakefile         - script Rake para construir site e rodar testes
    └── README.md        - este README

## Instalando ferramentas necessárias para desenvolvimento

Siga as instruções descritas em [INSTALL.md](INSTALL.md)

## Decisões de arquitetura

Saiba mais sobre as decisões de arquitetura tomadas neste projeto em [_doc/decisoes/README.md](_doc/decisoes/README.md)

## Executando os testes

O site possui uma série de testes para garantir que o html gerado está correto.
Para executar os testes de corretude, rode `bundle exec rake test`. Existe um
outro teste mais demorado, que verifica se os links da página apontam para
páginas existentes. Para rodá-los, execute `bundle exec rake integration`.

## Rodando o site localmente

Para rodar o site localmente, entre na pasta do projeto e execute em seu
terminal o comando `bundle exec rake preview`. Aí é só entrar no endereço
`http://localhost:4000` para poder acompanhar as mudanças que você fizer
localmente.

## Rodando a pipeline localmente

Com o uso do docker, é possível executar os passos da pipeline no seu próprio
computador. Estamos utilizando a imagem pevangelista/apache-rsync para criar
o servidor onde o site será instalado.

É necessário criar um arquivo chamado `.local.env` com os seguintes dados:

    export PORT=2222
    export SERVER=ssh_user@localhost
    export SSH_PUBKEY="INSIRA AQUI SUA CHAVE PÚBLICA"
    export TRAVIS_BRANCH=local
    export TRAVIS_BUILD_DIR="."
    export TRAVIS_PULL_REQUEST=false

Se você adicionar uma chave pública SSH neste arquivo, o deploy não irá precisar
de senha. Essa chave pode ser encontrada em `~/.ssh/id_rsa.pub`. Se não existir,
será necessário criá-la com o comando
`ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

Para executar o script, rode o comando abaixo:

    ./_script/ci-script

Este script realiza os seguintes passos:

1. Estágio de commit: gera o site e roda os testes
2. Faz deploy do site gerado no servidor local
3. Roda os testes de aceitação
4. Versiona o site e salva em `staging`

O último passo não será rodado localmente.

[chruby]: https://github.com/postmodern/chruby
[jekyll]: https://jekyllrb.com
[jekyll-doc]: http://jekyll-brasil.github.io/
[rbenv]: https://github.com/rbenv/rbenv
[rvm]: https://rvm.io
[staging]: https://www.staging.vagalume.org.br
[travis]: https://travis-ci.org/associacao-vagalume/vagalume.org.br
[vagalume]: https://www.vagalume.org.br
