class FlowersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

    def top
    end
    
    def shiraberu
    end
    
    def kouchi
    end

    def ehime
    end

    def kagawa
    end

    def tokushima
    end

    def kansyo
    end

    def active
    end

    def goumet
    end

    def nature
    end

    def nonbiri
    end


    def index
        @flowers = Flower.all
    end
    
    
    def new
        @flower = Flower.new
      end
    
      def create
        flower = Flower.new(flower_params)

        flower.user_id = current_user.id

        if flower.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @flower = Flower.find(params[:id])
        @comments = @flower.comments
        @comment = Comment.new
      end

      def edit
        @flower = Flower.find(params[:id])
      end
    
      def update
        flower = Flower.find(params[:id])
        if flower.update(flower_params)
          redirect_to :action => "show", :id => flower.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        flower = Flower.find(params[:id])
        flower.destroy
        redirect_to action: :index
      end

      private
      def flower_params
        params.require(:flower).permit(:name, :about, :feeling, :category, :Prefecture, :username, :date, :image_top , images: [])
      end
end
