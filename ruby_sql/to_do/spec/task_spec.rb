require_relative 'spec_helper'
require_relative '../lib/task'
require_relative '../lib/list'

describe Task do
  it 'can return the not done tasks' do
    not_done_tasks = (1..5).to_a.map { |number| Task.create(:name => "task #{number}", :done => false) }
    done_task = Task.create({:name => "done task", :done => true})
    expect(Task.not_done).to eq not_done_tasks
  end

  it "belongs to a list" do
    list=List.create({:name=>"list"})
    task=Task.create({:name=>"task",:list_id =>list.id})
    expect(task.list).to eq list
  end
end
