GitとGitHub
===========

SSHのための公開鍵の作成
-----------------------

GitHubとgitはSSHでデータのやり取りをします．そこで，SSH接続で使う公開鍵/非公開鍵のペアを作成します．

- VirtualBoxを起動し，ユーザアカウントでログインする

Git
---

gitのインストール
~~~~~~~~~~~~~~~~~

  .. code-block:: bash

    $ sudo apt-get install git

gitの設定方法
~~~~~~~~~~~~~
  次のコマンドで，gitに名前とメールアドレスを登録してください．

  .. code-block:: bash

    $ git config --global user.name "Your Name"
    $ git config --global user.email "username@domain.example"

GitHub
------

準備
~~~~

* `GitHub <https://github.com/>`_ にアカウントを作成する

  - アカウント名とメールアドレスは大学のものと同じにしてください

* 非公開鍵と公開鍵を作成して，公開鍵をGitHubのProfileに登録する

  - https://help.github.com/articles/generating-ssh-keys 参照

GitHubへのリポジトリ作成と最初のcommit
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* GitHubにレポジトリを作成してみよう

  - https://help.github.com/articles/create-a-repo 参照

GitHubのIssueとの連携
~~~~~~~~~~~~~~~~~~~~~

メッセージに'Close #番号'を入れることができる．

  .. code-block:: bash

    $ git commit -a -m 'Close #?'

gitの基本的な操作
~~~~~~~~~~~~~~~~~

覚えておきたいコマンド

- git clone
- git status
- git add .
- git commit -a -m 'Message'
- git push
- git branch
- git checkout
- git merge
- git pull (= git fetch + git merge)

gitの利用で困ったら？
~~~~~~~~~~~~~~~~~~~~~
  次のコマンドで，状況が確認できます．

  .. code-block:: bash

    $ git status

  次のコマンドで，ログが確認できます．

  .. code-block:: bash

    $ git log

  なお，gitのエラーメッセージは英語ですが，わりと丁寧に記述されているので，しっかりと読むようにしましょう．

.. Local Variables:
.. compile-command: "(cd .. && make html)"
.. End:
