一人でまわすイテレーション
==========================

イテレーションサイクルの全体像
------------------------------
.. image:: _static/IterationCycle.png
   :width: 100%

Create a scaffold project
-------------------------

ローカルレポジトリにScaffoldを作成する
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Railsでアプリケーションを生成する

  .. code-block:: bash
    :linenos:

    $ rails new myapp
    $ cd myapp

* GemfileにJavascriptエンジンのための以下の内容を追加する

  .. code-block:: ruby
    :linenos:

    # Gemfile
    gem 'execjs'
    gem 'therubyracer'

* bundle installする

  .. code-block:: bash

    $ bundle install     

* RailsでScaffoldを生成する

  .. code-block:: bash
    :linenos:

    $ rails generate scaffold address name:string email:string
    $ rake db:migrate
    $ rm public/index.html

* 説明

  - 1行目：myappという名前で新しいRailsアプリケーションを生成します
  - 3行目：名前(name)とアドレス(address)をもつModelであるAddressクラスと，それに関連するControllerクラス，及びViewを生成します．

    - app/models/以下に，Modelクラスができます．
    - app/controllers/以下に，Controllerクラスができます．
    - app/views/以下に，Viewができます(erbファイル）．
    - test/以下にテストのためのコードの雛形ができます．

  - 4行目：データベースにAddressクラスに対応するaddressesテーブルが作成されます．
  - 5行目：デフォルトで表示されるトップページを削除します．


テストサーバで実行する
~~~~~~~~~~~~~~~~~~~~~~
* テストサーバを起動する

  .. code-block:: bash

    $ rails server

* Webブラウザで次のURLにアクセスする

  - http://localhost:3000/addresses/

* Ctrl-Cでサーバを停止する

**!!!ここでAddressアプリケーションがうまく動かない場合，先に進んではいけません!!!**

ローカルレポジトリを作成する
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* gitでローカルレポジトリを作成し，Scaffoldをコミットする

  .. code-block:: bash

    $ git init
    $ git add .
    $ git commit -a -m 'Initial commit'

リモートレポジトリを作成する
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* GitHubにリモートレポジトリを作成する

  - http://help.github.com/create-a-repo/

* GitHubの画面にローカルレポジトリをpushする方法の説明が表示されるので，それに従い，pushする

  .. code-block:: bash
    :linenos:
    :emphasize-lines: 1

    $ git remote add origin git@github.com:username/myapp.git
    $ git push -u origin master

  ↑1行目のusernameは，各自のGitHubアカウント名に置き換えること．

* GitHubのページで，ソースコードが登録されたことを確認する

デプロイ用の設定を行う
~~~~~~~~~~~~~~~~~~~~~~
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

Write/Test codes
----------------

テストコードを作成する
~~~~~~~~~~~~~~~~~~~~~~
* テストコードを作成する
* テストを実行する

コードを作成する
~~~~~~~~~~~~~~~~
* コードを作成する
* テストを実行する

.. Local Variables:
.. compile-command: "(cd .. && make html)"
.. End:
