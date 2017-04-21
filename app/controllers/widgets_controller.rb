class WidgetsController < ApplicationController
    def index
    end
    def new
        @widget = Widget.new
    end
    def create
    end
    def edit
    end
    def update
    end
    private
    def widget_params
        params.require(:widget).permit(:title, :widgetAttributes, {widgetpictures: []})
    end
end
