class CreateWidgets < ActiveRecord::Migration[5.0]
  def change
    create_table :widgets do |t|
      t.string :title
      t.text :widgetAttributes
      t.string :widgetpictures
      t.timestamps
    end
  end
end
