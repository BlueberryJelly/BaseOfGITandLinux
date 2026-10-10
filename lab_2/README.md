# Задание 1

## Подзадание 1
Просмотрите существующие в вашей системе глобальные переменные и переменные оболочки с помощью одной команды.
```bash
set
```

## Подзадание 2
Добавьте новую локальную переменную с именем MY_LOCAL_VAR и установите ее значение равным “local_var_value”. Откройте терминал в новом окне и проверьте наличие созданной  переменной.
```bash
MY_LOCAL_VAR="local_var_value"
```
В новом окне.
```bash
echo $MY_LOCAL_VAR
```

## Подзадача 3
Используя конфигурационный файл .bashrc создайте переменную оболочки с именем  MY_SHELL_VAR и значением равным “shell_var_value”. Убедитесь, что она доступна в любом окне терминала.
```bash
echo 'MY_SHELL_VAR="shell_var_value"' >> ~/.bashrc
```
В новом окне.
```bash
echo $MY_SHELL_VAR
```

## Подзадача 4
Используя файл environment в /etc/environment создайте глобальную переменную  MY_GLOBAL_VAR со значением "global_var_value". Проверьте ее доступность в новом окне  терминала. Выполните команду python3 -c 'import os; print(os.getenv("MY_GLOBAL_VAR"))' и  убедитесь, что вы получили значение переменной.
```bash
sudo sh -c 'echo MY_GLOBAL_VAR=global_var_value >> /etc/environment'
```
В новом окне.
```bash
python3 -c 'import os; print(os.getenv("MY_GLOBAL_VAR"))'
```

# Задание 2

## Подзадание 1
Для текущего пользователя системы вывести все группы, в которых он состоит.
```bash
groups
```

## Подзадание 2
Создайте группу “new_group” с произвольным паролем, новую директорию и файл test_file.txt  внутри этой директории, содержащий произвольную информацию.
```bash
sudo groupadd new_group
sudo gpasswd new_group
mkdir -p new_group_dir
echo "123" > new_group_dir/test_file.txt
```

## Подзадание 3
Запретите чтение, запись и исполнение файла test_file.txt для всех остальных пользователей.  Для данного файла измените закрепленную за ним группу пользователей на new_group, а  владельца файла на root.
```bash
chmod 770 new_group_dir/test_file.txt
sudo chgrp new_group new_group_dir/test_file.txt
sudo chown root new_group_dir/test_file.txt
```

## Подзадание 4
Попробуйте записать новую информацию в файл. Добавьте текущего пользователя в группу  new_group и добавьте в конец файла строку "User currently in the group".
```bash
echo "321" > new_group_dir/test_file.txt
sudo usermod -aG new_group $USER
echo "User currently in the group" >> new_group_dir/test_file.txt
```

# Задание 3

## Подзадание 1
Создайте символическую ссылку с именем tf на новый файл test_file.txt в любой директории  указанной в $PATH. Запретите чтение, запись и выполнение ссылки для группы и всех остальных  пользователей. Измените владельца файла на root. Проверьте, сохранился ли у вас доступ к файлу  по ссылке? Присутствует ли у вас доступ к файлу напрямую?
```bash
sudo ln -s "$PWD/new_group_dir/test_file.txt" /usr/local/bin/tf
sudo chmod 700 /usr/local/bin/tf
sudo chown root "$PWD/new_group_dir/test_file.txt"
```