class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :content,     null: false
      t.string :image
      t.string :comment
      t.string :tweet,       null: false
      t.timestamps
    end
  end
end
