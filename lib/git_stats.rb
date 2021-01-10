module GitStats
end

require 'active_support/all'
require 'action_pack'
require 'action_view'
require 'fileutils'
require 'tilt'
require 'pathname'
require 'lazy_high_charts'
require 'i18n'

require 'git_stats/base'
