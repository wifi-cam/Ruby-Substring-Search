dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    results = {}
    str_arr = string.downcase.split 
    str_arr.each do |i| # iterate through given string
        dictionary.each do |str| # use string iterate through dict
            if i.include?(str)
                if results.has_key?(str)
                    results[str] += 1
                else results[str] = 1
                end
            end
        end
    end
    puts results
end

substrings('below going down horny it', dictionary)