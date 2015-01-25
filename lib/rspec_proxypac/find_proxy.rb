require 'rspec_proxypac'
require 'uri'

RSpec::Matchers.define :find_proxy do
  match do |_target|
  end

  description do
    "should find proxy #{@chain_string}"
  end

  failure_message do
    s = "expected to find proxy #{@chain_string}, but did not."
    s + "\n#{@result_string}"
  end

  failure_message_when_negated do
    s = "expected not to find proxy #{@chain_string}, but did."
    s + "\n#{@result_string}"
      .sub(/(expected:)/, 'expected not:')
      .sub(/(actual:)/,   'actual:    ')
  end
end
