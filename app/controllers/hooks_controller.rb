class HooksController < ApplicationController
  def lead_created_callback
  if params[:lead_first_name].present?
      lead = Lead.new(:first_name => params[:lead_first_name], 
                      :last_name => params[:lead_last_name],
                      :mobile => params[:lead_mobile_number], 
                      :email => params[:lead_email],
                      :address => params[:lead_address],
                      :job_title => params[:lead_job_title])
      lead.save!
  end
      render :nothing => true 
  end
end