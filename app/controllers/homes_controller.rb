class HomesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    
    def index 
      @homes = Home.all
    end
    
    def new
        @home = Home.new
      end
    
      def create
        home = Home.new(home_params)
        home.user_id = current_user.id

        if home.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @home = Home.find(params[:id])
        end
    
      def edit
        @home = Home.find(params[:id])
        end

      def update
        home = Home.find(params[:id])
        if home.update(home_params)
          redirect_to :action => "show", :id => home.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        home = Home.find(params[:id])
        home.destroy
        redirect_to action: :index
      end

      private
      def home_params
        params.require(:home).permit(:name, :area, :price, :grind, :taste, :repeat, :overall,:level)
      end

end 
