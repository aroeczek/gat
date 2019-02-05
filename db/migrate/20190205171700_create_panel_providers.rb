class CreatePanelProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :panel_providers do |t|
      t.string :code, null: false
      t.string :type, null: false

      t.timestamps
    end
  end
end
