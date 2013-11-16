# gurusorocaba.com.br

ruby users group from sorocaba - sao paulo - brazil

[![Build Status](https://travis-ci.org/gurusorocaba/gurusorocaba.com.br.png?branch=master)](https://travis-ci.org/gurusorocaba/gurusorocaba.com.br) [![Dependency Status](https://gemnasium.com/gurusorocaba/gurusorocaba.com.br.png)](https://gemnasium.com/gurusorocaba/gurusorocaba.com.br) [![Code Climate](https://codeclimate.com/github/gurusorocaba/gurusorocaba.com.br.png)](https://codeclimate.com/github/gurusorocaba/gurusorocaba.com.br)

# Quer contribuir com o site do GURU?

- Dê um <b>fork</b>
- Clone o repositório: <code>git clone git@github.com:gurusorocaba/gurusorocaba.com.br.git</code>
- <code>bundle install</code> para configurar as dependências.
- Antes de rodar o server é preciso configurar o bd e o secret_token:

- bd

> Para configurar o bd renomeie o arquivo mongoid.sample.yml para mongoid.yml.
> Se der algum erro, tente executar os seguintes comandos:
> sudo rm /var/lib/mongodb/mongod.lock
> mongod --repair
> sudo service mongodb start

- secret_token

> É necessario um secret_token para a execução, primeiro crie um arquivo com o nome
> secret_token.rb dentro de /config/initializers, dentro desse arquivo coloque esse
> código <code>Gurusorocaba::Application.config.secret_token = ""</code>, vá ao terminal
> e digite <code>rake secret</code>, esse comando irá gerar uma chave, insira essa chave
> dentro das "" no arquivo secret_token.rb.

Após essas configurações sua aplicação ja deve estar pronta para rodar, faça as mudanças
que achar necessárias e mande um <b>pull request</b> :)