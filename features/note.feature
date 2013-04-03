Feature: Manage notes
  As a user
  I want to be able to create and remove notes
  In order to know what to do today

Scenario: Predefiend Notes
  Given the app is running
  Then I should see "Notes List"
  
Scenario: Add note
  Given I am on Notes Screen
  When I press the "Add" button
  And I touch "Note Text"
  And I enter "I love ObjC!" into the "Note Text"
  And I press the "Save" button
  Then I wait to see "Notes List"
  And I should see "I love ObjC!"

Scenario: Delete note
  Given I added note "I love iOS!"
  When I swipe on cell number 1
  And I touch "Delete" 
  Then I should not see "I love iOS!"
  
Scenario: Edit note
  Given I added note "I am ObjC Fan!"
  When I touch "I am ObjC Fan!"
  And I enter "I am a big ObjC Fan!" into the "Note Text"
  And I press the "Save" button
  Then I wait to see "Notes List"
  And I should see "I am a big ObjC Fan!"