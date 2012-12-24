メモ
====

* 技術情報を検索するときのコツ

  - Googleで最初に出たページが正しいとは限らない．特に，日付の古い記事は参考にならない，と思ってよいでしょう．また，内容の正確さという面で原典にまさるものはありません．英語の場合が多いですが頑張って読みましょう．

* コマンドがエラーを出したら

  - エラーメッセージや，ログをよく読みましょう．英語であっても，頑張って読みます．

* EmacsでGitをつかうには？

  - Magitがよいです． http://philjackson.github.com/magit/

* インストール時のパスワードは絶対に忘れないこと

  - とりあえず，間違えなく入力できる文字でパスワードを指定しておき，インストール後にログインできることが確認できてから，より難解なものに修正する，というやり方もあります

* 仮想の開発環境を手軽に作成するには

  - LXCを試してみては． http://gihyo.jp/admin/serial/01/ubuntu-recipe/0226

* PCのリソースが足りずVirtualBoxでUbuntuが動かない/重い

  - Lubuntuを試しては． http://lubuntu.net/
  - VirtualBoxを使わず，HDDに新しいパーティションを切って，直接インストールしてデュアルブートにする方法もあります．

* この演習に使うパッケージをまとめてインストールしたい

  .. code-block:: bash

    $ sudo apt-get install build-essential libcurl4-openssl-dev libssl-dev zlib1g-dev apache2-mpm-prefork apache2-prefork-dev libapr1-dev libaprutil1-dev ssh git ruby1.9.3 libsqlite3-dev nodejs

* この演習に使うrubyのgemパッケージをまとめてインストールしたい

  .. code-block:: bash

    $ sudo gem install rails passenger capistrano

  .. note::

    アプリケーションの実行には bundle install によるgemのインストールも必要．

.. * エッジにこだわる
.. * HTMLの画面をみんなで手分けして修正してみよう
.. * テストの方法
.. * バージョンあわせ

.. Local Variables:
.. compile-command: "(cd .. && make html)"
.. End:
