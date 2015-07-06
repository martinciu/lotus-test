require 'spec_helper'
require_relative '../../../../apps/web/views/entries/create'

describe Web::Views::Entries::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/entries/create.html.erb') }
  let(:view)      { Web::Views::Entries::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
