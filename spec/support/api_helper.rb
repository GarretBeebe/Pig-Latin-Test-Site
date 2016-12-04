require 'spec_helper'

RSpec.shared_context 'api helper cleanup' do
  after { Grape::Endpoint.before_each nil }
end
