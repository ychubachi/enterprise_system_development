GitとGitHub
===========

SSHのための公開鍵の作成
-----------------------

GitHubとgitはSSHでデータのやり取りをします．そこで，SSH接続で使う公開鍵/非公開鍵のペアを作成します．

- ユーザアカウントでログインする
- 非公開鍵と公開鍵を作成する（演習用なので，パスフレーズは入れなくてもかまわない）

  .. code-block:: bash

    $ ssh-keygen
    $ ls ~/.ssh    # <- check

Git
---

gitのインストール
~~~~~~~~~~~~~~~~~

  .. code-block:: bash

    $ sudo apt-get install git

gitの設定方法
~~~~~~~~~~~~~
  次のコマンドで，gitの設定をしてください．

  .. code-block:: bash

    $ git config --global user.name "Your Name"
    $ git config --global user.email "username@domain.example"

gitの利用で困ったら？
~~~~~~~~~~~~~~~~~~~~~
  次のコマンドで，状況が確認できます．

  .. code-block:: bash

    $ git status

  次のコマンドで，ログが確認できます．

  .. code-block:: bash

    $ git log

  なお，gitのエラーメッセージは英語ですが，わりと丁寧に記述されているので，しっかりと読むようにしましょう．

GitHub
------

* `GitHub <https://github.com/>`_ にアカウントを作成する

  - アカウント名とメールアドレスは大学のものと同じにしてください
  - 登録ができたら，管理画面でSSHの公開鍵を登録してください [#win-set-up-git]_ ．

.. [#win-set-up-git] http://help.github.com/win-set-up-git/ の4節参照

.. Local Variables:
.. compile-command: "(cd .. && make html)"
.. End:
