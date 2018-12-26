.. _configuration-node:

Конфигурация ноды
====================

Порядок конфигурирования ноды: создание новой сети
----------------------------------------------------

.. _address-creation:

1. Создать адреса и ключевые пары участников новой сети

  Для начала функционирования сети должен быть создан как минимум один участник с полномочиями ``permissioner`` (назначает роли другим участникам). В случае Proof-of-Stake алгоритма также должен быть определен участник, который хранит первоначальный баланс активов создаваемой блокчейн-сети. 
  
  .. tip:: Советуем не использовать один адрес для хранения всего баланса сети. Безопаснее разделить его между несколькими участинками!

  Запустить утилиту ``generators.jar`` командой ``java -jar generators.jar AccountsGeneratorApp accounts.conf``
  
  Листинг файла accounts.conf ::

    accounts-generator {
    gost-crypto = yes
    chain-id = W
    amount = 1
    wallet = ${user.home}"/vostok/wallet/"
    wallet-password = "some string as password"
    }

  **Описание параметров:**

  - gost-crypto – использовать криптографические алгоритмы по ГОСТ;
  - chain-id – байт сети;
  - amount – количество генерируемых адресов;
  - wallet – путь до каталога хранения ключей на ноде);
  - wallet-password – пароль для доступа к ключам ноды.

  После выполнения утилиты в папке ``${user.home}"/vostok/wallet/"`` будет сохранен закрытый ключ участника, а на экране отобразиться его адрес: ::
    
    [main] accounts-generator - 3PHxZuKWUo2fum4r5AhpPUHbgWpLUkSyT9y

  Сгенерированные адреса необходимо сохранить для указания в конф. файле ноды. Информация по возможным ролям участников платформы приведена в разделе `"Авторизация"`_.

  .. _`"Авторизация"`: ..\authorization

  Начальный состав участников может быть следующим:
  
  ============  ============= ===========================================
  № участника   Роль          Назначение участника
  ============  ============= ===========================================
  1             permissioner  Выдача разрешений для других участников
  2             miner         Валидация и включение транзакций в блоки
  3             нет           Владелец первоначального баланса сети
  4             нет           Владелец первоначального баланса сети
  ============  ============= ===========================================

.. _configuration-node:

2. В `конфигурационный файл <https://github.com/vostokplatform/Vostok-Releases/blob/master/configs/testnet.conf>`_ ноды требуется внести следующие изменения:

  1) Указать байт сети, с которым генерировались адреса участников сети 
  
    ::

      address-scheme-character: "W"

  2) Указать адреса (hostname) нод, которые будут подключены к сети 
  
    ::

      known-peers = [
        "privatenet-1.example.net:6864",
        "privatenet-2.exemple.net:6864" ]

  3) Указать общий баланс активов сети 
  
    ::

      genesis {
        initial-balance: 100000000000
  
  4) Очистить значения полей ``genesis-public-key-base-58`` и ``signature``. Данные поля будут заполнены автоматически после подписания gеnesis-блока утилитой generators.jar (выполняется далее)

    ::

      genesis-public-key-base-58: ""
      signature: ""

  5) Указать :ref:`адрес участника <address-creation>` – владельца начального баланса сети (или адреса нескольких участников, если это применимо)

    ::
   
      transactions = [
      {recipient: "3P9nhmAEec4bDKsmLEZy2raimNJTVqedu43", amount: 100000000000} ]

  6) Указать :ref:`адрес участника <address-creation>`, который обладает полномочиями определять роли других участников сети

    ::

      permissioner = "3PE1beuYnkEpht19AFoBdrGj1baQB3vjgtn"

  7) Указать :ref:`адрес участника <address-creation>`, который обладает полномочиями создавать новые блоки (или адреса нескольких участников, если это применимо):
  
    ::
    
      miners = ["3PE1beuYnkEpht19AFoBdrGj1baQB3vjgtn"]

  8) Указать путь и пароль от keystore - места хранения закрытых ключей участников сети, созданных на ноде

    ::

      wallet {
      file = ${user.home}"/vostok/wallet/"
      password = "some string as password" }

  8) Указать доступ к :ref:`интерфейсу REST API <rest-api-node>` ноды

    ::
 
      rest-api {
      enable = yes
      bind-address = "0.0.0.0"
      port = 6862

  9) Придумать api-key, на основании api-key :ref:`сгенерировать REST API <utils-hash>` и указать ``api-key-hash``

    ::

      api-key-hash = "" 

3. Подписать genesis-блок утилитой ``generators.jar``. Команда для подписания: ``java -jar generators.jar GenesisBlockGenerator private-blockchain.conf``, где private-blockchain.conf, отредактированный в :ref:`в п. 2 <configuration-node>`  конф. файл ноды. После подписания поля ``genesis-public-key-base-58`` и ``signature`` конф. файла будут заполнены значениями открытого ключа и подписи. 

  Пример:

  ::

    genesis-public-key-base-58: "4ozcAj...penxrm"
    signature: "5QNVGF...7Bj4Pc"

  .. important:: Если нода ранее работала с другой сетью блокчейна Vostok, то не забудьте удалить папку ``${user.home}"/vostok"``

