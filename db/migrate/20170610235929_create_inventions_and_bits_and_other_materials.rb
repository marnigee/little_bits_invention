class CreateInventionsAndBitsAndOtherMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :bits do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :other_materials do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :inventions do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :user_name
      t.string :email

      t.timestamps
    end

    create_table :bits_inventions, id: false do |t|
      t.belongs_to :invention, index: true
      t.belongs_to :bit, index: true
    end

    create_table :inventions_other_materials, id: false do |t|
      t.belongs_to :invention, index: true
      t.belongs_to :other_material, index: true
    end
  end
end
