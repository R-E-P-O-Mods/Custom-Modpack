<h1 align="center">🎮 Custom BepInEx Modpack for Repo</h1>

<p align="center">
  📦 Плагины • 🛠 Патчеры • ⚙️ Конфигурации<br>
  Настраиваемый набор модов, синхронизируемый через Git
</p>



## 📂 Структура

> Всё содержимое лежит в папке `BepInEx`:
```
BepInEx/
├── plugins/     # Основные моды (DLL)
├── patchers/    # Патчеры BepInEx (если нужны)
├── config/      # Конфигурационные .cfg для модов
├── update_mods.bat  # Скрипт обновления
```



## 🚀 Установка (один раз)

1. 📥 Установите [Git for Windows](https://git-scm.com/downloads)
2. 📁 Перейдите в папку `.../BepInEx/` в директории игры
3. 🔧 Откройте PowerShell или CMD в этой папке:
    - (Shift + ПКМ → "Открыть окно PowerShell здесь")
4. 💻 Выполните команду:

```bash
git clone https://github.com/R-E-P-O-Mods/Custom-Modpack.git .
````

> ⚠️ ВАЖНО: точка `.` в конце команды — чтобы клонировать файлы прямо в текущую папку



## 🔄 Обновление модов

Для обновления до последних версий модов:

```bash
update_mods.bat
```

Или вручную:

```bash
git pull origin master
```



## 👥 Совместная работа

Все участники могут:

* Вносить изменения в `plugins`, `patchers`, `config`
* Коммитить и пушить обновления
* Использовать `update_mods.bat` для синхронизации



## 📄 Лицензия

Ниту.

<p align="center">
  <sub>🎮 Made with ❤️ for the Repo community • by <a href="https://github.com/R-E-P-O-Mods">R-E-P-O-Mods</a></sub>
</p>

