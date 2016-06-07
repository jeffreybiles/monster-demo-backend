class RootController < ApplicationController
  respond_to :html

  def index
    render text: html
  end

  def html
    $redis.get "ember-2-0-frontend:index:#{current_revision_key}"
  end

  def current_revision_key
    $redis.get "ember-2-0-frontend:index:current"
  end
end
