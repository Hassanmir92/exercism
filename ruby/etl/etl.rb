class ETL

  def self.transform(old)
    data = {}
    old.each do |key, value|
      value.each do |v|
        data[v.downcase] = key
      end
    end
    data
  end

end