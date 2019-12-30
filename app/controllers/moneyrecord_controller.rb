class MoneyrecordController < ApplicationController
    def index
        @money_record = Moneyrecord.order(created_at: :asc)
    end

    def show
        @money_record = Moneyrecord.find(params[:id])
    end

    def new
        @money_record = Moneyrecord.new()
    end

    def edit
        @money_record = Moneyrecord.find(params[:id])
    end

    def update
    end

    def destroy
    end

end
