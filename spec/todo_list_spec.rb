require_relative '../lib/todo_list'

RSpec.describe TodoList do 
    context 'given no task' do
        it 'has an empty string' do 
            todo_list = TodoList.new
            expect(todo_list.list).to eq []
        end
    end
    context 'given a task' do 
        it 'has the task in the list' do 
            todo_list = TodoList.new
            todo_list.add("wash the car")
            expect(todo_list.list).to eq ["wash the car"]
        end
    end
    context 'given two tasks' do 
        it 'has the taks in the list ' do
            todo_list = TodoList.new
            todo_list.add("wash the car")
            todo_list.add("walk the dog")
            expect(todo_list.list).to eq ["wash the car", "walk the dog"]
        end
    end
    context 'give a completed task' do 
        it 'has only not completed tasks' do 
            todo_list = TodoList.new
            todo_list.add("wash the car")
            todo_list.add("walk the dog")
            todo_list.complete("wash the car")
            expect(todo_list.list).to eq ["walk the dog"]
        end
    end
    context 'fails when no existing task is completed' do 
        it 'gives fail error' do 
            todo_list = TodoList.new
            todo_list.add("wash the car")
            expect { todo_list.complete("wash the house") }.to raise_error "No such task"

        end
    end
end