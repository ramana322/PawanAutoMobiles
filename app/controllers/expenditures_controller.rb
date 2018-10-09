class ExpendituresController < ApplicationController
	 
	def new
		@expenditure = Expenditure.new

	end

	def index

	end

	def create
		@expenditure = Expenditure.new(expenditure_params)
		
	if @expenditure.save

	flash[:notice] = "Expenditure was successfully created"

	redirect_to expenditure_path(@expenditure)	 

	else

	render 'new'

	end
end
   def show
   	@expenditure = Expenditure.find(params[:id])
   	end

	private

    def expenditure_params

     params.require(:expenditure).permit(:spent_on, :paid_to)

end
	
end