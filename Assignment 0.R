#Question 1: How big is my dataset? What models can I run?
#There are 21 variables (columns) and 20,0000 observations (rows)
#Examples of simple models you could run
reg.1 <- lm(loan_default_data_set$Def_ind ~ loan_default_data_set$tot_balance)
summary(reg.1)   

#Question 2: What are column names?
colnames(loan_default_data_set)

#Question 3: What are the datatypes
#Continuous Variable examples: tot_balance, avg_balance_cards
#Discrete Examples: credit_age, credit_age_good_account
#Nominal Examples: rep_education
#Ordinal Examples: num_acc_30d_past_due_12_months, num_mortage_currently_past_due

#Question 4: how much is missing
colSums(is.na(loan_default_data_set))
#1958 missing values for variable pct_card_over_50_uti: 
#1559 missing values for rep_income: 
#1 missing value for rep_education
#I would drop these observations since we already have so many observations and these seem like
#important variables for predicting if an account will be defaulted

#Visualization Examples 
plot(loan_default_data_set$tot_balance)
hist(loan_default_data_set$rep_income)
hist(loan_default_data_set$Def_ind)

#Question 5: 
summary(loan_default_data_set)
