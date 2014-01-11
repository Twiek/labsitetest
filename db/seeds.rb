# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# To seed very little zip data in strange format (preliminary)
# TODO Take care of Umlaute
CSV.foreach('db/fixtures/zip_seed.csv', col_sep: ';', headers: true) do |row|
  if row["Zusatz"]
    row["Zusatz"].gsub!(",", "")
    row["Zusatz"].gsub!(/^\s/, "")
    row["Zusatz"].gsub(" ", "_")
    name = row["Ort"] + "-" + row["Zusatz"]
    url_name = row["Ort"].downcase + "_" + row["Zusatz"].downcase
  else
    name = row["Ort"]
    url_name = row["Ort"].downcase
  end
  area = Area.create(name: name, url_name: url_name)
  ZipCode.create(zip: row["Plz"], area_id: area.id)
end