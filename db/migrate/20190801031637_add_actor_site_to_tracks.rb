class AddActorSiteToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :voice_site, :string
  end
end
