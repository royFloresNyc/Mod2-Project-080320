class SupesController < ApplicationController
    before_action :find_supe, only: [:show, :edit, :update, :destroy]

    def index
        @supes = Supe.all
    end

    def show
    end

    def new
        @supe = Supe.new
    end

    def create
    end

    def edit
    end

    def update
        @supe.update(supe_params)
        authorize @supe
        if @supe.valid?
            flash[:sucess] = "Changes saved!"
            redirect_to supe_path(@supe)
        else
            flash[:my_errors] = @supe.errors.full_messages
            redirect_to
        end
    end

    def destroy
    end

    private

    def supe_params
        params.require(:supe).permit(:name, :bio, :powers, :image_url)
    end

    def find_supe
        @supe = Supe.find(params[:id])
    end
end
