module MyEnumerable
  def all?(&block)
    compute = true
    each {|i| compute = false unless block.yield(i) }
    compute
  end

  def any?(&block)
    compute = false
    each { |i| compute = true if block.yield(i) }
    compute
  end

  def filter(&block)
    compute = []
    each { |i| compute.push(i) if block.yield(i) }
    compute
  end
end