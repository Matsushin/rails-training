require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:category) { create(:category, name: '仕事') }
  let(:category2) { create(:category, name: 'プライベート') }
  let!(:task) { create(:task, category: category, title: 'Dockerの導入') }
  let!(:task2) { create(:task, category: category, title: 'CircleCIの連携') }
  let!(:task3) { create(:task, category: category, title: '机を買う') }
  let!(:task4) { create(:task, category: category2, title: '部屋の掃除をする') }
  let!(:task5) { create(:task, category: category2, title: '犬の散歩') }

  describe '#valid?' do
    let(:task) { build(:task, title: title) }
    subject { task.valid? }

    context 'titleが空の場合' do
      let(:title) { '' }
      it { is_expected.to be_falsey }
    end

    context '正常の場合' do
      let(:title) { 'タスクのタイトル' }
      it { is_expected.to be_truthy }
    end
  end

  describe '#select_by_category' do
    subject { Task.select_by_category(category2) }
    it { is_expected.to eq [task4, task5]}
  end

  describe '#detect_by_category' do
    subject { Task.detect_by_category(category2) }
    it { is_expected.to eq task4 }
  end

  describe '#count_by_category' do
    subject { Task.count_by_category(category) }
    it { is_expected.to eq 3 }
  end

  describe '#all_titles' do
    subject { Task.all_titles }
    it { is_expected.to eq ['Dockerの導入', 'CircleCIの連携', '机を買う', '部屋の掃除をする', '犬の散歩'] }
  end

  describe '#select_by_category_name_with_joins' do
    subject { Task.select_by_category_name_with_joins('プライベート') }
    it { is_expected.to eq [task4, task5] }
  end

  describe '#select_by_category_name_with_includes' do
    subject { Task.select_by_category_name_with_includes('プライベート') }
    it { is_expected.to eq [task4, task5] }
  end

  describe '#group_by_category' do
    subject { Task.group_by_category.pluck(:category_id) }
    it { is_expected.to eq [category.id, category2.id] }
  end

  describe '#task_count_by_category' do
    subject { Task.task_count_by_category.map(&:task_count) }
    it { is_expected.to eq [3, 2] }
  end
end