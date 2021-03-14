��    
      l      �       �   B   �     4     :  ,   F  -   s  �   �  Z   �  �   �  �   �  �  f  9   2  (  l     �  *   �  .   �    �  z   
    �
  �   �     	                   
                     By default DSMR-reader reads and preserves all telegram data read. Configure a data retention policy :doc:`in the configuration<../tutorial/configuration>`. This will eventually delete up to 99 percent of the telegrams, always preserving a few historically. Also, day and hour totals are **never** deleted by retention policies. Data limits How can I configure a data retention policy? How can I increase the datalogger sleep time? Increase the datalogger sleep time :doc:`in the configuration<../tutorial/configuration>` to 5 seconds or higher. This will save a lot of disk storage, especially when using a Raspberry Pi SD card, usually having a size of 16 GB max. Therefor two measures can be taken: Increasing datalogger sleep and data retention policy. This is caused by the high data throughput of DSMR version 5, which produces a new telegram every second. Both DSMR-reader and most of its users do not need this high frequency of telegrams to store, calculate and plot consumption data. When using a Raspberry Pi (or similar) combined with a DSMR version 5 smart meter (the default nowadays), you may experience issues after a while. Project-Id-Version: DSMR Reader
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
PO-Revision-Date: 2021-03-14 13:17+0100
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language: nl
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
X-Generator: Poedit 2.0.6
 Standaard bewaart DSMR-reader alle ingelezen telegrammen.  Stel een gegevensretentiebeleid in :doc:`binnen de configuratie<../tutorial/configuration>`. Dit schoont uiteindelijk tot 99 procent van de telegrammen op, waarbij een aantal altijd achterblijven i.v.m. historie. Daarnaast worden uur- en dagtotalen **nooit** opgeschoond door het retentiebeleid. Databeperkingen Hoe stel ik een gegevensretentiebeleid in? Hoe verhoog ik de slaaptijd van de datalogger? Verhoog de slaaptijd van de datalogger :doc:`binnen de configuratie<../tutorial/configuration>` naar minimaal 5 seconden. Dit bespaart een hoop schijfruimte, met name wanneer je een standaard Raspberry Pi SD-kaart gebruikt, die meestal maximaal 16 GB groot zijn. HIervoor kunnen twee maatregelen genomen worden: Verhogen van de datalogger-sleep en het instellen van een retentiebeleid. Dit wordt veroorzaak door de hoge gegevensdoorvoer van DSMR versie 5, wat elke seconde voor een nieuw telegram zorgt. Zowel DSMR-reader als het meerendeel van de gebruikers hebben deze hoge frequentie echter niet nodig voor de opslag, analyze en tonen van verbruiksgegevens. Wanneer je een Raspberry Pi (of soortgelijk appartaat) gebruikt, samen met een DSMR versie 5 slimme meter (wordt vandaag de dag standaard geleverd), dan kun je na verloop van tijd problemen ervaren. 