��    ]                    �     �     �     �     �     �     �     �     �            	                  #     &     (     *  &   ,     S     o     �     �     �     �     �     �     �                    /     =     X     ]     c     x     �     �     �     �  
   �     �               ,     >     P     b     t     �  +   �  ?   �     	     	  �   &	     �	     �	  �   �	     j
     n
     p
     u
     w
  �   �
               )     I  
   ^     i     �     �     �     �     �     �     �     �     �  T   	     ^     n     |  	   �     �     �  �   �  �   [     �     �  !        /  ~  6     �     �     �     �     �     �     �     �     �     �  	   �     �     �     �     �     �     �  &   �          7     Q     k     �     �     �     �     �     �     �     �     �                %     +     @     X     m     �     �  
   �     �     �     �     �               *     <     N  +   `  ?   �     �     �  �   �     v     �  �   �     2     6     8     =     ?  �   K     �     �     �       
   &     1     K     S     d     s     �     �     �     �     �  T   �     &     6     D  	   W     a     w  �   �  �   #     �     �  !   �     �   # ... 1 10 11 2 3 4 5 6 6 + 2 * N 6 + 2 * N - 1 6 + N 64 7 8 9 Application name (UTF-8 encoded bytes) Application name length (N) Application version major Application version minor Application version patch BigInt Block #1 ID Block #1 signature Block #N ID Block #N signature Block ID Block IDs count (N) Block bytes (N) Block message Block signatures count (N) Byte Bytes Checkpoint #1 height Checkpoint #1 signature Checkpoint #N height Checkpoint #N signature Checkpoint items count (N) Checkpoint message Content ID Content ID (0x01) Content ID (0x02) Content ID (0x14) Content ID (0x15) Content ID (0x16) Content ID (0x17) Content ID (0x18) Content ID (0x19) Content ID (0x64) Declared address bytes (if length is not 0) Declared address length (K) or 0 if no declared address was set GetBlock message GetPeers message GetPeers сообщение отправляется для запроса сетевых адресов участников сети. GetSignatures message Handshake message Handshake сообщение предназначена для первичного обмена данными между двумя нодами. Int K Long M Magic Bytes Magic Bytes are 0x12, 0x34, 0x56, 0x78. Payload checksum is first 4 bytes of_FastHash_of Payload bytes. FastHash is hash function Blake2b256(data). N Network message Node name (UTF-8 encoded bytes) Node name length (M) Node nonce Packet length (BigEndian) Payload Payload checksum Payload length Peer #1 IP address Peer #1 port Peer #N IP address Peer #N port Peers count (N) Peers message Peers сообщение является ответом на запрос GetPeers. Score (N bytes) Score message Signatures message Timestamp Transaction (N bytes) Transaction message В этом разделе приведена структура сетевых сообщений в блокчейн-платформе Восток. Все сетевые сообщения, за исключением Handshake, базируются на следующей структуре: Поле Размерность Сетевые сообщения Тип Project-Id-Version: Vostok master
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
 # ... 1 10 11 2 3 4 5 6 6 + 2 * N 6 + 2 * N - 1 6 + N 64 7 8 9 Application name (UTF-8 encoded bytes) Application name length (N) Application version major Application version minor Application version patch BigInt Block #1 ID Block #1 signature Block #N ID Block #N signature Block ID Block IDs count (N) Block bytes (N) Block message Block signatures count (N) Byte Bytes Checkpoint #1 height Checkpoint #1 signature Checkpoint #N height Checkpoint #N signature Checkpoint items count (N) Checkpoint message Content ID Content ID (0x01) Content ID (0x02) Content ID (0x14) Content ID (0x15) Content ID (0x16) Content ID (0x17) Content ID (0x18) Content ID (0x19) Content ID (0x64) Declared address bytes (if length is not 0) Declared address length (K) or 0 if no declared address was set GetBlock message GetPeers message GetPeers сообщение отправляется для запроса сетевых адресов участников сети. GetSignatures message Handshake message Handshake сообщение предназначена для первичного обмена данными между двумя нодами. Int K Long M Magic Bytes Magic Bytes are 0x12, 0x34, 0x56, 0x78. Payload checksum is first 4 bytes of_FastHash_of Payload bytes. FastHash is hash function Blake2b256(data). N Network message Node name (UTF-8 encoded bytes) Node name length (M) Node nonce Packet length (BigEndian) Payload Payload checksum Payload length Peer #1 IP address Peer #1 port Peer #N IP address Peer #N port Peers count (N) Peers message Peers сообщение является ответом на запрос GetPeers. Score (N bytes) Score message Signatures message Timestamp Transaction (N bytes) Transaction message В этом разделе приведена структура сетевых сообщений в блокчейн-платформе Восток. Все сетевые сообщения, за исключением Handshake, базируются на следующей структуре: Поле Размерность Сетевые сообщения Тип 