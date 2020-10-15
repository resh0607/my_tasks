require 'yaml'

data = YAML.load_file('db/seeds.yml')

projects = data['projects']
projects.each do |project|
  created_project = Project.create!(title: project['title'])
  created_project.todos.create!(project['todos'])
end
