# Exploring Titanic Survival data

This notebook tries to solve the [kaggle problem][1] of predicting whether a person survived based on the training data.

### Features
```
survival        Survival
                (0 = No; 1 = Yes)
pclass          Passenger Class
                (1 = 1st; 2 = 2nd; 3 = 3rd)
name            Name
sex             Sex
age             Age
sibsp           Number of Siblings/Spouses Aboard
parch           Number of Parents/Children Aboard
ticket          Ticket Number
fare            Passenger Fare
cabin           Cabin
embarked        Port of Embarkation
                (C = Cherbourg; Q = Queenstown; S = Southampton)
```

### Additional Features extracted
```
FamilySize
TicketCount
TicketSurvived?
SurSize
SurSuvived?
```

Runs Logistic Regression, Random Forest and Decision Tree and compares the results.

[1]: https://www.kaggle.com/c/titanic
