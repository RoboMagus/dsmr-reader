��    E      D              l  '   m     �  (   �  %   �     �  @   	     J  	   g  $   q  #   �  *   �  m   �     S     k           �  6   �  �   �     b     �  Q   �     �  4   �     "  	   :  $   D  %   i  )   �  4   �  ]   �  �   L	  �   
  �   �
     "  J   8     �  �   �  X        x     �  1   �      �  7   �  g   (  U   �  W   �     >     M  7   i     �  B   �             �   '  k   �  K   ^      �  �   �     V     t     �  C   �  �   �  d   {  r   �  P   S  L   �  V   �  �  H  -   "     P  0   `  &   �     �  D   �       	   3  (   =  '   f  +   �  l   �  *   '     R     f  !   t  4   �  �   �  !   Q     s  [   z     �  E   �     ,  
   D  &   O  '   v  4   �  9   �  i     �   w  �   F  �   �     }  ]   �     �  �     P   �     �       <     ,   [  D   �  z   �  V   H   g   �      !     !  8   4!  (   m!  H   �!     �!     �!  �   "  x   �"  W   x#  (   �#  �   �#     $     �$     �$  H   �$  �   %  �   �%  h   >&  W   �&  Q   �&  [   Q'   **If not**, update it and check again:: **Reminder** 1. Update to the latest ``v4.x`` version 2. Relocate to github.com/dsmrreader/ 3. Python version check 4. Python version upgrade (when running ``Python 3.6`` or lower) 5. Upgrade to DSMR-reader v5 6. Deploy 7. Situational: Reconfigure InfluxDB 8. Situational: Reconfigure Dropbox 9. Situational: Remote datalogger env vars :doc:`See the changelog</reference/changelog>`, for ``v5.x releases`` and higher. Check them before updating! Add this line instead:: Check DSMR-reader:: Contents Create new ``v5.x`` virtualenv:: DSMR-reader ``5.x`` requires ``Python 3.7`` or higher. DSMR-reader ``v5.x`` is backwards incompatible with ``4.x``. You will have to manually upgrade to make sure it will run properly. Disable ``v4.x`` virtualenv:: Docker Docker users, :doc:`see the changelog</reference/changelog>` for env var changes! Does it fail with:: Execute the following (your file name may differ!):: Execute the following:: Execute:: Finally, execute the deploy script:: Great. You should now be on ``v5.x``! Guide: Upgrading DSMR-reader v4.x to v5.x If things went well, you should see a message like:: If you find any listed on the left hand side, rename them to the one on the right hand side:: If you happened to use DSMR-reader export to InfluxDB previously, you **must** reconfigure it accordingly in order to get it working again. It has been disabled automatically as well. If you happened to use DSMR-reader's Dropbox sync for backups, you **must** reconfigure it accordingly in order to get it working again. If you're using Docker, you can probably just install the ``v5.x`` version of the Docker container without having to perform any of the steps below. Install Python venv:: Install ``libopenjp2-7-dev`` as well, to prevent as possible error later:: Install dependencies:: It should display the Python version. **If you're already running** ``Python 3.7`` **(or higher), you can ignore the next section.** It should output something similar to: "System check identified no issues (0 silenced)." It should point to:: List of changes Make sure the file is of some (reasonable) size:: Make sure the output ends with:: Make sure you've installed ``libopenjp2-7-dev`` above:: Note: This *may* revert any customizations you've done yourself, such as HTTP Basic Auth configuration. Only execute this section if you're running DSMR-reader with ``Python 3.6`` or lower! Over a year ago the DSMR-reader project was moved to ``https://github.com/dsmrreader``. Reload Nginx:: Reload Supervisor configs:: Remove the following line from ``/home/dsmr/.bashrc``:: Remove this line (if set):: Rename any legacy setting names in ``.env`` you find (see below):: Start DSMR-reader:: Stop DSMR-reader:: The following **remote datalogger script** settings were renamed as well, but you'll only need to change them if you use and update the remote datalogger script as well. E.g. when running it in Docker:: The next thing you'll absolutely need to do, is create a fresh database backup and store it somewhere safe. There are several guides, depending on your OS. We assume Raspbian OS here. Try installing ``libjpeg-dev``:: Try running the command ``python3 --version`` to see if things worked out. If you're getting any errors, do not continue with the upgrade. Update DSMR-reader codebase:: Update Nginx config:: Update Supervisor configs:: Update to ``v4.20`` to ensure you have the latest ``v4.x`` version. Where the previous version utilized *usernames*, *passwords* and *databases*, it now connects using *organizations*, *API tokens* and *buckets*. You may consider upgrading to a higher Python version, e.g. ``Python 3.9``, if possible for your OS. ℹ️ This upgrade will require you to run (or upgrade to) **Python 3.7 or higher**. *Upgrade steps later below.* ✋ Do not upgrade if you run **InfluxDB 1.x**. *Upgrade to InfluxDB 2.x first.* ✋ Do not upgrade if you run **MySQL 5.6 or below**. *Upgrade MySQL first.* ✋ Do not upgrade if you run **PostgreSQL 9.x or below**. *Upgrade PostgreSQL first.* Project-Id-Version: DSMR Reader
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language: nl
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
 **Zo niet**, update deze en probeer opnieuw:: **Herinnering** 1. Update naar de meeste recente ``v4.x`` versie 2. Migreer naar github.com/dsmrreader/ 3. Python versie check 4. Python-versie upgrade (wanneer je ``Python 3.6`` of lager draait) 5. Upgrade naar DSMR-reader v5 6. Deploy 7. Situationeel: Herconfigureer InfluxDB 8. Situationeel: Herconfigureer Dropbox 9. Situationeel: Remote datalogger env vars :doc:`Zie de changelog</reference/changelog>`, voor ``v5.x releases`` en hoger. Bekijk ze voordat je update! Voeg in de plaats daarvan deze regel toe:: Check DSMR-reader:: Inhoudsopgave Maak nieuwe ``v5.x`` virtualenv:: DSMR-reader ``5.x`` vereist ``Python 3.7`` of hoger. DSMR-reader ``v5.x`` is backwards incompatible met ``4.x``. Je zult handmatig moeten upgraden om ervoor te zorgen dat het goed werkt. Schakel ``v4.x`` virtualenv uit:: Docker Docker-gebruikers, :doc:`Zie de changelog</reference/changelog>`, voor env var wijzigingen! Faalt het met:: Voer het volgende uit (bestandsnaam kan afwijken in jouw situatie!):: Voer het volgende uit:: Voer uit:: Tot slot, voer het deploy-script uit:: Top! Je zou nu ``v5.x`` moeten draaien! Stappenplan: DSMR-reader upgraden van v4.x naar v5.x Wanneer alles OK is, zie je een melding in de trend van:: Wanneer je eentje tegenkomt die aan de linkerkant staat, hernoem die naar de variant aan de rechterkant:: Als je DSMR-reader gebruikte om data te exporteren naar InfluxDB, dan **moet** je deze integratie handmatig opnieuw configureren om het werkend te krijgen. De integratie is tevens automatisch uitgeschakeld. Als je DSMR-reader gebruikte om backups naar Dropbox te sturen, dan **moet** je deze integratie handmatig opnieuw configureren om het werkend te krijgen. Indien je Docker gebruikt, kun je vermoedelijk gewoon de ``v5.x`` versie van de Docker container gebruiken, zonder onderstaande stappen te hoeven uitvoeren. Installeer Python venv:: Installeer ook ``libopenjp2-7-dev``, om te voorkomen dat je later mogelijk deze fout krijgt:: Installeer dependencies:: Het zou de Python-versie moeten tonen. **Wanneer je al de versie** ``Python 3.7`` **(of hoger) draait, kun je de volgende sectie negeren.** Het zou iets moeten tonen als: "System check identified no issues (0 silenced)." Het zou moeten wijzen naar:: Lijst van wijzigingen Controleer of het bestand een (aannemelijke) grootte heeft:: Controleer dat het eindigt met deze output:: Zorg dan dat je hierboven ``libopenjp2-7-dev`` hebt geïnstalleerd:: N.b.: Dit *kan* alle handmatige wijzigingen die je zelf ooit hebt gedaan terugdraaien, zoals HTTP Basic Auth configuratie. Voer deze sectie alleen uit wanneer je DSMR-reader draait met ``Python 3.6`` of lager! Meer dan een jaar geleden is het DSMR-reader project verplaatst naar ``https://github.com/dsmrreader``. Herlaad Nginx:: Herlaad Supervisor configs:: Verwijder de volgende regel uit ``/home/dsmr/.bashrc``:: Verwijder deze regel (indien aanwezig):: Hernoem oude env vars in ``.env`` als je die tegenkomt (zie hieronder):: Start DSMR-reader:: Stop DSMR-reader:: De volgende **remote datalogger script** instellingen zijn ook hernoemd, maar je hoeft ze alleen aan te passen als je ze daadwerkelijk gebruikt, samen met een nieuwe versie van het remote datalogger script. Bijvoorbeeld wanneer je Docker gebruikt:: Het volgende wat je absoluut moet doen, is het maken van een verse database back-up en deze op een veilige plek opslaan. Er zijn diverse handleidingen, afhankelijk van je OS. We gaan hier uit van Raspbian OS. Probeer ``libjpeg-dev`` te installeren:: Voer ``python3 --version`` uit om te controleren of het gelukt is. Indien je foutmeldingen krijgt, ga dan niet verder met de upgrade. Update DSMR-reader codebase:: Update Nginx config:: Update Supervisor configs:: Update naar ``v4.20`` zodat je de meeste recente ``v4.x`` versie draait. Waar de vorige versie *usernames*, *passwords* en *databases* gebruikte, is het nu gewijzigd naar *organizations*, *API tokens* en *buckets*. Je kunt overwegen om direct naar een hogere Python-versie te upgraden, bijvoorbeeld ``Python 3.9``, indien dat mogelijk is voor het OS dat je gebruikt. ℹ️ Deze upgrade vereist je om **Python 3.7 of hoger** te draaien. *Upgrade-stappen later hieronder.* ✋ Upgrade niet wanneer je **InfluxDB 1.x** draait. *Upgrade naar InfluxDB 2.x eerst.* ✋ Upgrade niet wanneer je **MySQL 5.6 of lager** draait. *Upgrade MySQL eerst.* ✋ Upgrade niet wanneer je **PostgreSQL 9.x of lager** draait. *Upgrade PostgreSQL eerst.* 