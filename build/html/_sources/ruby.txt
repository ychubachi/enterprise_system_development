RubyとRails
===========

Ruby on Rails開発環境の構築
----------------------------------------

RubyとRailsのインストール
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- Ruby 1.9.3のインストール

  .. code-block:: bash

    $ sudo apt-get install ruby1.9.3
  
- `Rails 3.2 <http://rubyonrails.org/download>`_ のインストール

  .. code-block:: bash

    $ sudo gem installl rails

バージョンの確認
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  次のコマンドのバージョンを確認してください．2012-12-23現在は次の通りになります．下記に示すバージョンよりも大きければOKです．

  .. code-block:: bash

    $ ruby -v     # <- check: 1.9.3p0
    $ gem -v      # <- check: 1.8.11
    $ rails -v    # <- check: 3.2.9
    $ bundle -v   # <- check: 1.2.3

関連するパッケージのインストール
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* RailsのデフォルトのRDBMSであるSqlite3の開発ライブラリとJavaRuntime（Node.js）をインストールします．

  .. code-block:: bash

    $ sudo apt-get install libsqlite3-dev nodejs

.. $ sudo apt-get install libv8-3.7.12.22
.. therubyracerを使うにはlibv8の3.11.8以上が必要
.. 「gem 'libv8', '~>3.11.8'」を追加すると，コンパイルしてくれるが，だいぶ時間がかかるようだ

Scaffoldの作成
---------------------------

リモートリポジトリの作成とclone
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* GitHubに新しいリモートリポジトリを作成します．

  - ここでは「myapp」という名前で作成します．
  - 「Initialize this repository with a README」にチェックを入れてください
  - 「Add .gitignore」はNoneのままにしてください

* gitコマンドを使い，ローカルリポジトリに複製します

  .. code-block:: bash

    $ git clone git@github.com:username/myapp.git

* 以下の手順で，このmyappディレクトリの中に，Railsアプリケーションを構築していきます．

Scaffoldの作成
~~~~~~~~~~~~~~

* railsコマンドで新しいアプリケーションを作成する

  - bundle install中にパスワードを求められるので，入力する．

  .. code-block:: bash
    :linenos:

    $ cd myapp
    $ rails new .

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

.. warning::
   ここでAddressアプリケーションがうまく動かない場合，先に進んではいけません．必ずヘルプを求めること．

アプリケーションの編集とリポジトリの操作
----------------------------------------

作成したmyappをリポジトリに登録する
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* ローカルリポジトリに変更をcommitします

  .. code-block:: bash
    :linenos:

    $ git add .
    $ git commit -a -m 'generated myapp.'

* リモートリポジトリに変更をpushします

  .. code-block:: bash
    :linenos:

    $ git push

* GitHubのページで，ソースコードが登録されたことを確認してください

アプリケーションの変更
~~~~~~~~~~~~~~~~~~~~~~

* railsが生成したコードを眺め，簡単にコードを編集してみましょう．

  - 例） app/views/layouts/application.html.erb のタイトルを変える，など

* テストサーバで実行し，変更を確認してみてください

リモートリポジトリへの登録
~~~~~~~~~~~~~~~~~~~~~~~~~~

* うまく動いたら，リモートリポジトリにpushしてみてください．

  .. code-block:: bash
    :linenos:

    $ git add .
    $ git commit -a -m '＜作業内容＞'
    $ git push

【作業の完了報告】
------------------

* LMSの課題に，GitHubのリポジトリ閲覧ページのURLを提出してください（https://から始まるURL）


.. Local Variables:
.. compile-command: "(cd .. && make html)"
.. End:
