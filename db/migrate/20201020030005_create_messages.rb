class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.referances :room, foreign_key: true
      t.referances :user, foreign_key: true
      t.timestamps
    end
  end
end
