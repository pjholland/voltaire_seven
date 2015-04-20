
Given(/^I log on to the contact centre homepage$/) do

  site.homepage.visit
  site.homepage.type(Homepage::USER_EMAIL, 'hub_admin@fco.dev')
  site.homepage.type(Homepage::USER_PASSWORD, 'n74J994e8784F27m74244Cq6243xJu')
  site.homepage.click_button(Homepage::SIGN_IN_BUTTON)

end

Given(/^I log out$/) do

  site.homepage.click_link(Homepage::LOG_OUT_LINK)
  site.homepage.wait_for(3)
end

