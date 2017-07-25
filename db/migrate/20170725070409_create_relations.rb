class CreateRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :relations do |t|
    t.references :user, foreign_key: true
    t.references :occupation , foreign_key: true
     
      t.timestamps
    end
  end
end
