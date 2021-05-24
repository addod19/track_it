class WaterHelpers
  def self.progress_calculation(water)
    hash = {}
    hash['amount'] = water.inject(0) { |sum, v| sum + v.amount }
    hash
  end
end
