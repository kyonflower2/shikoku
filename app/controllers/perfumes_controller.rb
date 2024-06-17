class PerfumesController < ApplicationController
    def index
    end

    def new
    end

    def aruku
    end

    def zekkei
    end

    def hinitizyo
    end

    def kansyo
    end

    def active
    end

    def nature
    end
    
    def ryugado
    end

    def dougo
    end

    def matsuyamazyo
    end

    def otsuka
    end

    def kazura
    end

    def takaya
    end

    def karusuto
    end
    
    def chichibu
    end

    def matsuyamazyo1
    end

    def create
        perfume = Perfume.new(perfume_params)
        if perfume.save
            flash[:notice] = "診断が完了しました"
            redirect_to perfume_path(perfume.id)
        else
            redirect_to :action => "new"
        end
    end
  
  private
end

