class PhoneNumber
  attr_reader :number

  def initialize(number)
    @number = clean(number)
  end

  def self.clean(number)
    trimmed_number = number.gsub(/\D+/,"")

    if (trimmed_number.length == 10)
      if valid_area_code(trimmed_number)
        nil
      elsif valid_exchange_code(trimmed_number)
        nil
      else
        trimmed_number
      end
    elsif (trimmed_number.length == 11) && (valid_country_code(trimmed_number))
      remove_counrty_code(trimmed_number)
    else
      return nil
    end
  end

  private

  def self.valid_country_code(trimmed_number)
    trimmed_number.start_with?("1")
  end

  def self.remove_counrty_code(trimmed_number)
    trimmed_number.slice(1..-1)
  end

  def self.valid_area_code(trimmed_number)
    trimmed_number.start_with?("1")
  end

  def self.valid_exchange_code(trimmed_number)
    trimmed_number.slice(3,3).start_with?("0")
  end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
