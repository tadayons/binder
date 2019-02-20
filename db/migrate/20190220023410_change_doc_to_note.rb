class ChangeDocToNote < ActiveRecord::Migration[5.1]
  def change
    rename_table :docs, :notes
  end
end
