class WidgetsController < ApplicationController
    def index
        @widgets = Widget.all
    end
    def new
        @widget = Widget.new
    end
    def create
        @widget = Widget.new(widget_params)
        if @widget.save
            redirect_to @widget
        else
            render "new"
        end
    end
    def edit
        @widget = Widget.find(params[:id])
    end
    def update
        @widget = Widget.find(params[:id])
        if @widget.update(widget_params)
            redirect_to @widget
        else
            render @edit
        end
    end
    def show
        @widget = Widget.find(params[:id])
    end
    private
    def add_more_images(new_images)
        images = @widget.widgetpictures
        images += new_images
        @widget.widgetpictures = images
    end
    def widget_params
        params.require(:widget).permit(:user_id,{widgetAttributes: []}, {widgetpictures: []})
    end
end
