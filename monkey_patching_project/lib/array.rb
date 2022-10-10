# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        #return false if !self.all?{|i| i.is_a?(Integer)}
        return nil if self == []
        return self.max - self.min

    end

    def average
        return nil if self == []
        return self.sum/(self.length * 1.0)

    end

    def median
        return nil if self == []
        arr = self.sort
        mid = (arr.length- 1)/2
        if arr.length % 2 == 0
             return (arr[mid] + arr[mid + 1])/2.0
        end

        arr[mid]

    end


    def counts
        res = Hash.new(0)
        self.each {|i| res[i] += 1}
        res
    end


    def my_count(i)
        cnt = 0
        self.each {|j| cnt += 1 if j == i}
        cnt
    end

    def my_index(i)
        (0...self.length).each {|j| return j if i== self[j] }
        nil
    end

    def my_uniq
        res = Hash.new(0)
        self.each{|i| res[i] = 0}
        res.keys()
    end

    def my_transpose
        rows, cols = self.length, self[0].length
        res = []
        (0...cols).each do |j|
            temp = []
            (0...rows).each do |i|
                temp << self[i][j]
            end
            res << temp
        end
        res
    end
end


