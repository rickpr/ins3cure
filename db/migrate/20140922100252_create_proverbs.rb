class CreateProverbs < ActiveRecord::Migration
  def change
    create_table :proverbs do |t|
      t.string :quote
      t.string :author

      t.timestamps
    end
  end
end
