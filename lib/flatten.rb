# frozen_string_literal: true

class Flatten
  def process(array)
    return 'Wrong param type, an Array required' unless array.instance_of? Array

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
