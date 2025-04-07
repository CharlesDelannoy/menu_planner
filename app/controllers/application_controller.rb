class ApplicationController < ActionController::Base
  include Pundit::Authorization

  before_action :authenticate_user!
  after_action :verify_authorized, unless: :index
  after_action :verify_policy_scoped, only: :index
end
