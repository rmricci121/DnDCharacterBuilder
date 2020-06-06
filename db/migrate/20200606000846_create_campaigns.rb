class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.character_id :integer
      t.adventure_id :integer

      t.timestamps
    end
  end
end
