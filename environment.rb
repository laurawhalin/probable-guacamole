require "rubygems"
require "active_record"
require "sqlite3"

# environment.rb
# recursively requires all files in ./lib and down that end in .rb
Dir.glob("./lib/*").each do |folder|
  Dir.glob(folder +"/*.rb").each do |file|
    require file
  end
end

# tells AR which db file to use
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "./db/humanresources.db"
)
