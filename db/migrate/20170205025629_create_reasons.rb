class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.text :caption
      t.string :photo

      t.timestamps

    end
  end
end
