require "bundler/gem_tasks"

Rake::TestTask.new do |t|
    t.libs << "test"
      t.test_files = FileList['test/lib/*_test.rb']
        t.verbose = true
end

task :default => :test
end
