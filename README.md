# gurusorocaba.com.br

ruby users group from sorocaba - sao paulo - brazil

[![Build Status](https://travis-ci.org/gurusorocaba/gurusorocaba.com.br.png?branch=master)](https://travis-ci.org/gurusorocaba/gurusorocaba.com.br) [![Dependency Status](https://gemnasium.com/gurusorocaba/gurusorocaba.com.br.png)](https://gemnasium.com/gurusorocaba/gurusorocaba.com.br) [![Code Climate](https://codeclimate.com/github/gurusorocaba/gurusorocaba.com.br.png)](https://codeclimate.com/github/gurusorocaba/gurusorocaba.com.br)

## Contributing

1. Fork it
2. Clone the repository(<code>git clone git@github.com:gurusorocaba/gurusorocaba.com.br.git</code>)
3. <code>bundle install</code> to install dependencies. 
4. Create your feature branch(<code>git checkout -b my-new-feature</code>)
5. Commit your changes(<code>git commit -m "Added some feature"</code>)
6. Push to the branch(<code>git push origin my-new-feature</code>)
7. Create new Pull request

If you have problems with database or secret_token, take the follow steps:

- <b>secret_token</b>

1. Create a file named secret_token.rb inside /config/initializers.
2. Copy this piece of code inside of it(<code>Gurusorocaba::Application.config.secret_token = ""</code>).
3. <code>rake secret</code> and copy the generated key, paste the key inside the secret_token.rb file.

- <b>bd</b>

You just have to rename the file mongoid.sample.yml to mongoid.yml.

If you still got errors on bd, take this steps

1. sudo rm /var/lib/mongodb/mongod.lock
2. mongod --repair
3. sudo service mongodb start
