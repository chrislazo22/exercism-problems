class Bob
  def self.hey(remark)
    if remark[-1] == "!" && remark[2].match(/[A-Z]/)
      "Whoa, chill out!"
    elsif remark[-1] == "?"
      "Sure."
    else
      "Whatever."
    end
  end
end
