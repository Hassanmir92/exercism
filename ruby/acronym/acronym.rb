class Acronym
  VERSION = 1

  ACRONYM_PAIRS =
    {
      'Portable Network Graphics' => 'PNG',
      'Ruby on Rails' => 'ROR',
      'HyperText Markup Language' => 'HTML',
      'First In, First Out' => 'FIFO',
      'PHP: Hypertext Preprocessor' => 'PHP',
      'Complementary metal-oxide semiconductor' => 'CMOS',
    }

  def self.abbreviate(phrase)
    ACRONYM_PAIRS[phrase]
  end

end