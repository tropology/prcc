class CreateOrganizations < ActiveRecord::Migration
  def self.up
    create_table :organizations do |t|
      t.column :name, :string
      t.column :street, :string
      t.column :zip, :string
      t.column :mainphone, :string
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :organizations
  end
end
