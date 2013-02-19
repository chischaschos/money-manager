class IncomeSource
  include Mongoid::Document

  field :name, :type => String
  field :amount, :type => Float

  validates_numericality_of :amount
  validates_presence_of :name

end
