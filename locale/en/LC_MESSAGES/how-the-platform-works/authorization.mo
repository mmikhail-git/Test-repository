��    C      4              L     M  2   a  \   �     �  	         
       	   3     =     N     V     ]     i     |     �     �     �  +   �  ,   �  �   �  p   �     #  u   4  ?   �  ;   �  Y   &  N   �  e   �  x   5	  �   �	  .   u
  1   �
  �   �
  !   r  �   �     k  5   �  *   �     �  $     7   )  /   a  2   �  6   �  ;   �  <   7  8   t  6   �     �     �  {     �   �  �   5     �  *   �  (     -   ,  �   Z  9   �  4      5   U  Z   �  V   �  G   =  q   �  Q   �  ~  I     �  2   �  \        l  	   {     �     �  	   �     �     �     �     �     �     �     �            +     ,   A  �   n  p   -     �  u   �  ?   %  ;   e  Y   �  N   �  e   J  x   �  �   )  .   �  1     �   Q  !   �  �        �  5      *   6     a  $     7   �  /   �  2     6   ?  ;   v  <   �  8   �  6   (      _      t   {   �   �   !  �   �!     7"  *   S"  (   ~"  -   �"  �   �"  9   a#  4   �#  5   �#  Z   $  V   a$  G   �$  q    %  Q   r%   Due Timestamp Bytes Due Timestamp Defined Byte (0 - None, 1 - Defined) DueTimestamp (время действия роли) > Timestamp (текущее время); Operation Byte Role Byte Sender PublicKey Target Address or Alias Timestamp Transaction Type Version banned blacklister contract_developer dex issuer miner permissioner Авторизация участников Биржевые операции (exchange) В блокчейн-платформе реализован механизм ограничения действий участников на основании ролевой модели. В таблице ниже представлен список возможных ролей платформы: Действие Для изменения списка разрешений используется permission-транзакция. Добавление exchange транзакции (deprecated) Добавление или удаление из blacklist Добавление транзакции на создание docker-контракта Добавление транзакций для изменения black list Добавление транзакций для изменения списка разрешений Добавление транзакций по выпуску, перевыпуску и сжиганию токенов Запрещено отправлять какие-либо транзакции в блокчейн. Группа всех участников с данной ролью образует blacklist Исполнение docker-контракта Лизинг токенов (lease, lease cancel) Механизм разрешений позволяет владельцу платформы обезопасить участников от угроз: Модель разрешений Модель разрешений описывает механизм применения различных типов разрешений при валидации операций в блокчейн-сети. Название роли Назначение или удаление роли Наличие роли contract_developer Наличие роли miner Наличие роли permissioner Наличие роли permissioner или blacklister Наличие роли permissioner или dex Наличие роли permissioner или issuer Обновление списка разрешений Операции с токенами (issue, reissue, burn) Отправитель не находится в blacklist; Отсуствие пользователя в blacklist Перевод токенов (transfer, masstransfer) Полномочия Поля транзакции: Порядок выдачи и отзыва разрешений приведен в разделе :ref:`role-management`. Последовательность действий при обновлении списка разрешений приведена на схеме ниже. При изменении списка разрешений платформа выполняет следующие проверки: Ролевая модель Создание docker-контракта Создание новых блоков Создание псевдонима (alias) Такая роль не активна (в случае добавления), либо активна (в случае удаления). У отправителя есть роль permissioner; Условие разрешения действия Формирование и выпуск блоков атак недобросовестных майнеров на блокчейн-сеть; иных противоправных действий злоумышленников. несанкционированного выпуска токенов; несанкционированного доступа к конфиденциальной информации; несанкционированной биржевой деятельности; Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-02-17 12:53+0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: en
Language-Team: en <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 Due Timestamp Bytes Due Timestamp Defined Byte (0 - None, 1 - Defined) DueTimestamp (время действия роли) > Timestamp (текущее время); Operation Byte Role Byte Sender PublicKey Target Address or Alias Timestamp Transaction Type Version banned blacklister contract_developer dex issuer miner permissioner Авторизация участников Биржевые операции (exchange) В блокчейн-платформе реализован механизм ограничения действий участников на основании ролевой модели. В таблице ниже представлен список возможных ролей платформы: Действие Для изменения списка разрешений используется permission-транзакция. Добавление exchange транзакции (deprecated) Добавление или удаление из blacklist Добавление транзакции на создание docker-контракта Добавление транзакций для изменения black list Добавление транзакций для изменения списка разрешений Добавление транзакций по выпуску, перевыпуску и сжиганию токенов Запрещено отправлять какие-либо транзакции в блокчейн. Группа всех участников с данной ролью образует blacklist Исполнение docker-контракта Лизинг токенов (lease, lease cancel) Механизм разрешений позволяет владельцу платформы обезопасить участников от угроз: Модель разрешений Модель разрешений описывает механизм применения различных типов разрешений при валидации операций в блокчейн-сети. Название роли Назначение или удаление роли Наличие роли contract_developer Наличие роли miner Наличие роли permissioner Наличие роли permissioner или blacklister Наличие роли permissioner или dex Наличие роли permissioner или issuer Обновление списка разрешений Операции с токенами (issue, reissue, burn) Отправитель не находится в blacklist; Отсуствие пользователя в blacklist Перевод токенов (transfer, masstransfer) Полномочия Поля транзакции: Порядок выдачи и отзыва разрешений приведен в разделе :ref:`role-management`. Последовательность действий при обновлении списка разрешений приведена на схеме ниже. При изменении списка разрешений платформа выполняет следующие проверки: Ролевая модель Создание docker-контракта Создание новых блоков Создание псевдонима (alias) Такая роль не активна (в случае добавления), либо активна (в случае удаления). У отправителя есть роль permissioner; Условие разрешения действия Формирование и выпуск блоков атак недобросовестных майнеров на блокчейн-сеть; иных противоправных действий злоумышленников. несанкционированного выпуска токенов; несанкционированного доступа к конфиденциальной информации; несанкционированной биржевой деятельности; 