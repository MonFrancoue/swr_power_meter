# swr_power_meter
Repo of Swr Power Meter project of F8KGL

Afin d'optimiser la qualité de ses communications, l'OM cherche à rendre maximum le transfert de puissance entre l’antenne et l’émetteur (et vice et versa). Ce point de fonctionnement optimum est atteint lorsque les impédances entre l’antenne et l’émetteur sont « adaptées ». Alors, la puissance réfléchie est minimale (idéalement nulle), ou le « SWR » (ou ROS), pour « Standing Wave Ratio » (ou Rapport d’Onde Stationnaire) est proche de (idéalement égal à) 1.

Le « SWR Power Meter F8KGL » (ou Wattmètre/ROSmètre F8KGL) est un dispositif permettant de mesurer la puissance transmise à l’antenne, la puissance réfléchie, et le « SWR ». Il donne ainsi la mesure de la qualité de la chaîne de transmission TRX/Antenne.

Le « SWR Power Meter F8KGL » doit répondre aux besoins suivants : 

	-mesurer une puissance de 1W à 500W, avec une précision de 10 %
	-mesurer une puissance dans les 3 bandes radioamateurs HF, VHF, UHF
	-être utilisable par une grande majorité des TRX radioamateurs (50 Ω)
	-être alimenté par une source extérieure en 13,8V, ou par un pack batterie 4x1,5V LR6
	-atténuer le moins possible le signal à transmettre (max 0,2dB)
	-afficher le résultat de la mesure sur un écran LCD (puissance en W, et le SWR sans unité)
	-être solide et robuste pour une utilisation en contest et /P
	-être vendable sous la forme de kit

Ces besoins ont été définis par l’état de l’art technique actuel. En particulier, la technologie moderne appelle l’utilisation de l’électronique numérique le plus souvent possible. C’est pourquoi, l’affichage sur un écran LCD a été choisi. De plus, l’utilisation de moyens informatiques, aussi simples et modestes soient-ils, est préconisé. C’est pourquoi, un microcontrôleur a été choisi pour faire l’interface entre la mesure et l’affichage.

Ce dispositif a été conçu par les OM du club radioamateur « Vauréal Amitié Radio », situé à Vauréal (95), sous l’indicatif F8KGL.
Le projet a été développé par André F0EOS, et Fabrice F4BJH. Portons également à l’attention du lecteur, que l’idée initiale vient de Pierre F1FDD.


Pour générer le .hex : 

$ cd swr_power_meter/prj
$ make


Pour la simulation sous gpsim0.31
$ cd gpsim-0.31.0/modules
$ ln -s .../swr_power_meter/src/hw/sim/gpsim/lib/ltc2305.cc
$ ln -s .../swr_power_meter/src/hw/sim/gpsim/lib/ltc2305.h
$ ln -s .../swr_power_meter/src/hw/sim/gpsim/lib/swrpowermeterf8kgl_modules.cc 

$ cd ..
$ $ autoreconf
$./configure
$make
$sudo make install
$sudo /sbin/ldconfig

$ cd swr_power_meter/bin
$ gpsim -s <nom_du_fichier>.cod