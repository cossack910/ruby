class Middle

    def no40()
        num = gets.to_i
        p num % 2 == 0 ? "even" : "odd"
    end

    def no41()
        num = gets.to_i
        p num > 0 ? "single figure" : "not single figure"
    end

    def no42()
        num1 = gets.to_i
        num2 = gets.to_i
        num3 = gets.to_i
        p num1 <= num2 && num2 <= num3 ? "OK" : "NG"
    end

    def no44()
        money = gets.to_f
        doll = gets.to_f
        cent = doll/100
        p_doll = money/doll
        p_cent = (money%doll)/cent
        p money, "円は", p_doll, "ドル" , p_cent , "セント"

    end  
    
    def no45()
        distance = gets.to_i

        price = 0
        if distance > 1700 && (distance - 1700) % 313 == 0
            price = (distance - 1700) / 313 * 80 
        else
            price = ((distance - 1700) / 313 + 1)* 80 
        end

        price += 610
        p price

    end

    def no46()
        people_num = gets.to_i

        price = 0
        if people_num < 5
            price = people_num * 600
        elsif people_num >= 5 && people_num < 20
            price = people_num * 550
        elsif people_num >= 20
            price = people_num * 500
        end
        p price

    end    

    def no47()
        a = gets.to_i
        b = gets.to_i

        tmp = a
        a = b
        b = tmp
        p "a=#{a}, b=#{b}"

    end

    def no48()
        num = gets.to_i
        while num != 1 do
            num % 2 == 0 ? num = num/2 : num = num * 3 + 1
            p num
        end

    end

    def self.no49()
        for i in 1..9 do
            for j in 1..9 do
                print (i * j).to_s, '   '
            end
            puts
        end
    end

    def self.no50()
        for i in 1..100 do
            if i % 3 == 0 && i % 5 == 0 
                p "foobar"
                next
            end
            
            if i % 3 == 0
                p "foo"
                next
            end    

            if i % 5 == 0
                p "bar"
                next
            end
            p i
        end
    end  
    
    def self.no51()
        price = gets.to_i
        yen100 = (price/100).to_s
         yen10 = ((price%100)/10).to_s
          yen1 = ((price%10)/1).to_s
        p "100円玉#{yen100}枚,10円玉#{yen10}枚,1円玉#{yen1}枚" 
    end

    def self.no52()
        year = gets.to_i
        if year % 4 == 0 && year % 100 != 0 || year % 4 == 0 && year % 400 == 0
            p "閏年である"
        else
            p "閏年でない" 
        end
    end

    def self.no53()
        num = gets.to_i
        div = 2

        while num >= div do
            if num % div == 0
                p div
                num = num/div
            else
                div += 1
            end
        end
    end

    def self.no54()
        arr = []
        input = gets.to_i
        for i in 0..input do
            num = gets.to_i
            arr.push(num)
        end

        p arr.max, arr.min
    end

    def self.no55()
        for i in 0..3 do
            for fly in 0..9 do
                print "とんで"
            end
            for m in 0..3 do
                print "まわって"
            end
            print "まわる"
            puts
        end
    end

    def self.no56()
        num = gets.to_i
        arr = Array.new(15)

        for i in 0..arr.size() do
           arr[i] = num%2
           num = num/2 
        end
        
        arr.reverse_each{|x| print x}
        puts
    end

    def self.no57()
        number_of_people = gets.to_i
        for i in 0..number_of_people do
            point = gets
            test_point = point.split()
            test_point.map!(&:to_i)
            p test_point.sum/test_point.size()
        end
    end

end

Middle.no57()