namespace :settings do
  desc "Upload local settings.yml to shared directory"
  task :setup, roles: :app do
    upload File.expand_path("../../preferences.yml", __FILE__), "#{shared_path}/config/preferences.yml"
  end
  after 'deploy:setup', 'settings:setup'

  desc "Symlink the settings.yml file into latest release"
  task :create_symlink, roles: :app do
    run "ln -nfs #{shared_path}/config/preferences.yml #{release_path}/config/preferences.yml"
  end
  after "deploy:finalize_update", "settings:create_symlink"
end
