class Hello

    #アクセサ
    attr_accessor :name
    
    #クラス変数
    @@unko = 'unko'

    def initialize(name)
        #インスタンス変数
        @name = name
    end

    def talk
        puts "hello , #{@name}"
    end

end

hello = Hello.new('unko')
puts hello.name