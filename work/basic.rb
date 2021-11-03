class Basic1
    def self.no00()
        p "Hello World!"
    end

    def self.no01(num1 = 12345, num2 = 23456)
        p num1 + num2
    end

    def self.no02(num = 12345)
        p num % 7
    end

    def self.no03(num)
        p num
    end
end

Basic1::no00()
Basic1::no01()
Basic1::no02()
Basic1::no03(12312)

class Basic2
    def no04(num)
        p num * 3
    end

    def no05(num1,num2)

        if num2 == 0 then
            return "error"
        end

        sum = num1 + num2
        diff = num1 - num2
        mlt = num1 * num2
        div = num1 / num2
        ext = num1 % num2

        return {"和"=>sum, "差"=>diff, "積"=>mlt, "商"=>div, "余り"=>ext}
    end

    def no06(num)
        if num == 0 then
            p "zero"
        end
    end

    def no07(num)
        if num == 0 then
            p "zero"
        else
            p "not zero"
        end
    end

    def no08(num)
        if num > 0 then
            p "pojitive"
        end
    end

    def no09(num)
        if num > 0 then
            p "pojitive"
        elsif num == 0 then
            p "zero"
        else 
            p "nugative"
        end    
    end

    def no10()
        for num in 0..9 do
            p "Hello World"
        end
    end

    def no11(num)
        for n in 1..num do
            p "Hello World"
        end
    end

    def no12(num)
        for n in 0..num do
            p n 
        end
    end

    def no13(num)
        (0..num).to_a.reverse.each do |n|
            p n 
        end
    end

    def no14(num)
        for n in 0..num do
            if num > n * 2
                p n * 2
            end
        end
    end

    def no15()
        num = gets.to_i
        if num == 0 then
            p "end"
        else
            no15()
        end
    end

    def no16()
        array = (0..9).to_a
        for aa in array do
            p aa
        end
    end

    def no17(num)
        array = (0..9).to_a
        for aa in array do
            array[aa] = num
            p aa
        end
        p array
    end

    def no18()
        aa = Array.new(4)
        for len in (0..aa.length) do
            aa[len] = gets.to_i
        end
        p aa
    end
end

b2 = Basic2.new()
b2.no04(45)
p b2.no05(5,2)
b2.no06(0)
b2.no07("1231231")
b2.no08(0)
b2.no09(00)
b2.no10()
p '---------------'
b2.no11(3)
p '---------------'
b2.no12(10)
p '---------------'
b2.no13(20)
p '---------------'
b2.no14(7)
p '---------------'
#b2.no15()
p '---------------'
b2.no16()
p '---------------'
b2.no17(8)
p '---------------'
b2.no18()