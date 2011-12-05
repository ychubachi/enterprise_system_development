メモ
====

* エッジにこだわる
* ドキュメントは英語の原典を参照する
* PHP（担当者に開発経験がないため非推奨）

RPMForgeの導入
--------------
標準にはない追加的なパッケージを利用できるようにします

- ユーザアカウントでログインする

- `RPMForge`_ のパッケージを取得してインストールする::

  $ wget http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.i686.rpm
  $ sudo rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
  $ sudo rpm -K rpmforge-release-0.5.2-2.el6.rf.*.rpm

.. _`RPMForge`: http://wiki.centos.org/AdditionalResources/Repositories/RPMForge#head-f0c3ecee3dbb407e4eed79a56ec0ae92d1398e01

ToDo
----
.. todolist::
