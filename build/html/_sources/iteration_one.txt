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

* RailsでScaffoldを生成する

  .. code-block:: bash

    $ rails new myapp
    $ cd myapp
    $ rails generate scaffold address name:string email:string
    $ rake db:migrate
    $ rm public/index.html

* 生成されたもの
  名前(name)とアドレス(address)をもつPersonクラスと，それに対応するpersonsテーブルが作成されます．

  - app/models/以下に，Modelクラスができます．
  - app/controllers/以下に，Controllerクラスができます．
  - app/views/以下に，Viewができます(erbファイル）．
  - test/以下にテストのためのコードの雛形ができます．

テストサーバで実行する
~~~~~~~~~~~~~~~~~~~~~~
* テストサーバを起動する

  .. code-block:: bash

    $ rails server

* Webブラウザで次のURLにアクセスする

  - http://localhost:3000/addresses/index.html

* Ctrl-Cでサーバを停止する

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
* GitHubの画面にローカルレポジトリをpushする方法の説明が表示されるので，それに従い，pushする

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

※5行目のusernameは，各自のGitHubアカウント名に置き換えること．

デプロイ先のセットアップ
~~~~~~~~~~~~~~~~~~~~~~~~
* capコマンドでデプロイ先をsetupする

  .. code-block:: bash

    $ cap deploy:setup
    $ find /home/rails    # <- check

Deploy products
---------------

* ローカルApacheサーバにデプロイする

  .. code-block:: bash

    $ git add .
    $ git commit -a -m 'Deploy'
    $ cap deploy
    $ find /home/rails    # <- check

* ローカルApacheサーバを確認する

  - http://localhost/addresses/index.html

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
