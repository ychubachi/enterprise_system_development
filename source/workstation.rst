ワークステーション
==================

ワークステーションとは
----------------------

- プログラマが開発に使用するコンピュータ
- ソースコードのコーディングを行う
- サースコードの単体テスト（Unit Test）を行う
- ローカルのテスト用サーバを使ってテストを行う

Operation System
----------------

- Windows（またはMacOS）
- 仮想化

  - Windowsの場合， `VMWare Player`_ を用いて `CentOS 6.0`_ をインストールする

- IDE(統合開発環境)

  - `GNU Emacs`_
  - `Eclipse Indigo`_

.. _`VMWare Player`: http://www.vmware.com/products/player/
.. _`CentOS 6.0`: http://wiki.centos.org/Manuals/ReleaseNotes/CentOS6.0
.. _`GNU Emacs`: http://www.gnu.org/s/emacs/
.. _`Eclipse Indigo`: http://www.eclipse.org/downloads/packages/release/indigo/r

環境構築手順
------------

VMware Playerのインストール
~~~~~~~~~~~~~~~~~~~~~~~~~~~
- `VMware PlayerのDownloadページ`_ に行き，アカウントを作成して，ダウンロードして，インストールする

.. _`VMware PlayerのDownloadページ`: https://www.vmware.com/tryvmware/?p=player&lp=1

CentOS 6.0のインストール
~~~~~~~~~~~~~~~~~~~~~~~~
- `CentOS 6.0 DVDのISOイメージ`_ をダウンロードする

.. _`CentOS 6.0 DVDのISOイメージ`: http://ftp.riken.jp/Linux/centos/6.0/isos/i386/CentOS-6.0-i386-bin-DVD.iso

- VMware Playerを起動して，ISOイメージからインストールを行う．
  このとき，「簡易モード」を使うとインストール後に日本語が表示されないので注意．

- 参考URL

  - http://freesoft.tvbok.com/freesoft/virtual/vmware_centos1.html （内容はCentOS 5なので注意）

準備作業
--------
- rootでログインする
- OSをアップグレードする::

  # yum upgrade

- 自分のユーザアカウントを作成し，パスワードを設定する::

  # useradd username
  # passwd username

- ユーザアカウントをwheelグループに追加する::

  # vigr

- wheelグループに対して，sudoでのコマンド実行を許可する::

  # visudo

  変更する箇所::

    ## Allows people in group wheel to run all commands
    %wheel  ALL=(ALL)       ALL

- ログアウトする
- ユーザアカウントでログインする
- 設定をが上手くいったか確認する::

  $ groups
  $ cat /etc/shadow
  $ sudo cat /etc/shadow

SSHのための公開鍵の作成
-----------------------

SSH接続で使う公開鍵/非公開鍵のペアを作成します．演習で利用する重要なファイルですので，USBメモリなどにバックアップをとっておくことをおすすめします．

- ユーザアカウントでログインする
- 公開鍵を作成します（演習用なので，パスフレーズは入れなくてもかまわない）::

  $ ssh-keygen
  $ ls ~/.ssh

完了したら
~~~~~~~~~~

`共通手順`_ へ

.. _`共通手順`: ./both.html