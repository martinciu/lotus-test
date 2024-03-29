require 'spec_helper'
require_relative '../../../../apps/web/controllers/entries/create'

describe Web::Controllers::Entries::Create do
  let(:action) { Web::Controllers::Entries::Create.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    response[0].must_equal 200
  end
end
