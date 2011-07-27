class Admin::AnalyticsController < Admin::AdminController
  def create
    params[:ga].each do |key, val|
      Setting["ga_#{key}"] = val
    end
    redirect_to admin_analytics_path
  end
  def index
    begin
      Garb::Session.login(Setting[:ga_email], Setting[:ga_password])
      @profile ||= Garb::Management::Profile.all.detect {|p| p.web_property_id == Setting[:ga_web_property_id].strip}
      start_date = (Time.now - 31.days)
      end_date = (Time.now - 1.days)
      
      @summary_metrics = ['visits','pageviews','pageviewsPerVisit','avgTimeOnSite','visitBounceRate','percentNewVisits']
      @summary = Garb::Report.new(@profile, :start_date => start_date, :end_date => end_date,
        :dimensions => ['month'],
        :metrics => @summary_metrics
      ).results.to_a
      
      @pages = Garb::Report.new(@profile, :start_date => start_date, :end_date => end_date,
                 :dimensions => ['pageTitle','pagePath'],
                 :metrics => ['pageviews'],
                 :limit => 10,
                 :sort => "pageviews").results.to_a.reverse!

      @referrers = Garb::Report.new(@profile, :start_date => start_date, :end_date => end_date,
                 :dimensions => ['source','medium'],
                 :metrics => ['visits'],
                 :limit => 10,
                 :sort => "visits").results.to_a.reverse!

      @searches = Garb::Report.new(@profile, :start_date => start_date, :end_date => end_date,
                 :dimensions => ['keyword'],
                 :metrics => ['visits'],
                 :limit => 10,
                 :sort => "visits").results.to_a.reverse!

      @browsers = Garb::Report.new(@profile, :start_date => start_date, :end_date => end_date,
                 :dimensions => ['browser','isMobile'],
                 :metrics => ['visits'],
                 :limit => 10,
                 :sort => "visits").results.to_a.reverse!
          
      @daily = Garb::Report.new(@profile, :start_date => start_date, :end_date => end_date,
                 :dimensions => ['date'],
                 :metrics => ['visits']).results.to_a
                 
      @visits = @summary.first.visits
    rescue
    end
  end
end