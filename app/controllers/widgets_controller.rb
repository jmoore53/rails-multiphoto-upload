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
    end
    def update
    end
    def show
        @widget = Widget.find(params[:id])
    end
    private
    def widget_params
        params.require(:widget).permit(:title,{widgetAttributes: []}, {widgetpictures: []})
    end
end
