アプリケーションのデプロイ（配備）
========================================

RubyアプリケーションのDeploy
----------------------------------------
* Phusion Passenger

  - RailsアプリケーションをApacheに接続して動作させるためのモジュール

* Capistrano

  - SSH/gitを使って，RailsアプリケーションをPassengerに対してデプロイするためのツール

.. image:: _static/Deploy.png
   :width: 70%
   :align: center

* これらを連携させることで，開発環境から運用環境へのアプリケーションの配備を行うことができる．

ApacheとPassengerの導入
----------------------------------------

ApacheとPassengerモジュールのためのパッケージの導入
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* ApaccheとPassengerに対応したApacheのモジュールをビルドするために必要なパッケージをインストールします．

  .. code-block:: bash

    $ sudo apt-get install build-essential libcurl4-openssl-dev libssl-dev zlib1g-dev apache2-mpm-prefork apache2-prefork-dev libapr1-dev libaprutil1-dev

* VirtualBox内のUbuntuからWebブラウザを起動して，http://localhost/にアクセスし，apacheが起動していて，ページが表示されるのを確認してください．

* ドキュメントルートは/var/wwwになります．

  .. code-block:: bash

    $ less /var/www/index.html

ユーザアカウントの権限を設定する
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Railsのアプリケーションをデプロイする場所として，passengerという名前のアカウントを作成してそのhomeを利用する．このhomeは，6770の設定をし，passengerグループに所属するユーザからの参照・更新を許可する．

* railsユーザアカウントの設定

  .. code-block:: bash

    $ sudo useradd -m passenger
    $ sudo chmod 6770 /home/passenger/

* passengerグループに，自分のユーザアカウントとwww-dataアカウント（Apache用）を追加する．

  - 「passenger:x:1002:」となっている行（1002は他の番号の可能性あり）を「passenger:x:1002:username,www-data」とする（usernameは置き換える）．

  .. code-block:: bash

    $ sudo vigr

* 一旦ログアウトしてから再度ログインする．

* 自分とwww-dataがpassengerグループに入ったかを確かめる

  .. code-block:: bash

    $ groups
    $ groups www-data

* 結果にpassengerグループが含まれていればOK

* /home/passengerにファイルが書き込めるか確かめる

  .. code-block:: bash

    $ touch /home/passenger/TEST
    $ ls /home/passenger
    $ rm /home/passenger/TEST
    $ ls /home/passenger

Passenger
----------------------------------------

* Passengerをインストールします

  .. code-block:: bash

    $ sudo gem install passenger
    $ sudo passenger-install-apache2-module

- /etc/apache2/conf.d/passenger.confを作成して以下の内容を記述する

  .. code-block:: apacheconf
  
    LoadModule passenger_module /var/lib/gems/1.9.1/gems/passenger-3.0.18/ext/apache2/mod_passenger.so
    PassengerRoot /var/lib/gems/1.9.1/gems/passenger-3.0.18
    PassengerRuby /usr/bin/ruby1.9.1

    <VirtualHost *:80>
      ServerName localhost
      DocumentRoot /home/passenger/myapp/current/public
      <Directory /home/passenger/myapp/current/public>
         AllowOverride all
         Options -MultiViews
      </Directory>
    </VirtualHost>

- テスト用のHTMLを作成しておく

  .. code-block:: bash

    $ mkdir -p /home/passenger/myapp/current/public
    $ echo TEST > /home/passenger/myapp/current/public/index.html

- httpdを再起動する

  .. code-block:: bash

    $ sudo service apache2 restart

- Webブラウザでlocalhostにアクセスし「TEST」と表示されるか確認する

- テスト用のHTMLをフォルダごと削除する

  .. code-block:: bash

    $ rm -r /home/passenger/myapp

Railsアプリケーションのデプロイのためのツール
---------------------------------------------

公開鍵でlocalhostにSSH接続できるようにする
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- 公開鍵をauthorized_keysに登録する

  .. code-block:: bash

    $ cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
    $ chmod 600 ~/.ssh/authorized_keys

- 公開鍵で（＝パスワード無しで）ログインできるか確かめる

  .. code-block:: bash

    $ ssh localhost    # <- you don't need to type your password
    $ exit


デプロイ用の設定を行う
~~~~~~~~~~~~~~~~~~~~~~
* `Capistrano <https://github.com/capistrano/capistrano#readme>`_ のインストール

  .. code-block:: bash

    $ sudo gem install capistrano

* capifyコマンドでデプロイのための設定を生成し，修正を行う

  .. code-block:: bash

    $ capify .
    $ emacs Capfile &
    $ emacs config/deploy.rb &

  .. literalinclude:: Capfile
    :language: ruby
    :linenos:

  .. literalinclude:: deploy.rb
    :language: ruby
    :emphasize-lines: 5
    :linenos:

  ↑5行目のusernameは，各自のGitHubアカウント名に置き換えること．

デプロイ先のセットアップ
~~~~~~~~~~~~~~~~~~~~~~~~
* capコマンドでデプロイ先をsetupする

  .. code-block:: bash

    $ cap deploy:setup
    $ find /home/rails    # <- check

Deploy products
---------------

* ローカルレポジトリにcommitする

  .. code-block:: bash

    $ git add .
    $ git commit -a -m 'Deploy'

* リモートレポジトリにpushする

  .. code-block:: bash

    $ git push

* Apacheサーバにデプロイする

  .. code-block:: bash

    $ cap deploy:migrations
    $ find /home/rails    # <- check

* ローカルApacheサーバを確認する

  - http://localhost/addresses/

.. Local Variables:
.. compile-command: "(cd .. && make html)"
.. End:

