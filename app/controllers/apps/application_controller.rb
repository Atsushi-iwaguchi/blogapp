class Apps::ApplicationController < ApplicationController
    before_action :authentication_user!
end
