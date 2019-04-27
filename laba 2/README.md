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

6) Копируем таблицу разделов со старого диска на новый: `sfdisk -d /dev/sda | sfdisk /dev/sdb`:

![TABLICA](https://github.com/Kc0va/suzenOS/blob/master/laba%202/images/TABLICA.png?raw=true)

 Добавляем в рейд-массив новый диск: `mdadm —manage /dev/md0 —add /dev/sdb`:

![RAID2](https://github.com/Kc0va/suzenOS/blob/master/laba%202/images/RAID2.png?raw=true)

Cинхронизация разделов, не входящих в RAID, копируя с "живого" диска на новый: `dd if=/dev/sda1 of=/dev/sdb1`:

![noRAID](https://github.com/Kc0va/suzenOS/blob/master/laba%202/images/noRAID.png?raw=true)

В итоге проделанного задания мы проэмулировали отказ одного из дисков, удалили диск ssd1, сохранён диск ssd2, добавлен диск ssd3.

<li>Задание №3</li>

5) Копируем файловую таблицу со старого диска на новый: `sfdisk -d /dev/sda | sfdisk /dev/sdb`:

![TABLICA2](https://github.com/Kc0va/suzenOS/blob/master/laba%202/images/TABLICA2.png?raw=true)

При выводе мы замечаем, что в новом диске sdb появились разделы: sdb1, sdb2.

![sdb](https://github.com/Kc0va/suzenOS/blob/master/laba%202/images/sdb.png?raw=true)

Устанавливаем загрузчик на новый диск sdb: `grub-install /dev/sdb` - это загрузчик, который загружает нашу операционную систему, и он нам нужен на новом диске после удаления старого.

В итоге у нас установлен новый рейд-массив md63, проверяем при помощи команды `cat /proc/mdstat`:

![md63](https://github.com/Kc0va/suzenOS/blob/master/laba%202/images/md63.png?raw=true)

![md632](https://github.com/Kc0va/suzenOS/blob/master/laba%202/images/md632.png?raw=true)
