class FoodsController < ApplicationController
    
    def index
        @foods = Food.all

        render json: @foods
        
    end

    def show
        @food = Food.find(params[:id])

        render json: @food
        
    end

    def price
        @foods = Food.where('price BETWEEN ? AND ?', params[:min_price], params[:max_price])

        render json: @foods
    end
    
    def create
        @food = Food.new(
            name: params[:name], 
            price: params[:price]
        )
        @food.save!
    end

    #def destroy
     # @food = Food.delete(
      #  name: params[:name],
       # price: params[:price]
      #)
      #@food.save!
    #end
end