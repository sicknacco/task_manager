require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'instance methods' do
    describe '#laundry?' do
      it 'returns true when the title is laundry' do
        task = Task.create!(title: 'laundry', description: 'clean clothes')

        expect(task.laundry?).to be(true)
      end

      it 'returns true when the description is laundry' do
        task = Task.create!(title: 'Clean my clothes', description: 'laundry')
        
        expect(task.laundry?).to be(true) 
      end
      
      it 'returns false when neither the description or title is laundry' do
        task = Task.create!(title: 'Do Dishes', description: 'dishes')
        
        expect(task.laundry?).to be(false)
      end
      
      it 'returns true when the title contains the word laundry' do
        task = Task.create!(title: 'Do the laundry', description: 'laundry')
        
        expect(task.contains?('laundry')).to be(true)
      end
      
      xit 'is case insensitive when checking if the title contains the word laundry' do
        task = Task.create!(title: 'Do the Laundry', description: 'laundry')
        
        expect(task.insensitive?('Laundry')).to be(true)
      end
      
      xit 'returns true when the description contains the word laundry.' do
        task = Task.create!(title: 'Do the Laundry', description: 'laundry')
        
        expect(task.description_contains?('laundry')).to be(true)
      end
      
      xit 'is case insensitive when checking if the description contains the word laundry' do
        task = Task.create!(title: 'Do the Laundry', description: 'Laundry')
        
        expect(task.description_contains?('Laundry')).to be(true)
      end
    end
  end
end