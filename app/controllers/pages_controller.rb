class PagesController < ApplicationController

  before_action :authenticate_user!, except: :home
  after_action :verify_authorized, except: :home
  after_action :verify_policy_scoped, except: :home
  def home
  end
end
