class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  after_action :skip_policy_scope, only: :index
end
