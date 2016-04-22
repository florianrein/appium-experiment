Given(/^I am on the start screen$/) do
  $driver.text('Contact Manager')
end


When(/^I click on the "([^"]*)" button$/) do |button_name|

  case button_name
    when 'Add Contact'
      $driver.find_element(:xpath, "//android.widget.Button[@content-desc='Add Contact']").click
    else
      raise "Unknown button name: #{button_name}"
  end

end


Then(/^I should see the "([^"]*)" form$/) do |form_name|
  case form_name
    when 'Add Contact'
      expect($driver.exists { $driver.find_element(:xpath, "//android.widget.EditText[contains(@resource-id,'contactNameEditText')]") }).to eq true
    else
      raise "Unknown form name: #{form_name}"
  end
end
