class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :lead_score
      t.string :mobile
      t.string :address
      t.string :job_title

      t.timestamps
    end
  end
end
