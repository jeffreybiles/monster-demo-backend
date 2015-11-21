class TeamMembershipModel < ActiveRecord::Migration
  def change
    create_table :team_memberships do |t|
      t.timestamps
    end

    add_reference :team_memberships, :user, index: true, foreign_key: true
    add_reference :team_memberships, :monster, index: true, foreign_key: true
  end
end
