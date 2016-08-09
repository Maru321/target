# encoding: utf-8

require 'spec_helper'

describe 'index.json.jbuilder' do
  let!(:topic) { create(:topic) }

  before do
    assign(:topics, [topic])
  end

  it 'has the topic\'s id' do
    render template: 'api/v1/topics/index'

    expect(parse_rendered(rendered).map { |topic| topic['id'] })
     .to eq([topic.id])
  end

  it 'has the topic\'s name' do
    render template: 'api/v1/topics/index'

    expect(parse_rendered(rendered).map { |topic| topic['name'] })
      .to eq([topic.name])
  end
end
