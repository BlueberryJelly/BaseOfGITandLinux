# Задание 1

## Подзадание 1
Создайте новый git репозиторий в пустой директории.
```bash
git config --global user.name "Somebody"
git config --global user.email "notarealone@unreal.fake"
git config --global init.defaultBranch "main"
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