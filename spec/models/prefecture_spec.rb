require 'rails_helper'

RSpec.describe Prefecture, type: :model do
  describe '#aomori_info' do
    subject { Prefecture.aomori_info }
    it { is_expected.to eq ({ area_cd: 2, name: '青森県', count: 1262686 }) }
  end

  describe '#aomori_kanji_name' do
    subject { Prefecture.aomori_kanji_name }
    it { is_expected.to eq '青森県' }
  end

  describe '#miyagi_count' do
    subject { Prefecture.miyagi_count }
    it { is_expected.to eq 2313215 }
  end

  describe '#names' do
    subject { Prefecture.names }
    it { is_expected.to eq ['北海道', '青森県', '岩手県', '宮城県'] }
  end

  describe '#unique_area_cd' do
    subject { Prefecture.unique_area_cd }
    it { is_expected.to eq [1, 2] }
  end

  describe '#total_count' do
    subject { Prefecture.total_count }
    it { is_expected.to eq 10101853 }
  end

  describe '#join_names' do
    subject { Prefecture.join_names }
    it { is_expected.to eq '北海道,青森県,岩手県,宮城県' }
  end

  describe '#find_by_count' do
    subject { Prefecture.find_by_count(4000000) }
    it { is_expected.to eq '青森県' }
  end

  describe '#select_by_count' do
    subject { Prefecture.select_by_count(4000000) }
    it { is_expected.to eq ['北海道'] }
  end

  describe '#group_by_area' do
    subject { Prefecture.group_by_area }
    it do
      is_expected.to eq(
                         {
                             1 => [{ count: 5285430, area_cd: 1, name: "北海道" }],
                             2 => [{ count: 1262686, area_cd: 2, name: "青森県"},
                                   { count: 1240522, area_cd: 2, name: "岩手県"},
                                   { count: 2313215, area_cd: 2, name: "宮城県"}]
                         }
                     )
    end
  end

  describe '#name_counts' do
    subject { Prefecture.name_counts }
    it { is_expected.to eq({ '北海道' => 5285430, '青森県' => 1262686, '岩手県' => 1240522, '宮城県' => 2313215 }) }
  end

  describe '#add_prefecture' do
    let(:prefecture) { { area_cd: 2, name: '秋田県', count: 1023119 }}
    it '県が1つ追加されている' do
      prefectures = Prefecture.add_prefecture(prefecture)
      expect(prefectures.count).to eq 5
    end
  end
end