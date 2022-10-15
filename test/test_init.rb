ENV['BOOTSTRAP'] ||= 'on'

require_relative '../init'

if ENV['BOOTSTRAP'] == 'on'
  require 'test_bench/bootstrap'; TestBench::Bootstrap.activate
else
  require 'test_bench'; TestBench.activate
end

require 'TEMPLATE-PATH/controls'

include TestBench

Controls = TEMPLATE-NAMESPACE::Controls rescue nil
