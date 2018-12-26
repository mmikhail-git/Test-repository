.. _install-node:

Установка ноды
===============

.. _install-windows:

Установка на Windows
----------------------------

1.	Скачать и установить `JRE 1.8 (64-bit) <http://www.oracle.com/technetwork/java/javase/downloads/2133155>`_       
    Корректность установки можно проверить командой ``java -version``.
    Если отображается следующий результат, то можно переходить к следующему шагу.    
    
    ::

        Java version "1.8.0_74"
        Java(TM) SE Runtime Environment (build 1.8.0_74-b02)
        Java HotSpot(TM) 64-Bit Server VM (build 25.74-b02, mixed mode)

2.	Скачать и установить `CryptoPro JCP 2.0 <https://www.cryptopro.ru/products/csp/jcp>`_ (или версию выше)
    Если в процессе инсталляции возникают ошибки, связанные с JRE, то необходимо проверить корректность пути до файла java.exe пакета JRE, указанного в системной переменной ``PATH``

3.	Скачать `актуальный релиз <https://github.com/vostokplatform/Vostok-Releases/releases>`_ ноды в формате jar-файла и файл конфигурации example-devnet.conf. Порядок конфигурирования ноды приведен в разделе :ref:`configuration-node` 

#.	Запуск ноды выполняется командой 

    ::
    
        java -jar vostok-X.X.X.jar example-devnet.conf``

.. _`"Конфигурация ноды"`: configuration-node

.. _install-ubuntu:

Установка на Ubuntu
----------------------------

1. Скачать и установить `JRE 1.8 (64-bit) <http://www.oracle.com/technetwork/java/javase/downloads/2133155>`_  

   ::
        
       sudo add-apt-repository -y ppa:webupd8team/java
       sudo apt-get update
       sudo apt-get -y install oracle-java8-installer

   Корректность установки можно проверить командой ``java -version``.
   Если отображается следующий результат, то можно переходить к следующему шагу.    
    
   ::

       Java version "1.8.0_74"
       Java(TM) SE Runtime Environment (build 1.8.0_74-b02)
       Java HotSpot(TM) 64-Bit Server VM (build 25.74-b02, mixed mode)

2. Скачать и установить `CryptoPro JCP 2.0 <https://www.cryptopro.ru/products/csp/jcp>`_ (или версию выше)        

3. Скачать `актуальный релиз <https://github.com/vostokplatform/Vostok-Releases/releases>`_ ноды в формате deb-пакета и файл конфигурации example-devnet.conf. Порядок конфигурирования ноды приведен в разделе :ref:`configuration-node`. Установка выполняется из deb-пакета. Команда для установки: 

   ::

       sudo dpkg -i vostok.deb

    
   - Директория для конфигурационного файла - /etc/vostok/vostok.conf

   - Директория для jar-файла и библиотек - /usr/share/vostok/

   - Директория для данных блокчейна - /var/lib/vostok/


   Запуск ноды выполняется командой: 
    
   ::

        sudo systemctl start vostok.service

   Остановка ноды выполняется командой: 
    
   ::

        sudo systemctl stop vostok.service
