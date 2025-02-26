class OptionsController < ApplicationController
    allow_unauthenticated_access only: %i[ index new create show destroy]

    before_action :set_option, only: %i[ show destroy] # runs before any action method is executed

    def index
        @options = Option.all
    end

    def new
        @option = Option.new
    end

    def show
    end

    def create
        @option = Option.new(option_params)
        if @option.save
            redirect_to options_path
        else
        flash[:error] = "Image upload failed"
          render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @option.destroy
        redirect_to options_path
    end

    private
        def set_option
            @option = Option.find(params[:id])
        end

        def option_params
            params.require(:option).permit(:name, :width, :height, :image)
        end
end
