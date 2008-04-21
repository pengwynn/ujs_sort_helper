require 'unobtrusive_sort_helper'

ActionView::Base.send(:include, UnobtrusiveSortHelper)
ActionController::Base.send(:include, UnobtrusiveSortHelper)

# install files
['/public/javascripts', '/public/stylesheets', '/public/images'].each{|dir|
  source = File.join(directory,dir)
  dest = RAILS_ROOT + dir
  FileUtils.cp_r(Dir.glob(source+'/*.*'), dest)
} unless File.exists?(RAILS_ROOT + '/public/javascripts/ujs_sort_helper.js')
