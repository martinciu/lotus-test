require 'spec_helper'
require_relative '../../../../apps/web/views/pages/home'

describe Web::Views::Pages::Home do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/pages/home.html.erb') }
  let(:view)      { Web::Views::Pages::Home.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
