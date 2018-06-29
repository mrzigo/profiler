namespace :redmine do
  namespace :plugins do
    namespace :profiler do

      desc 'Загрузка данных из CRM'
      task :reload => :environment do
        settings = Setting[PROFILER_SETTINGS_NAME]

        url = settings[PROFILER_URL].strip
        return if url.blank?
        begin
          uri = URI(url)
          response = Net::HTTP.get(uri)
        rescue
          raise "Ошибка получения данных с URL: ${url}"
        end
        raise("Пустые данные с URL: ${url}") if response.to_s.strip.blank?

        settings[PROFILER_USER_DATA] = JSON.parse(response)
        url = settings[PROFILER_URL_BOOK].strip
        return if url.blank?
        begin
          uri = URI(url)
          response = Net::HTTP.get(uri)
        rescue
          raise "Ошибка получения данных с URL: ${url}"
        end
        raise("Пустые данные с URL: ${url}") if response.to_s.strip.blank?
        settings[PROFILER_USER_TYPES] = JSON.parse(response)
        settings[PROFILER_LAST] = Time.new.strftime('%d-%m-%Y %H:%M')
        Setting[:plugin_profiler] = settings
      end
    end
  end
end
