**Отчет по лабораторной работе №2**
***
<li>Задание №1</li>

5) Смотрим диски в системе: 2 hhd диска sda(ssd1) и sdb(ssd2).

![disks](https://github.com/Kc0va/suzenOS/blob/master/laba%202/images/%D0%BF%D1%83%D0%BD%D0%BA%D1%82%205.png?raw=true)

Затем просматриваем, что RAID-массив проинициализирован корректно `cat /proc/mdstat`, в этом файле отражается текущее состояние RAID-массива.

![RAID](https://github.com/Kc0va/suzenOS/blob/master/laba%202/images/RAID.png?raw=true)

Команда `pvs`: отображает информацию о физическом томе, `lvs`: отображает информацию о логическом томе, `vgs`: отображает информацию о группе физических томов, `mount`: просмотр примонтированых устройств.

В итоге проделанного задания мы создали виртуальную машину с дисками ssd1 и ssd2, настроили LVM(Logical Volume Manager), RAID.

<li>Задание №2</li>

6) Копируем таблицу разделов со старого диска на новый: `sfdisk -d /dev/sda | sfdisk /dev/sdb`

![TABLICA](https://github.com/Kc0va/suzenOS/blob/master/laba%202/images/TABLICA.png?raw=true)
