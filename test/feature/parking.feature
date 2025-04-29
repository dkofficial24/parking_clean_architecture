Feature: Parking app

  Background:
    Given app configs are setup

#  Scenario: Some desc here
#    Then i see a {'Available Slot'} text
#

  Scenario: See a CircularProgressIndicator
    When available slots state is in waiting state
    And the app is running
    Then i see CircularProgressIndicator

    Scenario: See a list of ListTile
      When available slot state is in loaded state
      And the app is running
      Then i see List of List Tile

  Scenario: See an error when available screen is shown
    When available slot state is in error state
    And the app is running
    Then i see ${'Something went wrong'} text