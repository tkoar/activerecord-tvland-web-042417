require 'pry'
class Network < ActiveRecord::Base
  has_many :shows

  def sorry
    binding.pry
    "We're sorry about passing on John Mullaney's pilot"
  end
end
