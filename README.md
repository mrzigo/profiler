# Расширенная информация по пользователю


== Описание


== Установка плагина
* Скопировать в папку plugins, папка с плагином должна называться profiler, например в папке plugins выполнить `git clone https://github.com/mrzigo/profiler ./profiler`
* В crontab добавить загрузку данных: `0 */2 * * * cd ....../redmine/ && bundle exec rake -s redmine:plugins:profiler:reload RAILS_ENV="production"`

== Удаление плагина
* rake redmine:plugins:migrate NAME=profiler VERSION=0 RAILS_ENV=production
* удалить папку с плагином
