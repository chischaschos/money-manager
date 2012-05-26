module Services
  class ExpenseReport
    attr_accessor :title, :expenses

    def initialize range
      self.title = DateTime.current.strftime "%Y - %B"
      self.expenses = (DateTime.current.at_beginning_of_week .. DateTime.current.at_end_of_week).to_a.map do |date|
        daily_report date
      end
    end

    def each
      self.expenses.each {|expense| yield expense }
    end

    def daily_report date
      expenses = Expense.daily date

      OpenStruct.new.tap do |daily_expense_report|
        daily_expense_report.total = daily_total expenses
        daily_expense_report.tags =  sorted_tags expenses
        daily_expense_report.date = date
      end
    end

    def daily_total expenses
      expenses.reduce(0) {|reduced, expense| reduced += expense.amount; reduced }
    end

    def sorted_tags expenses
      expenses.reduce({}) do |reduced, expense|
        [ expense.tags ].flatten.each do |tag|
          reduced[tag] ||= 0
          reduced[tag] += expense.amount
        end

        reduced
      end
    end

  end
end
