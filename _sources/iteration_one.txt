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

* RailsでScaffoldを生成する::

  $ rails new myapp
  $ cd myapp
  $ rails generate scaffold

テストサーバで実行する
~~~~~~~~~~~~~~~~~~~~~~
* テストサーバで動作を確認する::

  $ cd myapp
  $ rails server

* Ctrl-Cでサーバを停止する

ローカルレポジトリを作成する
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* gitでローカルレポジトリを作成し，Scaffoldをコミットする::

  $ git init
  $ git add .
  $ git commit -a -m 'Initial commit'

リモートレポジトリを作成する
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* GitHubにリモートレポジトリを作成する
* GitHubの画面にローカルレポジトリをpushする方法の説明が表示されるので，それに従い，pushする

デプロイ用の設定を行う
~~~~~~~~~~~~~~~~~~~~~~
* capifyコマンドでデプロイのための設定を生成し，修正を行う::

  $ capify .
  $ emacs config/deploy.rb &

* capコマンドでデプロイ先をsetupする::

  $ cap deploy:setup
  $ ls /home/rails

Deploy products
---------------

* ローカルApacheサーバにデプロイする::

  $ git add .
  $ git commit -a -m 'Deploy'
  $ cap deploy

* ローカルApacheサーバを確認する

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

