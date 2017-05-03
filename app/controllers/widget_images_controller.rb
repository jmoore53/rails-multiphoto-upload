class WidgetImagesController < ApplicationController
    before_action :set_widget

    def create
        add_more_images(widget_image_params[:images])
        flash[:error] = "Failed to Upload Images" unless @widget.save
        redirect_to :back
    end
    def destroy
        remove_image_at_index(params[:id].to_i)
        flash[:error] = "Failed to delete image" unless @widget.save
        redirect_to :back   
    end

    private
    def add_more_images(new_images)
        images = @widget.widgetpictures
        images += new_images
        @widget.widgetpictures = images
    end
    def remove_image_at_index(index)
        remain_images = @widget.widgetpictures
        deleted_image = remain_images.delete_at(index)
        @widget.widgetpictures = remain_images
    end
    def set_widget
        @widget = Widget.find(params[:widget_id])
    end
    def widget_image_params
        params.require(:widget).permit({images: []})
    end
end
