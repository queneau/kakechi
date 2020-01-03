class MoneyrecordController < ApplicationController
    def index
        @moneyrecords = Moneyrecord.order(created_at: :asc)
    end

    def show
        @moneyrecord = Moneyrecord.find(params[:id])
    end

    def new
        @moneyrecord = Moneyrecord.new()
    end

    def edit 
          #debugger
          success = Moneyrecord.update(moneyrecord_params[:id], moneyrecord_params)
          if success
              redirect_to action: :index
          else
              render "edit"
          end
    end

    def create
        # debugger
		@moneyrecord = Moneyrecord.new(moneyrecord_params)
		if @moneyrecord.save
			redirect_to action: :index
		else
			render "new"
		end
    end
    
    def destroy
        moneyrecord = Moneyrecord.find(params[:id])
        moneyrecord.destroy 
        redirect_to action: :index
    end

    private

    def moneyrecord_params
      params.require(:moneyrecord).permit(:item, :amount, :month, :day, :id)
    end

end
