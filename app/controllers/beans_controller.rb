class BeansController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create]
    
    def index
        @beans = Bean.all
    end

    def toppage
    end
  
    def new
        @bean = Bean.new
      end
    
      def create
        bean = Bean.new(bean_params)
        bean.user_id = current_user.id
        if bean.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      
      def show
        @bean = Bean.find(params[:id])
      end

      def edit
        @bean = Bean.find(params[:id])
      end

      def update
        bean = Bean.find(params[:id])
        if bean.update(bean_params)
          redirect_to :action => "show", :id => bean.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        bean = Bean.find(params[:id])
        bean.destroy
        redirect_to action: :index
      end

      private
      def bean_params
        params.require(:bean).permit(:name, :area, :url, :taste, :price, :grind, :overall,:level, :image_top , images: [])
      end

      
    
end
