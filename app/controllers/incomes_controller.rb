class IncomesController < ApplicationController

	def index
		@incomes = Income.all.group_by do |income|
			income.recieved_on.beginning_of_month 
		end.sort.reverse.to_h
	end

	def new
		@income = Income.new
	end

	def create
		@income = Income.new(income_params)

		if @income.save
			flash[:notice] = "Income has been added successfully."
			redirect_to incomes_path
		else
			render :new
		end
	end

	def edit
		@income = Income.find(params[:id])
	end

	def update
		@income = Income.find(params[:id])

		if @income.update(income_params)
			flash[:notice] = "Income has been updated successfully."
			redirect_to incomes_path
		else
			render :edit
		end
	end

	def destroy
		@income = Income.find(params[:id])

		if @income.destroy
			flash[:alert] = "Income has been deleted successfully."
			redirect_to incomes_path
		else
			flash[:error] = "Unable to delete income. Please try again."
			redirect_to incomes_path
		end
	end

	private

	def income_params
		params.require(:income)
					.permit(
				    :recieved_on,
				    :description,
				    :amount,
					)
	end

end
