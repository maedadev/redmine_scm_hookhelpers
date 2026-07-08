require 'redmine'

Redmine::Plugin.register :redmine_scm_hookhelpers do
  name 'Redmine Scm Hookhelpers plugin'
  author 'Lukas Pirl'
  author_url 'http://lukas-pirl.de/'
  description 'This Plugin provides helpers for commit hooks when using the Redmine SCM plugin.'
  version '0.3.0'
  url 'https://github.com/lpirl/redmine_scm_hookhelpers'
  requires_redmine :version_or_higher => '5.0'
end

unless SysController.included_modules.include? RedmineScmHookhelpers::SysControllerPatch
  SysController.send(:include, RedmineScmHookhelpers::SysControllerPatch)
end
