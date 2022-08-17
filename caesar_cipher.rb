def caesar_cipher (string, shift = 0)
    result = ''
    string.each_char do |n|
        # determine if letter  
        if n.ord.between?(65, 90) || n.ord.between?(97, 122)
            new_n = n.ord + shift
            # wrap z to a
            new_n -= 26 if (new_n > 91 && n.ord < 91) || new_n > 122
            # convert integers back to letters
            result += new_n.chr 
        else
           result += n
        end
    end
    result
end

puts (caesar_cipher("Dog's are amazing!", 6))
