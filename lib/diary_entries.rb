require 'pg'
class DiaryEntries

def self.all
  connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'daily_diary_test')
                 else
                   PG.connect(dbname: 'daily_diary')
                 end
    result = connection.exec('SELECT * FROM diary_entries;')
    result.map { |title| title['entry_title'] }
end


end
