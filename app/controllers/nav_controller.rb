class NavController < ApplicationController
  def get_nav
  	purchase_date = Date.parse(params['date'])
  	inv_amt = params['amt'].to_i
  	scheme_name = params['scheme_name']
  	p "aaaaaaaaaaaa"
  	p purchase_date
  	p scheme_name
  	scheme_old = NavHistory.where("scheme_name = ? and date = ?", scheme_name, purchase_date)[0]
  	nav_for_the_day = scheme_old.nav
  	@shares = inv_amt/nav_for_the_day
  	today_date = Date.parse(params['for_date'])
  	scheme_current = NavHistory.where("scheme_name = ? and date = ?", scheme_name, today_date)[0]
  	nav_for_current_day = scheme_current.nav
  	@investment_value = @shares * nav_for_current_day
  end
end
