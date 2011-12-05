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

デプロイ用の設定を行う
~~~~~~~~~~~~~~~~~~~~~~
  $ capify .
  $ emacs config/deploy.rb &

* テストサーバで動作を確認する::

  $ cd myapp
  $ rails server

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

Capt..の設定を行う
~~~~~~~~~~~~~~~~~~

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

