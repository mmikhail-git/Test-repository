��    +      t              �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �                    .     3  (   9     b     x     �     �     �     �     �  %   �  	   �     �     �       7   -  8   e  
   �  �   �  �   =  c   �     D     M     d  ~  k     �     �     �     �     �                         
                              !     -     9     K     P  (   V          �     �     �     �     �     �  %   �  	   �     	     	     ,	  7   J	  8   �	  
   �	  �   �	  �   Z
  c   �
     a     j     �   # ... 0 1 10 + (K - 1) 2 3 32 4 5 6 64 7 8 8 + (K - 1) 9 + (K - 1) Base target Block's signature Byte Bytes Consensus block length (always 40 bytes) Generation signature* Generator's public key Int Long M1 MK Parent block signature Previous block's generation signature Timestamp Transaction #1 bytes Transaction #K bytes Transactions block length (N) Version (0x02 for Genesis block, 0x03 for common block) Version (0x02 for Genesis block,, 0x03 for common block) Блоки В этом разделе приведена структура хранения блоков в блокчейн-платформе Восток. Генерирующая подпись (Generation signature) вычисляется  на основе хеша (Blake2b256) от следующих полей: Подпись блока вычисляется на основе следующих данных: Поле Размерность Тип Project-Id-Version: Vostok master
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
 # ... 0 1 10 + (K - 1) 2 3 32 4 5 6 64 7 8 8 + (K - 1) 9 + (K - 1) Base target Block's signature Byte Bytes Consensus block length (always 40 bytes) Generation signature* Generator's public key Int Long M1 MK Parent block signature Previous block's generation signature Timestamp Transaction #1 bytes Transaction #K bytes Transactions block length (N) Version (0x02 for Genesis block, 0x03 for common block) Version (0x02 for Genesis block,, 0x03 for common block) Блоки В этом разделе приведена структура хранения блоков в блокчейн-платформе Восток. Генерирующая подпись (Generation signature) вычисляется  на основе хеша (Blake2b256) от следующих полей: Подпись блока вычисляется на основе следующих данных: Поле Размерность Тип 