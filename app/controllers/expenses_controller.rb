class ExpensesController < ApplicationController

	def index
		@user = current_user
  	end

	def create
	    @expense = Expense.new(expense_params)

	    if @expense.save
	      redirect_to @expense
	    else
	      render :new, status: :unprocessable_entity
	    end
	 end

	 private

	  def expense_params
	    params.require(:expense).permit(:amount, :user_id, :partner_id, :category_id, :currency_id
	    )
	  end
end
