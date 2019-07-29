module AnotherModule
    @@DELTA = 5
    def will_do_pagination(c, l)
        puts "will_do_pagination(#{c}, #{l})"
        @@current = c.to_i
        @@last = l.to_i
        left = @@current - @@DELTA
        right = @@current + @@DELTA + 1
        @@range = Array.new
        @@rangeWithDots = Array.new
        @@l = -1
        for i in 1..@@last
            if i == 1 || i == @@last || i >= left && i < right
                @@range.push(i)
            end 
        end

        puts "range-> #{@@range}"

        for x in 0..@@range.length-1
            puts "#{x} @@range value: #{@@range[x]}"
            if @@l != -1 
                if (@@range[x] - @@l) == 2
                    @@rangeWithDots.push(@@l + 1)
                elsif (@@range[x] - @@l) != 1
                    @@rangeWithDots.push("...")
                end
            end
            @@rangeWithDots.push(@@range[x])
            @@l = @@range[x]
        end

        puts "rangeWithDots-> #{@@rangeWithDots}"

    end
end
