GitとGitHub
===========

GitHubとgitの準備
----------------------------------------

* gitのインストール

  .. code-block:: bash

    $ sudo apt-get install git

* `GitHub <https://github.com/>`_ にアクセスしアカウントを作成する

* 次の手順を参考に，gitの設定に名前とメールアドレスを登録してください（SSHを用いるのでパスワードの設定はしなくても構いません．）

  .. note::

    手順は https://help.github.com/articles/set-up-git#platform-linux 参照

* 非公開鍵と公開鍵を作成して，公開鍵をGitHubのProfileに登録する

  .. note::
     手順は https://help.github.com/articles/generating-ssh-keys#platform-linux 参照

* GitHubにレポジトリを作成し，最初のcommitをしてみよう

  .. note::
     手順は https://help.github.com/articles/create-a-repo 参照

gitの基本的な操作
----------------------------------------

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
----------------------------------------
* 次のコマンドで，状況が確認できます．

  .. code-block:: bash

    $ git status

* 次のコマンドで，ログが確認できます．

  .. code-block:: bash

    $ git log

  なお，gitのエラーメッセージは英語ですが，わりと丁寧に記述されているので，しっかりと読むようにしましょう．

GitHubのIssueとの連携
----------------------------------------

* GitHubのIssueを登録してみよう

* commitメッセージに'Close #番号'を入れるとIssueをCloseできる．

  .. code-block:: bash

    $ git commit -a -m 'Close #?'
    $ git push

.. Local Variables:
.. compile-command: "(cd .. && make html)"
.. End:
