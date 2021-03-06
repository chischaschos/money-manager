class Expense
  include Mongoid::Document
  include Mongoid::Taggable

  field :title, :type => String
  field :description, :type => String
  field :date, :type => Time
  field :amount, :type => Float

  validates_numericality_of :amount
  validates_presence_of :title
  validates_datetime :date

  def self.daily date
    where(:date.gte => date.beginning_of_day,
          :date.lt => date.end_of_day)
  end
end
