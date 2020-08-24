def count_occurences(s, t)
    if (s.length < t.length) 
        return 0
    end

    l = s.length
    res = 0
    x = s + s
    for i in 0..l 
        res += ((x.slice(i, t.length) == t) ? 1 : 0)
    end
    return res
end

def substrings(str, dict) 
    res = Hash.new
    dict.each do |t|
        c = count_occurences(str, t)
        if c > 0
            res[t] = c
        end
    end
    return res
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)