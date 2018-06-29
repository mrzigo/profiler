PROFILER_PLUGIN_NAME = 'profiler'
PROFILER_SETTINGS_NAME = "plugin_#{PROFILER_PLUGIN_NAME}".to_sym
PROFILER_URL = 'url'
PROFILER_URL_BOOK = 'book'
PROFILER_USER_DATA = 'user_data'
PROFILER_USER_TYPES = 'user_types'
PROFILER_LAST = 'last_update'

Redmine::Plugin.register PROFILER_PLUGIN_NAME.to_sym do
  name 'Дополнительная информация пользователя'
  author 'DigitalWand (mr.zigo@yandex.ru)'
  description 'Показывает дополнительную информацию по пользователю, загруженную из CRM'
  version '0.1'
  url 'https://github.com/mrzigo/profiler'
  author_url 'https://github.com/mrzigo'

  settings :partial => 'settings/main', :default => {
      PROFILER_URL => 'https://inside.digitalwand.ru/rest/user',
      PROFILER_URL_BOOK => 'https://inside.digitalwand.ru/rest/spec-types',
      PROFILER_USER_DATA => {},
      PROFILER_USER_TYPES => {},
  }

  require_dependency File.dirname(__FILE__) + '/lib/view_hooks'
end
