class NavController < ApplicationController
  def get_nav
  	# purchase_date = Date.parse(params['date'])
  	inv_amt = params['amt'].to_i
  	scheme_name = params['scheme_name']
  	scheme_old = NavHistory.where("scheme_name = ? and date = ?", scheme_name, '13-May-2016')[0]
  	nav_for_the_day = scheme_old.nav
  	@shares = inv_amt/nav_for_the_day
  	today_date = Date.today
  	scheme_current = NavHistory.where("scheme_name = ? and date = ?", scheme_name, '15-Jun-2017')[0]
  	nav_for_current_day = scheme_current.nav
  	@investment_value = @shares * nav_for_current_day




  end
end
