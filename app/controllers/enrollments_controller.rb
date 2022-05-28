class EnrollmentsController < ApplicationController
    
    
  
    private

    def enrollments_params
      params.require(:enrollment).permit(:attended_event_id)
    end
end
