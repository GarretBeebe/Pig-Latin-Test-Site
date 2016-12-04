namespace :run do
  desc 'Run all linters and test suites'
  task all: ['lint:all', 'rspec:run', 'karma:run']
  desc 'Run rspec and karma'
  task tests: ['rspec:run', 'karma:run']
  desc 'Run front-end lint and tests'
  task frontend: ['lint:jshint', 'karma:run']
end
