# frozen_string_literal: true

def caesar_shift(string, shift)
  shift = transform_shift(shift)
  char_array = string.chars
  result = ''
  char_array.each do |char|
    result += char_return(shift, char)
  end
  result
end

def char_return(shift, char)
  bytes = char.ord
  if char.match(/[a-z]/) && bytes + shift > 122
    shift -= 26
  elsif char.match(/[A-Z]/) && bytes + shift > 90
    shift -= 26
  end
  shift = 0 if char.match(/\W/)
  (bytes + shift).chr
end

def transform_shift(shift)
  shift += 26 while shift.negative?
  shift -= 26 while shift > 25
  shift.to_i
end
