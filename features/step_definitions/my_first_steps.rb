When(/^I am on Notes Screen$/) do
  macro %Q|I should see "Notes List"|
end

When(/^I enter "(.*?)" into the "(.*?)"$/) do |text_to_type, field_name|
  set_text("textView marked:'#{field_name}'", text_to_type)
  sleep(STEP_PAUSE)
end

Given(/^I added note "(.*?)"$/) do |note|
  macro %Q|I press the "Add" button|
  macro %Q|I touch "Note Text"|
  macro %Q|I enter "#{note}" into the "Note Text"|
  macro %Q|I press the "Save" button|
  macro %Q|I wait to see "Notes List"|
  macro %Q|I should see "#{note}"|
end