# add app root folder to $LOAD_PATH
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'config/environment'

run Geminabox