def ceaser_cipher(string, shift)
  shift = shift % 26
  answer = string.split('')
  .map!{
    |val|
    new_val = val
    shift.times {
      new_val = new_val.next
    }
    new_val = new_val.length == 1 ? new_val : new_val[-1]
    is_letter(new_val) ? new_val : val
  }
  .join('')
  puts answer
end

def is_letter(val)
  val.count("a-zA-Z") > 0
end

ceaser_cipher("Testing testing... 1,2,3", 14)