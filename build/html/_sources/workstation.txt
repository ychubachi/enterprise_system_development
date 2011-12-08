ワークステーションを準備する
============================

ワークステーションとは
----------------------

- プログラマが開発に使用するコンピュータ
- ソースコードのコーディングを行う
- サースコードの単体テスト（Unit Test）を行う
- ローカルのテスト用サーバを使ってテストを行う

全体構成
--------

- OS

  - Windows（またはMacOS）

- 仮想化

  - Windowsの場合， `VMWare Player`_ を用いて `CentOS 6.0`_ をインストールする

- IDE(統合開発環境)

  - `GNU Emacs`_

- Ruby on Rails

  - Ruby 1.9.3
  - Rails 3.1
  - Capistrano
  - Passenger

.. _`VMWare Player`: http://www.vmware.com/products/player/
.. _`CentOS 6.0`: http://wiki.centos.org/Manuals/ReleaseNotes/CentOS6.0
.. _`GNU Emacs`: http://www.gnu.org/s/emacs/
.. _`Eclipse Indigo`: http://www.eclipse.org/downloads/packages/release/indigo/r

仮想OSのインストール
--------------------

VMware Playerのインストール
~~~~~~~~~~~~~~~~~~~~~~~~~~~
- `VMware PlayerのDownloadページ`_ に行き，アカウントを作成して，ダウンロードして，インストールする

.. _`VMware PlayerのDownloadページ`: https://www.vmware.com/tryvmware/?p=player&lp=1

CentOS 6.0のインストール
~~~~~~~~~~~~~~~~~~~~~~~~
- CentOS 6.0 DVDのISOイメージをダウンロードする

  - 32ビット版
  
    - http://ftp.riken.jp/Linux/centos/6.0/isos/i386/CentOS-6.0-i386-bin-DVD.iso
    
  - 64ビット版
  
    - http://ftp.riken.jp/Linux/centos/6.0/isos/x86_64/CentOS-6.0-x86_64-bin-DVD1.iso
    - http://ftp.riken.jp/Linux/centos/6.0/isos/x86_64/CentOS-6.0-x86_64-bin-DVD2.iso

- VMware Playerを起動して，ISOイメージからインストールを行う．

アカウントの作成と設定
----------------------

- 自分のルーザアカウントでログインする
- rootアカウントに切り替える

  .. code-block:: bash

    $ su -

- OSをアップグレードする

  .. code-block:: bash

    # yum upgrade

- 自分のユーザアカウント(例：username）をwheelグループに追加する

  .. code-block:: bash

    # usermod -G wheel username
    # groups username    # <- check

- wheelグループに対して，sudoでのコマンド実行を許可する

  .. code-block:: bash

    # visudo

  変更する箇所::

    ## Allows people in group wheel to run all commands
    %wheel  ALL=(ALL)       ALL

- exitする

  .. code-block:: bash

    # exit
    # whoami    # <- check

- 設定をが上手くいったか確認する

  .. code-block:: bash

    $ cat /etc/shadow        # <- check this will fail
    $ sudo cat /etc/shadow   # <- check this will success

日本語環境のインストール
------------------------

- ユーザアカウントでログインする
- 日本語パッケージをインストールする

  .. code-block:: bash

    $ sudo yum -y groupinstall "Japanese Support"

  参考: http://www.server-world.info/query?os=CentOS_6&p=japanese


SSHのための公開鍵の作成
-----------------------

SSH接続で使う公開鍵/非公開鍵のペアを作成します．演習で利用する重要なファイルですので，USBメモリなどにバックアップをとっておくことをおすすめします．

- ユーザアカウントでログインする
- 公開鍵を作成する（演習用なので，パスフレーズは入れなくてもかまわない）

  .. code-block:: bash

    $ ssh-keygen
    $ ls ~/.ssh    # <- check

- 公開鍵をauthorized_keysに登録する

  .. code-block:: bash

    $ cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
    $ chmod 600 ~/.ssh/authorized_keys

- 公開鍵でログインできるか確かめる

  .. code-block:: bash

    $ ssh localhost    # <- you don't need to type your password
    $ exit

Git
---

- gitのインストール

  .. code-block:: bash

    $ sudo yum -y install git

GitHub
------

* `GitHub <https://github.com/>`_ にアカウントを作成する

  - アカウント名とメールアドレスは大学のものと同じにしてください
  - 登録ができたら，管理画面でSSHの公開鍵を登録してください

railsユーザアカウントを作成する
-------------------------------

Railsのアプリケーションをデプロイする場所として，railsアカウントを作成してそのhomeを利用する．このhomeは，6770の設定をし，railsグループに所属するユーザからの参照・更新を許可する．

- railsユーザアカウントの設定

  .. code-block:: bash

    $ sudo /usr/sbin/useradd rails
    $ sudo chmod 6770 /home/rails/

- railsグループに，自分のユーザアカウントとapacheアカウントを追加する

  .. code-block:: bash

    $ sudo /usr/sbin/vigr

Ruby on Rails
-------------

- Ruby 1.8.7のインストール（開発用パッケージも含む）

  .. code-block:: bash

    $ sudo yum -y install ruby ruby-devel
    $ ruby -v   # <- check
  
- Gem 1.8.7のインストール

  .. code-block:: bash

    $ sudo yum -y install rubygems
    $ gem -v   # <- check
  
- `Rails 3.1 <http://rubyonrails.org/download>`_ のインストール

  .. code-block:: bash

    $ sudo gem installl rails
    $ rails -v    # <- check

- `Capistrano <https://github.com/capistrano/capistrano#readme>`_ のインストール

  .. code-block:: bash

    $ sudo gem install capistrano

- `Phusion Passenger <http://www.modrails.com/install.html>`_ のインストール

  .. code-block:: bash

    $ sudo gem install passenger

- Passengerをapacheと接続するためのモジュールをコンパイルする

  .. code-block:: bash

    $ sudo yum -y install gcc-c++ curl-devel openssl-devel zlib-devel httpd-devel apr-devel apr-util-devel
    $ sudo passenger-install-apache2-module

  以下の内容を/etc/httpd/conf.d/rails.confに記述する

  .. code-block:: apacheconf
  
    LoadModule passenger_module /usr/lib/ruby/gems/1.8/gems/passenger-3.0.11/ext/apache2/mod_passenger.so
    PassengerRoot /usr/lib/ruby/gems/1.8/gems/passenger-3.0.11
    PassengerRuby /usr/bin/ruby

    <VirtualHost *:80>
      ServerName localhost
      DocumentRoot /home/rails/myapp/public
      <Directory /home/rails/myapp/public>
         AllowOverride all
         Options -MultiViews
      </Directory>
    </VirtualHost>

- httpdを再起動する

  .. code-block:: bash

    $ sudo service httpd restart

.. Local Variables:
.. compile-command: "(cd .. && make html)"
.. End:
