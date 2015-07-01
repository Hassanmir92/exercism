class PhoneNumber
  attr_reader :phone

  def initialize(phone)
    if phone.length == 11 && phone.start_with?('1') 
      @phone = clean(phone)[1..-1]
    else
      @phone = clean(phone)
    end
  end

  def area_code
    phone[0..2]
  end

  def exchange_code
    phone[3..5]
  end

  def subscriber_number
    phone[6..9]
  end

  def to_s
    "(#{area_code}) #{exchange_code}-#{subscriber_number}"
  end

  def number
    if valid?
      phone
    else
      '0'*10
    end
  end

  def clean(number)
    return '0' * 10 if number.match(/[a-zA-Z]/)
    number.gsub(/[^\d]/, '')
  end

  def valid?
    return true if phone.length == 10
    return true if phone.length == 11 && phone.start_with?('1')
    false
  end

end

