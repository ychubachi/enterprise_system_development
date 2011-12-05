イテレーションサイクル
======================

イテレーションサイクルの全体像
------------------------------
.. image:: _static/IterationCycle.png
   :width: 100%

Create a scaffold project
~~~~~~~~~~~~~~~~~~~~~~~~~
* GitHubにプロジェクトを作成する
* RailsでScaffoldを生成する::

  $ rails new myapp
  $ cd myapp
  $ rails generate scaffold

* gitでlocalレポジトリを作成する::

  $ git init && git add . && git commit -a -m 'Initial commit'

* GitHubにレポジトリをpushする::

  $ git ...

Deploy products
~~~~~~~~~~~~~~~
* 評価用サーバにアップロードする
* 完成かどうか評価する

Write/Test codes
~~~~~~~~~~~~~~~~
* テストコードを作成する
* コードを作成する
* テストを実行する

GitHubを用いたイテレーションサイクル
------------------------------------
.. image:: _static/IterationCycleWithGitHub.png
   :width: 100%

