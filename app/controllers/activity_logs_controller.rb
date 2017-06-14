class ActivityLogsController < ApplicationController
def index
  @activitylog = ActivityLog.all.order('start_time DESC').paginate(:page => params[:page] , :per_page => 15 )
end

end
