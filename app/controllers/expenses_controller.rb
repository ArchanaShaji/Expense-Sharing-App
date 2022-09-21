class ExpensesController < ApplicationController

	def index
		@user = current_user.id 
  	end

	def create
	    @expense = Expense.create!(expense_params)

	    if @expense.save
	      redirect_to @expense
	    else
	      render :new, status: :unprocessable_entity
	    end
	 end

	 private

	  def expense_params
	    params.permit(:amount, :user_id, :partner_id, :category_id
	    )
	  end
end
