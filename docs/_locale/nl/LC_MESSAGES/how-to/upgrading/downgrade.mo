��    
      l      �       �      �   �   	  F     *   K  K   v  4   �  *   �  :   "     ]  �  z     E    \  K   u  (   �  O   �  D   :  /     9   �  )   �                            
      	           Downgrading DSMR-reader Each release `has it's database migrations locked <https://github.com/dsmrreader/dsmr-reader/tree/v5/dsmrreader/provisioning/downgrade/>`_. You should execute the script of the version you wish to downgrade to. And the switch the code to the release. First, **please make sure you have a recent backup of your database**! For example when downgrading to ``v5.4``:: If for some reason you need to downgrade the application, you will need to: Unapplying the database migrations may take a while. You should now be on the targeted release. switch the application code version to a previous release. unapply database migrations. Project-Id-Version: DSMR-reader
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
PO-Revision-Date: 2022-07-18 22:56+0200
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language: nl
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.3
X-Generator: Poedit 2.3
 DSMR-reader downgraden Elke release `heeft z'n eigen databasemigraties vastgelegd <https://github.com/dsmrreader/dsmr-reader/tree/v5/dsmrreader/provisioning/downgrade>`_. Je zult het script moeten uitvoeren voor de release waar je naar toe wilt. En vervolgens de codebase wisselen naar dezelfde release. Allereerst, **zorg ervoor dat je een recente backup hebt van je database**! Bijvoorbeeld, downgraden naar ``v5.4``:: Wanneer je om wat voor reden dan ook de applicatie moet downgraden, dan zul je: Het terugdraaien van databasemigraties kan wat tijd in beslag nemen. Je zou nu op de gewenste release moeten zitten. de applicatiecode moeten wisselen naar een vorige versie. de databasemigraties moeten terugdraaien. 