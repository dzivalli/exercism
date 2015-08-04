class Bob
  def hey(remark)
    if remark.downcase != remark && remark.upcase == remark
      'Whoa, chill out!'
    elsif remark.strip.empty?
      'Fine. Be that way!'
    elsif remark.end_with? '?'
      'Sure.'
    else
      'Whatever.'
    end
  end
end
