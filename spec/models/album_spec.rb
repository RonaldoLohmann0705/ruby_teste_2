require 'rails_helper'

RSpec.describe Album, type: :model do
  it 'validate n to n relation' do
    album = Album.create(name: 'Single Ladies')
    album.players.create(name: "Shakira")
    album.players.create(name: "Madonna")
    expect(album.players.count).to eq(2)
  end
end
