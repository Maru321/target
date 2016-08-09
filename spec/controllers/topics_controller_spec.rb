# encoding: utf-8

require 'spec_helper'

describe Api::V1::TopicsController do
  render_views

  let!(:user)  { create(:user) }
  let!(:topic) { create(:topic) }

  before do
    request.headers['X-USER-TOKEN'] = user.authentication_token
  end

  describe "GET 'index'" do
    it 'returns one topic' do
      get :index, format: 'json'

      expect(parse_response(response).size).to eq(1)
    end

    it 'renders the correct template' do
      expect(get :index, format: 'json').to render_template('index')
    end
  end
end
