一人でまわすイテレーション
==========================

イテレーション・サイクルの全体像
--------------------------------

ここまでのまとめとして，Railアプリケーションを個人で開発する場合のイテレーション・サイクルを図に示す．

.. image:: _static/IterationCycle.png
   :width: 50%
   :align: center

Create a scaffold product
~~~~~~~~~~~~~~~~~~~~~~~~~

Ruby on Railsの開発は，Scaffoldを作成するところから開始する．

Deploy the product
~~~~~~~~~~~~~~~~~~

大きなポイントは，Scaffoldを最初に運用環境へDeployしてしまうことである．開発が進んでからDeployするよりも，手戻りの可能性が低くなるという特徴がある．


Write/Test codes
~~~~~~~~~~~~~~~~

その後，実際の開発の作業を行う．通常，テスト・ファーストの形態で行い，

1. テスト・コードを作成する
2. テスト・コードを実行→失敗させる
3. 本体のコードを作成する
4. 本体のコードをテストする→成功

といった流れになる．そして，完成したらcommitしてpushし，即座に運用環境へDeployする．

.. note::

  必要に応じて，別なScaffoldを追加する作業も行う．


.. Local Variables:
.. compile-command: "(cd .. && make html)"
.. End:
