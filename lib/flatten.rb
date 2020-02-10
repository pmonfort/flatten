# frozen_string_literal: true

class Flatten
  def process(array)
    collect(array)
  end

  private

  def collect(array)
    partial = []
    array.each do |item|
      if item.instance_of? Array
        partial += collect(item)
      else
        partial << item
      end
    end
    partial
  end
end
