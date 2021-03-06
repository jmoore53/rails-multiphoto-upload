class Widget < ApplicationRecord
    mount_uploaders :widgetpictures, WidgetPhotoUploader
    serialize :widgetpictures, JSON
    serialize :attributes
    validates :widget_name, presence: true
end

