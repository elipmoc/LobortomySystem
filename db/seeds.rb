require 'csv'

#  seed
class DbSeed
  CSV.foreach('db/csv/images.csv') do |row|
    Image.create(
      id: row[0],
      image_name: row[1],
      serif_name: row[2]
    )
  end
end
