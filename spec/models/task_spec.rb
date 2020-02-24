require 'rails_helper'

RSpec.describe Task, type: :model do

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
end