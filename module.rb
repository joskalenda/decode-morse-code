module MyEnumerable
  def all?(&block)
    compute = true
    each {|i| compute = false unless block.yield(i) }
    compute
  end
