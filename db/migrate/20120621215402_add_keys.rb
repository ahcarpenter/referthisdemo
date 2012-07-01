class AddKeys < ActiveRecord::Migration
  def change
    add_foreign_key "referrals", "referees", :name => "referrals_referee_id_fk"
  end
end