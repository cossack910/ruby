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

class Poop

    def deru
        unko
    end

    def unko
        "tinko"
    end
end

class Mini_poop < Poop
    def unko
        super
        p "unko"
    end
end

p = Mini_poop.new
p.unko