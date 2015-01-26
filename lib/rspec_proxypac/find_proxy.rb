require 'rspec_proxypac'
require 'uri'

RSpec::Matchers.define :find_proxy do |expected|
  match do |pacfile|
    pac = PAC.load(pacfile)
    @result_string = pac.find(@target_url)
    @result_string == expected
  end

  chain :for do |url|
    @target_url = url
    @chain_string = " for #{url}"
  end

  description do
    "find proxy '#{@result_string}'#{@chain_string}"
  end

  failure_message do
    s = "expected to find proxy '#{expected}'#{@chain_string}, but did not."
    s << "\n  expected: #{expected}"
    s << "\n  actual:   #{@result_string}"
  end

  failure_message_when_negated do
    s = "expected not to find proxy '#{@chain_string}', but did."
    s + "\n'#{@result_string}'"
      .sub(/(expected:)/, 'expected not:')
      .sub(/(actual:)/,   'actual:    ')
  end
end
