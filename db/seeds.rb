require 'csv'

#  seed
class DbSeed
  CSV.foreach('db/csv/images.csv') do |row|
    Image.create(
      id: row[0],
      image_name: row[1],
      serif_name: row[2],
      serif_ruby_name: row[3]
    )
  end

  CSV.foreach('db/csv/charas.csv') do |row|
    Chara.create(
      id: row[0],
      chara_name: row[1],
    )
  end
  
  CSV.foreach('db/csv/chara_mappings.csv') do |row|
    CharaMapping.create(
      id: row[0],
      image_id: row[1],
      chara_id: row[2],
    )
  end
end
