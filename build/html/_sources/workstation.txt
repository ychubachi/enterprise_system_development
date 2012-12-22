ワークステーションを準備する
============================

ワークステーションとは
----------------------

- プログラマが開発に使用するコンピュータ
- ソースコードのコーディングを行う
- サースコードの単体テスト（Unit Test）を行う
- ローカルのテスト用サーバを使ってテストを行う

など

開発に用いる環境
----------------

- 演習の環境

  - Windows/Mac/Linuxを問わず `VirtualBox`_ を用いて `Ubuntu`_ をインストールする

- Ruby on Rails

  - Ruby 1.9.3
  - Rails 3.1
  - Capistrano
  - Passenger

.. _`VirtualBox`: https://www.virtualbox.org/
.. _`Ubuntu`: http://www.ubuntu.com/

仮想OSのインストール
--------------------

VMware Playerのインストール
~~~~~~~~~~~~~~~~~~~~~~~~~~~
- `VirtualBoxのDownloadページ`_ に行き，ダウンロードしてインストールする

.. _`VirtualBoxのDownloadページ`: https://www.virtualbox.org/wiki/Downloads

Ubuntu 12.4のインストール
~~~~~~~~~~~~~~~~~~~~~~~~~
- `仮想ハードディスクイメージのダウンロード`_ の手順に従い，Ubuntu 12.4をインストールする

.. _`仮想ハードディスクイメージのダウンロード`: http://www.ubuntulinux.jp/download/ja-remix-vhd

Auest Additionsのインストール
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- Virtual BoxのメニューからInstall -> Guest Additions... と選ぶ．

.. Local Variables:
.. compile-command: "(cd .. && make html)"
.. End:
