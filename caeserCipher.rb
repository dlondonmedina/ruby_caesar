def ceasar_cipher(str, shift)
    out = []

    str.each_byte do |c|
        if c == 32
            tmp = 32
        elsif c < 97
            tmp = (((c + shift) - 65) % 26) + 65
        else
            tmp = (((c + shift) - 97) % 26) + 97
        end
        out.append(tmp)
    end

    return out 

end


