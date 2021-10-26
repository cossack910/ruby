class Test

    attr_accessor :name
    def testes(name)
        @name = name
    end
end

module Test2
    class Test
        def unchi()
            p 'うんち'
        end
    end
end

t = Test.new()
p t.testes('うんこコオここここここ')

tt = Test2::Test.new()
tt.unchi