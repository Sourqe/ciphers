def caesar_cipher (string, count)
    # store the individual words
    words = string.split(" ")
    words.each do |word|
        # for each character in a word
        word.each_char {|c| 
            if ("A".."Z").include?(c) || ("a".."z").include?(c) 
                # move the character "count" times
                count.times{
                    # if the character is a "z" start over again
                    if c == "z"
                        c = "a"
                    elsif c == "Z"
                        c = "A"
                    else 
                        c = c.next
                    end
                }
            end
            print c
        }
        print " "
    end
end

# small tests
caesar_cipher("What a string!", 5)
caesar_cipher("Testing", 3)
caesar_cipher("Hello", 2)