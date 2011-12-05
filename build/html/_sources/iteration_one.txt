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

デプロイ用の設定を行う
~~~~~~~~~~~~~~~~~~~~~~
* capifyコマンドでデプロイのための設定を生成し，修正を行う::

  $ capify .
  $ emacs config/deploy.rb &


ローカルレポジトリを作成する
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* gitでローカルレポジトリを作成し，Scaffoldをコミットする::

  $ git init
  $ git add .
  $ git commit -a -m 'Initial commit'

リモートレポジトリを作成する
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* GitHubにリモートレポジトリを作成する
* リモートレポジトリにローカルレポジトリの内容をpushする::

  $ git push remote master

Deploy products
---------------

* ローカルApacheサーバにデプロイする::

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

