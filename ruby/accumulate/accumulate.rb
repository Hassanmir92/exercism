class Array

  def accumulate
    map do |e|
      yield(e)
    end
  end

end