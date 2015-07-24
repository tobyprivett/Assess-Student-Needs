Feature: Teacher browses groups

Background:
  Given I am the teacher of "Year 6A" with students "Ann,Bob,Clare"

Scenario: going to the group page and clicking the tabs
  When I am on the home page
  And I choose "Year 6A" from the groups dropdown
  Then I should see "Ann,Bob,Clare" in the list of students
  When I the follow the add lesson link
  Then I should see the new lesson form
