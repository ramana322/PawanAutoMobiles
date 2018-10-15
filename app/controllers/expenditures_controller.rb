class ExpendituresController < ApplicationController
	 
	def new
		@expenditure = Expenditure.new
	end

	def index
    @expenditures = Expenditure.find_by_year(Date.today.year).group_by do |expenditure|
      expenditure.spent_on.beginning_of_month 
    end.sort.reverse.to_h
	end

	def create
		@expenditure = Expenditure.new(expenditure_params.merge(created_by: current_user.id))
			
		if @expenditure.save
			flash[:notice] = "Expenditure was successfully created"
			redirect_to expenditures_path
		else
			render 'new'
		end
	end

  def show
 		@expenditure = Expenditure.find(params[:id])
 	end
  
  def edit
    @expenditure = Expenditure.find(params[:id])
  end

  def update
  	@expenditure = Expenditure.find(params[:id])

  	if @expenditure.update(expenditure_params)
  		flash[:notice] = "Expenditure was successfully Updated"
  		redirect_to expenditures_path	
  	else 
  		render'edit'
  	end
  end

  def destroy
  	@expenditure = Expenditure.find(params[:id])
  	@expenditure.destroy
  	flash[:notice] = "Expenditure was successfully Deleted"
  	redirect_to expenditures_path
  end

	private

  def expenditure_params
    params.require(:expenditure).permit(:spent_on, :description, :amount)
	end
end