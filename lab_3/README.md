# Задание 1

## Подзадание 1
Создайте новый git репозиторий в пустой директории.
```bash
git init
```

## Подзадание 2
Внутри директории создайте файл text.txt и выполните коммит данного файла в репозиторий.
```bash
touch text.txt
git add text.txt
git commit -m "feat: test file was added"
```

## Подзадание 3
Измените файл и выполните коммит внесенных изменений в репозиторий.
```bash
echo "Hello World" >> text.txt
git add text.txt
git commit -m "feat: test file was updated"
```

## Подзадание 4
Выполните откат изменений и вернитесь к предыдущему коммиту. Просмотрите файл и убедитесь, что перед вами его предыдущая версия.
```bash
git revert HEAD
git checkout HEAD~2
git diff HEAD main
```

## Подзадание 5
Сравните две версии файла и изучите вашу историю коммитов.
```bash
git checkout main
git diff HEAD~1 HEAD
git log
```

# Задание 2

## Подзадание 1
Разделите ваш репозиторий на две ветки.
```bash
git branch test
```

## Подзадание 2
Измените текущую ветку.
```bash
git switch test
```

## Подзадание 3
Измените файл и выполните коммит на каждой из веток.
```bash
echo "Hello World" >> text.txt
git add text.txt
git commit -m "feat: test file was updated"

git switch main
echo "Earth" >> text.txt
git add text.txt
git commit -m "feat: test file was updated"
```

## Подзадание 4
Выполните слияние двух веток.
```bash
git merge test
git diff main test
vim text.txt
git add text.txt
git commit -m "fix: conflicts were resolved"
```

## Подзадание 5
Выполните разделы “Введение” и “Едем дальше” руководства по git на сайте:
https://learngitbranching.js.org/?locale=ru_RU.