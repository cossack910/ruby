class Beginner
    def no20(num1,num2)
        ans = num1 /num2
        p ans
        p ans * num2
    end

    def no21()
        num = gets.to_i
        if num > 5 and num < 20 then
            p 'OK'
        end 
    end

    def no22()
        num = gets.to_i
        if num >= 10 or num <= -10 then
            p 'OK'
        end 
    end

    def no23()
        num = gets.to_i
        if num >= -5 and num < 10 then
            p 'OK'
        else
            p 'NG'
        end
    end

    def no24()
        num = gets.to_i
        p -10 < num && num < 0 || 10 < num ? "あああ" : "NG"
    end

    def no25()
        num = gets.to_i
        
        calc = {
            "range1" => num < -10,
            "range2" => -10 < num && num  < 0,
            "range3" => 0 < num
        }
            
        out = calc.find{|k,v| v == true}
        p out[0]
    end

    def no26()
        num = gets.to_i

        numbers = {
            1 => "one",
            2 => "two",
            3 => "three",
        }

        p numbers.fetch(num, false) ? numbers[num] : "others"
    end

    def no27()
        num = gets.to_i
        p num < 0 ? 0 : num * (num + 1) /2 
    end

    def no28()
        num = gets.to_i
        p num < 0 ? 1 : kaijo_calc(num)
    end

    def kaijo_calc(num)
        ans = 1
        for n in 1..num do
            n ==1 ? ans = 1 : ans = ans * n
        end
        return ans
    end

    def bekijo_calc(num)
        ans = 0
        for n in 1..num do
            n == 1 ? ans = num : ans = ans * num 
        end
        p ans
    end

    def no29()
        ans = 0
        for i in 0..4 do
            num= gets.to_i
            ans = ans + num
        end
        p ans
    end

    def no30()
        num = gets.to_i
        num < 0  ? return : p_astrisk(num)
    end

    def p_astrisk(num)
        for n in 0..num do
            print "*"
        end
        puts
    end

    def no31()
        num = gets.to_i
        num < 0  ? return : p_astrisk(num)
    end

    def p_astrisk(num)
        for n in 1..num do
            print n % 5 != 0 ? "*" : "* "
        end
        puts
    end

    def no32()
        for n in 1..20 do
            p n % 5 == 0 ? "bar" : n
        end
    end

    def no33()
        num = gets.to_i
        arr = (1..9).to_a
        arr.delete_at(num-1)
        arr.each do |val|
            p val
        end
    end

    def no34()
        num = gets.to_i
        arr = (1..9).to_a
        arr.delete_at(num-1)
        arr.delete_at(num-1)
        arr.each do |val|
            p val
        end
    end

    def no35()
        num = gets.to_i
        arr = [3,7,0,8,4,1,9,6,5,2]
        p arr[num]
    end

    def no36()
        num1 = gets.to_i
        num2 = gets.to_i
        arr = [3,7,0,8,4,1,9,6,5,2]
        p arr[num1] * arr[num2]
    end

    def no37()
        num = gets.to_i
        arr = [3,7,0,8,4,1,9,6,5,2]
        p arr[arr[num]]
    end

    def no38()
        arr = [3,7,0,8,4,1,9,6,5,2]
        key = arr[0]
        p arr[0]
        for i in 0..arr.size-2 do
            p arr[key]
            key = arr[key]
        end
    end

    def no39()
        arr = [3,7,0,8,4,1,9,6,5,2]
        for i in 0..arr.size do
            if i > arr.size - 2
                break
            end 
            p arr[i] - arr[i+1]
        end
    end
end

b = Beginner.new()
b.no39()