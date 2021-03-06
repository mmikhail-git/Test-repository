Алгоритм консенсуса Proof of Autority
===================

В приватном блокчейне не всегда нужны токены - например, блокчейн может быть использован для хранения хешей документов, которыми обмениваются организации. 
В таком случае, при отсутствии токенов и комиссий с транзакций, решение на базе алгоритма консенсуса PoS является избыточным. 
В Vostok можно выбрать альтернативный алгоритм консенсуса — Proof of Autority. Разрешение на майнинг в алгоритме PoA выдаётся централизовано. 
Это упрощает принятие решений по сравнению с алгоритмом PoS. 

Но PoA не настолько устойчив, поскольку PoS изначально разрабатывался для публичных сетей, где злоумышленников больше, чем в приватной сети.
В приватном блокчейне мы контролируем кто присоединяется к сети, что уменьшает требования к устойчивости против участников, злонамеренно оперирующих узлами.

Описание алгоритма
~~~~~~~~~~~~~~~~~~~~~~~~~~
В скобках приведены названия параметров в конфигурационном файле.

* t - длительность раунда в секундах (round-duration);
* t\ :sub:`s` \ - длительность периода синхронизации, вычисляется как t*0,1, но не более 30 секунд (sync-duration);
* t\ :sub:`ban` \ - продолжительность бана майнера в блоках (ban-duration-blocks);
* T\ :sub:`0` \ - unix time создания genesis блока;
* T\ :sub:`H` \ - unix time создания блока H — ключевой блок для NG;
* r - номер раунда, вычисляется как (T\ :sub:`Current` \-T\ :sub:`0` \) div (t+ t\ :sub:`s` \);
* A\ :sub:`r` \ - лидер раунда r, имеющий право на создание ключевых блоков и микроблоков для NG в раунде r;
* H – высота цепочки, на которой создается ключевой блок и микроблоки для NG. Право на выпуск блока на высоте H имеет лидер раунда  A\ :sub:`r` \;
* M\ :sub:`H` \ - майнер, выпустивший блок на высоте H;
* Q\ :sub:`H` \ - очередь активных на высоте H майнеров.
Очередь Q\ :sub:`H` \ формируется из адресов, которым permission транзакцией выдано разрешение на майнинг, у которых оно не было отозвано до высоты H, и не истекло до момента времени T\ :sub:`H` \.
Очередь сортируется по временной метке транзакции предоставления прав на майнинг – узел, которому права были предоставлены раньше, будет выше в очереди.
Для согласованной сети эта очередь будет одинакова на каждой ноде.

Новый блок создается в течение каждого раунда r. Раунд длится t секунд. После каждого раунда отводится t\ :sub:`s` \ секунд на синхронизацию данных в сети.
В период синхронизации микроблоки и ключевые блоки не формируются.
Для каждого раунда существует единственный лидер \ :sub:`(r)`, который имеет право создать блок в этом раунде.
Определение лидера может производиться на каждом узле сети с одинаковым результатом. Определение лидера раунда осуществляется следующим образом:

#. Определяется майнер M\ :sub:`H-1` \, который создал предыдущий ключевой блок на высоте H-1;
#. Вычисляется очередь Q\ :sub:`H` \ активных майнеров;
#. Из очереди исключаются неактивные майнеры (подробнее в пункте :ref:`kick_inactive`);
#. Если майнер блока H-1 (M\ :sub:`H-1` \) есть в очереди Q\ :sub:`H` \, лидером A\ :sub:`r` \ становится следующий по очереди майнер;
#. Если майнера блока H-1 (M\ :sub:`H-1` \), нет в очереди Q\ :sub:`H` \, лидером A\ :sub:`r` \ становится майнер, идущий в очереди за майнером блока H-2(M\ :sub:`H-2` \), и так далее;
#. Если ни одного из майнеров блоков (H-1..1) нет в очереди, лидером становится первый майнер очереди.

Данный алгоритм позволяет детерминировано вычислить и проверить майнера, который должен был создать каждый блок цепочки, за счет возможности вычислить список авторизованных майнеров 
на каждый момент времени.
Если блок не был создан назначенным лидером в отведенное время, в текущий раунд не производится блоков, раунд «пропускается».
Лидеры, пропускающие создание блоков, временно исключаются из очереди по алгоритму, описанному в пункте :ref:`kick_inactive`

Валидным считается блок, выпущенный лидером A\ :sub:`r` \ с временем блока T\ :sub:`H` \ из полуинтервала (T\ :sub:`0` \+(r-1)*(t+t\ :sub:`s` \); T\ :sub:`0` \+(r-1)*(t+t\ :sub:`s` \)+t].
Блок, созданный майнером не в свою очередь или не вовремя, не считается валидным.
После раунда длительностью t сеть синхронизирует данные в течение t\ :sub:`s` \. У лидера A\ :sub:`r` \ есть время t\ :sub:`s` \ для того, чтобы распространить валидный блок по сети.
Если каким-либо узлом сети за время t\ :sub:`s` \ не был получен блок от лидера A\ :sub:`r` \, этот узел признает раунд «пропущенным» и ожидает новый блок H в следующем раунде r+1, от следующего лидера A\ :sub:`r+1` \.

Параметры консенсуса: тип (PoS или PoA), t, t\ :sub:`s` \ задаются в конфигурационном файле узла сети. *Параметр t при этом должен совпадать у всех участников сети*, иначе произойдет форк сети.

Синхронизация времени между узлами сети
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Каждый узел сети должен синхронизировать время приложения с доверенным NTP-сервером в начале каждого раунда.
Адрес и порт сервера указывается в конфигурационном файле ноды.
Сервер должен быть доступен каждой ноде сети.

.. _kick_inactive:

Исключение неактивных майнеров
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Если каким-либо майнером 3 раза подряд было пропущено создание блока, этот майнер исключается из очереди на t\ :sub:`ban` \ последующих блоков (ban-duration-blocks в конфиге).  
Исключение выполняется каждым узлом самостоятельно на основании вычисляемой очереди Q\ :sub:`H` \ и информации о блоке H и майнере M\ :sub:`H` \.
Если очередь была пропущена, то каждая нода добавляет информацию об этом факте в БД.

Мониторинг
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Мониторинг консенсуса PoA помогает выявлять факты создания и распространения не валидных блоков, а также пропуски очереди майнерами.
Дальнейшие действия по выявлению и устранению неисправностей, а также блокировке вредоносных узлов выполняются администраторами сети.

В целях мониторинга процесса формирования блоков для алгоритма PoA в InfluxDB размещаются данные:

* Активный список майнеров, отсортированный в порядке предоставления прав на майнинг;
* Плановая временная метка раунда;
* Фактическая временная метка раунда;
* Текущий майнер.


Изменение параметров консенсуса
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Изменение параметров консенсуса (время раунда и периода синхронизации) выполняется на основании данных конфигурационного файла ноды (см. врезку) на высоте "from-height".
Если одна из нод не укажет новые параметры, то произойдет форк.
Пример конфигурации :
::
    // указывается внутри параметра blockchain
    consensus {
      type = poa
      sync-duration = 10s
      round-duration = 60s
      ban-duration-blocks = 100
      changes = [
        {
          from-height = 18345
          sync-duration = 5s
          round-duration = 60s
        },
        {
          from-height = 25000
          sync-duration = 10s
          round-duration = 30s
        }]
    }