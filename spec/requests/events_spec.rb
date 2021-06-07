require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe "DELETE /" do
    let!(:event_owner) { FactoryBot.create(:user) }
    let!(:event) { FactoryBot.create(:event, owner: event_owner) }
    let!(:sign_in_user) { FactoryBot.create(:user) }
    it '自分が作ったイベントは削除できる' do
      sign_in_as event_owner
      expect {
        delete event_path(event)
      }.to change(Event, :count).by(-1)
    end
    it '他の人が作ったイベントは削除できない' do
      sign_in_as sign_in_user
      expect{
        expect{
          delete event_path(event)
        }.to raise_error(ActiveRecord::RecordNotFound)
      }.to change(Event, :count).by(0)
    end
  end
end