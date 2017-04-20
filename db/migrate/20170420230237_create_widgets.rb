class CreateWidgets < ActiveRecord::Migration[5.0]
  def change
    create_table :widgets do |t|
      t.string :title
      t.text :attributes
      t.string :widgetpicture
      t.timestamps
    end
  end
end
