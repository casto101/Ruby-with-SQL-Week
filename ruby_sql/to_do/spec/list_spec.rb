require_relative 'spec_helper'
require_relative '../lib/list'
require_relative '../lib/task'

describe List do
  it "has many tasks" do
    list = List.create({:name => "list"})
    task1 = Task.create({:name => "task1", :list_id => list.id})
    task2 = Task.create({:name => "task2", :list_id => list.id})
    expect(list.tasks).to eq [task1, task2]
  end
end
