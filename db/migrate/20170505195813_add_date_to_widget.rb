class AddDateToWidget < ActiveRecord::Migration[5.0]
  def change
    add_column :widgets, :widget_date, :date 
    add_column :widgets, :widget_name, :string
  end
end
