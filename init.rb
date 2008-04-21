require 'ujs_sort_helper'

ActionView::Base.send(:include, UjsSortHelper)
ActionController::Base.send(:include, UjsSortHelper)

# install files
['/public/javascripts', '/public/stylesheets', '/public/images'].each{|dir|
  source = File.join(directory,dir)
  dest = RAILS_ROOT + dir
  FileUtils.cp_r(Dir.glob(source+'/*.*'), dest)
} unless File.exists?(RAILS_ROOT + '/public/javascripts/ujs_sort_helper.js')
