require 'rails_helper'

RSpec.describe Event, type: :model do
  describe '#created_by?' do
    let!(:event) { FactoryBot.create(:event) }
    context 'owner_idと引数のidが同じ時' do
      it 'Trueが返る' do
        expect(event.created_by?(event.owner)).to be_truthy
      end
    end
    context 'owner_idと引数のidが異なる時' do
      let!(:another_user) { FactoryBot.create(:user) }
      it 'Falseが返る' do
        expect(event.created_by?(another_user)).to be_falsey
      end
    end
    context '引数がnilの時' do
      it 'Falseが返る' do
        expect(event.created_by?(nil)).to be_falsey
      end
    end
  end

  describe 'start_at_should_end_at validation' do
    context 'start_atがend_atよりも前の場合' do
      let!(:start_at) { rand(1..30).days.from_now }
      let!(:end_at) { start_at + rand(1..30).hours }
      it 'イベントは作成される' do
        event = FactoryBot.build(:event, start_at: start_at, end_at: end_at)
        event.valid?
        expect(event.errors[:start_at]).to be_empty
      end
    end
    context 'start_atがend_atよりも前の場合' do
      let!(:start_at) { rand(1..30).days.from_now }
      let!(:end_at) { start_at - rand(1..30).hours }
      it 'イベントは作成される' do
        event = FactoryBot.build(:event, start_at: start_at, end_at: end_at)
        event.valid?
        expect(event.errors[:start_at]).not_to be_empty
      end
    end
  end
end
