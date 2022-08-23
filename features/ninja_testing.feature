@all
Feature: Ninja Testing

  @ignore
  Scenario: Allied Ninja ignores Enemy Ninja
    Given everything from here on is happening In the Ninja World
    And "Hykumo" is an Allied Ninja "God" with "High" Experience, he is also "On Free Time" and "On Fire"
    And "Yuki" is an Enemy Ninja "Assassin" with "High" Experience, he is also "On Fire" and "Devilish"
    When "Hykumo" Allied Ninja "encounters" "Yuki" Enemy Ninja
    And "Hykumo" Allied Ninja "ignores" "Yuki" Enemy Ninja
    Then "Hykumo" Allied Ninja will "enjoy the rest of her day"

  @fight
  Scenario: Allied Ninja fights Enemy Ninja and kills based on rank
    Given everything from here on is happening In the Ninja World
    And "Hykumo" is an Allied Ninja "God" with "High" Experience, he is also "On Mission" and "On Fire"
    And "Yuki" is an Enemy Ninja "Assassin" with "High" Experience, he is also "On Fire" and "Devilish"
    When "Hykumo" Allied Ninja "encounters" "Yuki" Enemy Ninja
    And "Hykumo" Allied Ninja "fights" "Yuki" Enemy Ninja
    Then "Hykumo" Allied Ninja will "kill"

  @fight
  Scenario: Allied Ninja fights Enemy Ninja and kills based on Experience
    Given everything from here on is happening In the Ninja World
    And "Giu" is an Allied Ninja "Rookie" with "Medium" Experience, he is also "On Mission" and "On Fire"
    And "Hiro" is an Enemy Ninja "Rookie" with "Low" Experience, he is also "On Fire" and "Bad"
    When "Giu" Allied Ninja "encounters" "Hiro" Enemy Ninja
    And "Giu" Allied Ninja "fights" "Hiro" Enemy Ninja
    Then "Giu" Allied Ninja will "kill"

  @fight
  Scenario: Allied Ninja fights Enemy Ninja and kills based on Energy
    Given everything from here on is happening In the Ninja World
    And "Kuro" is an Allied Ninja "Assassin" with "High" Experience, he is also "On Mission" and "Well Rested"
    And "Shiro" is an Enemy Ninja "Assassin" with "High" Experience, he is also "Tired" and "Evil"
    When "Kuro" Allied Ninja "encounters" "Shiro" Enemy Ninja
    And "Kuro" Allied Ninja "fights" "Shiro" Enemy Ninja
    Then "Kuro" Allied Ninja will "kill"

  @fight
  Scenario: Allied Ninja fights Enemy Ninja and gets killed based on Experience
    Given everything from here on is happening In the Ninja World
    And "Giu" is an Allied Ninja "Rookie" with "Medium" Experience, he is also "On Mission" and "On Fire"
    And "Kotaru" is an Enemy Ninja "Rookie" with "High" Experience, he is also "On Fire" and "Bad"
    When "Giu" Allied Ninja "encounters" "Kotaru" Enemy Ninja
    And "Giu" Allied Ninja "fights" "Kotaru" Enemy Ninja
    Then "Giu" Allied Ninja will "die"

  @fight
  Scenario: Allied Ninja fights Enemy Ninja and gets killed based on Energy
    Given everything from here on is happening In the Ninja World
    And "Kuro" is an Allied Ninja "Assassin" with "High" Experience, he is also "On Mission" and "Well Rested"
    And "Yuki" is an Enemy Ninja "Assassin" with "High" Experience, he is also "On Fire" and "Devilish"
    When "Kuro" Allied Ninja "encounters" "Yuki" Enemy Ninja
    And "Kuro" Allied Ninja "fights" "Yuki" Enemy Ninja
    Then "Kuro" Allied Ninja will "die"

  @fight
  Scenario: Allied Ninja gets spared based on mood
    Given everything from here on is happening In the Ninja World
    And "Giu" is an Allied Ninja "Rookie" with "Medium" Experience, he is also "On Mission" and "On Fire"
    And "Shin" is an Enemy Ninja "Rookie" with "High" Experience, he is also "On Fire" and "Undecided"
    When "Giu" Allied Ninja "encounters" "Shin" Enemy Ninja
    And "Giu" Allied Ninja "fights" "Shin" Enemy Ninja
    Then "Giu" Allied Ninja will "live"

  @run
  Scenario: Allied Ninja runs and escapes based on rank and energy
    Given everything from here on is happening In the Ninja World
    And "Kyoe" is an Allied Ninja "Master" with "Medium" Experience, he is also "On Mission" and "Rested"
    And "Shiro" is an Enemy Ninja "Assassin" with "High" Experience, he is also "Tired" and "Evil"
    When "Kyoe" Allied Ninja "encounters" "Shiro" Enemy Ninja
    And "Kyoe" Allied Ninja "runs from" "Shiro" Enemy Ninja
    Then "Kyoe" Allied Ninja will "live"

  @run
  Scenario: Allied Ninja gets spared based on mood and energy
    Given everything from here on is happening In the Ninja World
    And "Giu" is an Allied Ninja "Rookie" with "Medium" Experience, he is also "On Mission" and "On Fire"
    And "Sukuna" is an Enemy Ninja "Apprentice" with "High" Experience, he is also "Tired" and "Undecided"
    When "Giu" Allied Ninja "encounters" "Sukuna" Enemy Ninja
    And "Giu" Allied Ninja "runs from" "Sukuna" Enemy Ninja
    Then "Giu" Allied Ninja will "live"

  @run
  Scenario: Allied Ninja runs and gets killed based on rank
    Given everything from here on is happening In the Ninja World
    And "Kyoe" is an Allied Ninja "Master" with "Medium" Experience, he is also "On Mission" and "Rested"
    And "Nami" is an Enemy Ninja "God" with "High" Experience, he is also "On Fire" and "Evil"
    When "Kyoe" Allied Ninja "encounters" "Nami" Enemy Ninja
    And "Kyoe" Allied Ninja "runs from" "Nami" Enemy Ninja
    Then "Kyoe" Allied Ninja will "die"

  @run
  Scenario: Allied Ninja gets spared based on mood and rank
    Given everything from here on is happening In the Ninja World
    And "Kuro" is an Allied Ninja "Assassin" with "High" Experience, he is also "On Mission" and "Well Rested"
    And "Kokoro" is an Enemy Ninja "God" with "High" Experience, he is also "On Fire" and "Undecided"
    When "Kuro" Allied Ninja "encounters" "Kokoro" Enemy Ninja
    And "Kuro" Allied Ninja "runs from" "Kokoro" Enemy Ninja
    Then "Kuro" Allied Ninja will "live"