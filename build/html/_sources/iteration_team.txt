チームでまわすイテレーション
============================

イテレーションサイクルの概要
----------------------------
.. image:: _static/IterationCycleWithGitHub.png
   :width: 100%

チケット駆動型開発（TkDD）
--------------------------

GitHubのissueを使って，チケットを管理します．

- issueはメンバー全員が発行できる
- issueはできる限り具体的に，細かく

ドキュメントの共有
------------------

ドキュメントは全てGitHubのWikiで共有します．

イテレーションサイクルのシナリオ
--------------------------------
.. image:: _static/GitHubWorkflow.png
   :width: 100%

.. TODO::

  図の修正：deployはDeveloper Aが行う

概要
----

ここからはチームでの作業になります．作成するアプリは「ブログアプリ」です．次のURLに詳しい説明があります．

http://guides.rubyonrails.org/getting_started.html

作業を始めるにあたり，メンバーのなかから一人「Master Developer」を決めてください．

最初は，HTML(erbファイル）ごとに担当をきめ，Viewまわりを変更することから開始するとよいでしょう．

レポジトリの準備
----------------

Create a scaffold product
~~~~~~~~~~~~~~~~~~~~~~~~~
Master Developerは，次のコマンドで，Scaffoldを作成します．

.. code-block:: bash

  $ rails new blog
  $ cd blog
  $ rm public/index.html
  $ rails generate scaffold Post name:string title:string content:text
  $ rake db:migrate

Create a local repo
~~~~~~~~~~~~~~~~~~~
Master Developerは，ローカルのgitレポジトリにcommitします．

.. code-block:: bash

  $ git init
  $ git add .
  $ git commi -a -m 'Initial commit'

Push the repos
~~~~~~~~~~~~~~

次に，GitHubにも新しいレポジトリ「blog」を作成します．作成できたら，pushしてください．

Fork the master to create a remote repos
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Developer（他のメンバー）は，Master Developerが作成したblogレポジトリをGitHubから検索し，「Frok」します．

clone the remote repos into local repos
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
自分のblogレポジトリをcloneします．

.. code-block:: bash

  $ git clone git:.....git

イテレーション
--------------

Pull the master repos
~~~~~~~~~~~~~~~~~~~~~

DeveloperはMasterのレポジトリをpullします．

.. code-block:: bash

  $ git pull ....

Write/Test codes
~~~~~~~~~~~~~~~~
プログラミングします．

commit to the local repos
~~~~~~~~~~~~~~~~~~~~~~~~~
ローカルレポジトリにコミット
.. code-block:: bash


.. Local Variables:
.. compile-command: "(cd .. && make html)"
.. End:
