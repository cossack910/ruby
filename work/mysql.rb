require 'mysql2'

class Mysql
    def self.connect()
        return Mysql2::Client.new(
                            :host => "develop-db.czngn5nezmvv.ap-northeast-1.rds.amazonaws.com",
                        :username => "toshiaki",
                        :password => "genius_88",
                            :port => "3306",
                        :databese => "mysql"
                     )
    end
end 


con = Mysql.connect()
query = %q{select id, name from test.languages}
results = con.query(query)

results.each do |row|
    puts "--------------------"
    row.each do |key, value|
      puts "#{key} => #{value}"
    end
  end
