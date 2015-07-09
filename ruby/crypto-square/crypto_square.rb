class Crypto
  attr_reader :string

  def initialize(string)
    @string = string.tr('^A-Za-z0-9', '').downcase
  end

  def normalize_plaintext
    string
  end

  def size
    Math.sqrt(string.length).ceil
  end

  def plaintext_segments
    normalize_plaintext.chars.each_slice(size).map{ |s| s.join('') }.to_a
  end

  def ciphertext
    coded_message.join('')
  end

  def normalize_ciphertext
    coded_message.join(' ')
  end

  def coded_message
    chunk_size = size
    chunks = plaintext_segments.map do |s|
      Array.new(chunk_size) { |i| s[i] or '' }
    end
    chunks.transpose.map{ |s| s.join('') }
  end

end