require 'diary_entries'

describe DiaryEntries do
  describe '.all' do
    it 'displays list of saved diary entries' do

      connection = PG.connect(dbname: 'daily_diary_test')

      connection.exec("INSERT INTO diary_entries (entry_title) VALUES ('test title 1');")
      connection.exec("INSERT INTO diary_entries (entry_title) VALUES ('test title 2');")

      diary = DiaryEntries.all

      expect(diary).to include('test title 1')
      expect(diary).to include('test title 2')
    end
  end
end
