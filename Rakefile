task :default => [:install]

def describe(task)
  puts "\e[36m#{task}\e[0m"
end

def warn(message)
  puts "\e[33m#{message}\e[0m"
end

def link_file(from, to)
  orig_path = File.expand_path(from)
  syml_path = File.expand_path(to)
  if File.exists?(syml_path)
    warn "#{syml_path} already exists..skipping"
    return
  else
    File.symlink(orig_path, syml_path)
  end
end

def install_via_git(git_url)
  if git_url.end_with?(".git")
    name = git_url.split("/").last.gsub(".git", "")
    sh "git submodule add #{git_url} vim/bundle/#{name}"
    describe "Completed #{name}"
  else
    warn "git_url does not appear to end in .git...try again"
    return
  end
  
end

task :submodules do
  describe "Updating submodules"
  sh 'git submodule update --init'
end

task :linkfiles do
  describe "Linking vim files"
  link_file 'vim', '~/.vim'
  link_file 'vimrc', '~/.vimrc'
  describe "Linking vim files completed"
end

desc 'Runs install, builds submodules and links .vim and .vimrc files/folders'
task :install do
  Rake::Task["submodules"].execute
  Rake::Task["linkfiles"].execute
end

desc 'Install a vim plugin via a git repo | rake add <giturl>'
task :add do
  ARGV.shift
  describe "Installing #{ARGV[0]}"
  install_via_git ARGV[0]
  ARGV.each { |arg| task arg.to_sym do ; end }
end