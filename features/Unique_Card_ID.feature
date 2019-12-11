Feature: See flash card ID
As a PhD Qual user
So that I can identify flach cards to which I want to return
A uniqu ID should be assigned to each card

Scenario: See card ID in practice mode
Given the following questions exist:
  | question  | option1 | option2 | option3 | option4 | option5 | answer |     category     |
  |  QueCat1  |   AA    |   BB    |    CC   |   DD    |   EE    |   BB   |     Networks     |
  |  QueCat2  |   AA    |   BB    |    CC   |   DD    |   EE    |   DD   |    Algorithms    |
  |  QueCat3  |   AA    |   BB    |    CC   |   DD    |   EE    |   CC   |     Software     |
  |  QueCat4  |   AA    |   BB    |    CC   |   DD    |   EE    |   EE   | Operating System |
And I am on the home page
Then I should see "Welcome"
When I follow "Start Practice"
Then I should be on Select Category page
When I check the checkbox "Networks"
And I check the checkbox "Algorithms"
And I check the checkbox "Software"
Then I press "Start Practice"

Scenario: See card ID in practice mode
Given I am on the home page
Then I should see "Welcome"
When I follow "Start Quiz"
Then I should be on Quiz Category page
When I choose radio button "20"
And I press "Start Quiz"