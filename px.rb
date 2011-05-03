class PX
  def self.method_missing(m, *args)
    m = m.to_s
    eval $c.join if m == '-@'
    m.scan(/(\w)(\w)/).each { |t| ($c ||= []) << (((t[0][0] - 97) * 26) + (t[1][0] - 97)).chr }
  end
end