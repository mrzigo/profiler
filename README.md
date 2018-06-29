# Расширенная информация по пользователю


### Описание
Таск (redmine:plugins:profiler:reload) выгружает данные из CRM по 2 адресам (пользователи и справочник) и затем отображает данные в карточке пользователя

### Установка плагина
* Скопировать в папку plugins, папка с плагином должна называться profiler, например в папке plugins выполнить `git clone https://github.com/mrzigo/profiler ./profiler`
* В crontab добавить загрузку данных: `0 */2 * * * cd ....../redmine/ && bundle exec rake -s redmine:plugins:profiler:reload RAILS_ENV="production"`
* Перезапустить redmine (service redmine restart)

### Удаление плагина
* Удалить папку с плагином
* Перезапустить redmine (service redmine restart)
