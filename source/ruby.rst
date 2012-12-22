RubyとRails
===========

railsユーザアカウントを作成する
-------------------------------

Railsのアプリケーションをデプロイする場所として，railsアカウントを作成してそのhomeを利用する．このhomeは，6770の設定をし，railsグループに所属するユーザからの参照・更新を許可する．

- railsユーザアカウントの設定

  .. code-block:: bash

    $ sudo /usr/sbin/useradd rails
    $ sudo chmod 6770 /home/rails/

- railsグループに，自分のユーザアカウントとapacheアカウントを追加する

  .. code-block:: bash

    $ sudo /usr/sbin/vigr

Ruby on Rails
-------------

- Ruby 1.8.7のインストール（開発用パッケージも含む）

  .. code-block:: bash

    $ sudo yum -y install ruby ruby-devel
    $ ruby -v   # <- check
  
- Gem 1.8.7のインストール

  .. code-block:: bash

    $ sudo yum -y install rubygems
    $ gem -v   # <- check
  
- `Rails 3.1 <http://rubyonrails.org/download>`_ のインストール

  .. code-block:: bash

    $ sudo gem installl rails
    $ rails -v    # <- check

- `Capistrano <https://github.com/capistrano/capistrano#readme>`_ のインストール

  .. code-block:: bash

    $ sudo gem install capistrano

- `Phusion Passenger <http://www.modrails.com/install.html>`_ のインストール

  .. code-block:: bash

    $ sudo gem install passenger

- Passengerをapacheと接続するためのモジュールをコンパイルする

  .. code-block:: bash

    $ sudo yum -y install gcc-c++ curl-devel openssl-devel zlib-devel httpd-devel apr-devel apr-util-devel
    $ sudo passenger-install-apache2-module

  以下の内容を/etc/httpd/conf.d/rails.confに記述する

  .. code-block:: apacheconf
  
    LoadModule passenger_module /usr/lib/ruby/gems/1.8/gems/passenger-3.0.11/ext/apache2/mod_passenger.so
    PassengerRoot /usr/lib/ruby/gems/1.8/gems/passenger-3.0.11
    PassengerRuby /usr/bin/ruby

    <VirtualHost *:80>
      ServerName localhost
      DocumentRoot /home/rails/myapp/current/public
      <Directory /home/rails/myapp/current/public>
         AllowOverride all
         Options -MultiViews
      </Directory>
    </VirtualHost>

- httpdを再起動する

  .. code-block:: bash

    $ sudo service httpd restart
