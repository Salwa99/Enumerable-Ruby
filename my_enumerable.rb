module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    array = []
    list.each do |i|
      array.push(i) if yield i
    end
    p array.length == list.length
  end

  def any?
    array = []
    list.each do |i|
      array.push(i) if yield i
    end
    p !array.empty?
  end

  def filter
    array = []
    list.each do |i|
      array.push(i) if yield i
    end
    p array
  end
end
