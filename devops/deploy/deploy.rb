# config valid only for current version of Capistrano
lock '3.4.0'

set :stages, %w(prod)

set :deploy_to, "/var/www/skillsapi"
set :repo_url, 'git@github.com:OpenSkills/skillsapi.git'

set :log_path, "app/logs"
set :cache_path, "app/cache"
set :symfony_console_path, 'app/console'
set :linked_files, fetch(:linked_files, []).push('app/config/parameters.yml')
set :linked_dirs, [fetch(:log_path), "app/sessions", "web/uploads"]

set :ssh_user, 'www-data'
set :ssh_options, {
  forward_agent: true,
}

set :branch, 'master'
set :keep_releases, 3

set :composer_install_flags, '--prefer-dist --no-interaction --optimize-autoloader'
