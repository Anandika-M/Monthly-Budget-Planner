disp("--------------------------------------- MONTHLY BUDGET PLANNER AND CALCULATOR ------------------------------------------------");
fprintf('1. Budget planner \n2. Budget calculator\n3. Savings investment Analyser \n 4.Commercial budget planner');
option=input("\nEnter your choice :" );
switch option
   case 1
disp("*************************************** BUDGET PLANNER ***********************************************");
% case for personal budget
amount=input("ENTER YOUR SALARY :");
fprintf("The estimated budget is based on the following :");
disp("1. 50% of income for expenses and needs.");
disp("2. 25%-30% of income for wants.");
disp("3. 15%-20% of income for savings.");
%expense_categories
% Entertainment and leisure 5%-10%
% Personal and insurance =10%-25%
% Savings=15%-20%
% grocery=7%-10%
% Medical Expenses and health=10-15%
% Loan and housing=25%-35%
% transportation=3%
% Education=5%-10%
% Clothing=5%
% Tax=5%-10%
if amount>=0
entertainment=0.05*amount;
insurance=0.10*amount;
savings=0.15*amount;
medical=0.10*amount;
housing=0.25*amount;
clothing=0.05*amount;
tax=0.05*amount;
transportation=0.03*amount;
grocery=0.07*amount;
education=0.05*amount;
electricity=0.01*amount;
total=tax+housing+insurance+medical+clothing+entertainment+savings+grocery+education+transportation;
miscellaneous=amount-total;
else
disp("PLEASE ENTER A NUMBER GREATER THAN 0 !");
end
disp("--------------------------------------------------------------------------------------------------");
disp(" 					EXPENSES				                                                        " )
disp("---------------------------------------------------------------------------------------------------");
fprintf("Entertainment and Leisure :₹ %0.2f\n",entertainment);
fprintf("Insurance and Personal expenses : ₹ %0.2f\n",insurance);
fprintf("Medical expenses and health : ₹ %0.2f\n",medical);
fprintf("Loan and housing :₹%0.2f\n",housing);
fprintf("Clothing :₹%0.2f\n",clothing);
fprintf("Taxes :₹%0.2f\n",tax);
fprintf("Transportation expenses :₹%0.2f\n",transportation);
fprintf("Grocery :₹%0.2f\n",grocery);
fprintf("Education expenses :₹%0.2f\n",education);
fprintf("The remaining amount(Miscellaneous) :₹%0.2f\n",miscellaneous);
fprintf("Total Expenses :₹%0.2f\n",total);
fprintf("Savings :₹%0.2f\n",savings);
categories ={'entertainment','insurance','medical','housing','clothing','tax','transportation','grocery','education','miscellaneous','savings'};
values =[entertainment,insurance,medical,housing,clothing,tax,transportation,grocery,education,miscellaneous,savings];
% Create the pie chart
figure;
set(gcf, 'Position', [100, 100, 1200, 500]);

pie(values, categories);
title("Monthly Budget Breakdown");


bar(values);
xticklabels(categories);
xtickangle(90); 
title("Monthly Expenses and Savings Bar Graph");
xlabel("Categories");
ylabel("Amount (₹)");
        

case 2
% Prompt the user to enter monthly salary
disp("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*- BUDGET CALCULATOR -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
disp("Consider giving the value in rupees(INR)")
monthlySalary = input("\n\nEnter your monthly salary :");
	
disp("------------------------------------------------------------------------")

entertainment = input("Enter entertainment expenses :");
tax = input("Enter tax expenses : ");
loan = input("Enter loan expenses : ");
education = input("Enter education expenses : ");
medical = input("Enter medical expenses : ");
grocery = input("Enter grocery expenses : ");
transportation=input("Enter transportation expenses :");
electricity = input("Enter electricity expense : ");

% Calculate savings
totalExpenses = [entertainment, tax, loan, education, medical, grocery,electricity,transportation];
savings = monthlySalary - sum(totalExpenses);

disp("--------------------------------------------------------------------------");
disp( "                        EXPENSES                                 ")
disp("--------------------------------------------------------------------------");
fprintf("Entertainment expenses:₹%0.2f\n",entertainment);
fprintf("Insurance expenses :₹%0.2f\n",insurance);
fprintf("Medical expenses :₹%0.2f\n",medical);
fprintf("Loan :₹%0.2f\n",housing);
fprintf("Taxes :₹%0.2f\n",tax);
fprintf("Transportation expenses:₹%0.2fn",transportation);
fprintf("Grocery :₹%0.2f\n",grocery);
fprintf("Education expenses :₹%0.2f",education);
categories = {'entertainment', 'tax', 'loan', 'education', 'medical', 'grocery', 'electricity', 'savings', 'transportation'};
values = [entertainment, tax, loan, education, medical, grocery, electricity,savings,transportation];
% Create the pie chart
figure;
set(gcf, 'Position', [100, 100, 1200, 500]);

pie(values, categories);
title("Monthly Budget Breakdown");

% Create a bar graph to visualize expenses and savings

bar([totalExpenses, savings]);
xticklabels(categories);
xtickangle(90); % Rotate x-axis labels
title("Monthly Expenses and Savings Bar Graph");
xlabel("Categories");
ylabel("Amount (₹)");

% Display savings amount
fprintf("\nMonthly Savings : ₹ %.2f\n", savings);
case 3
% Prompt the user for input
initial = input("Enter your initial savings amount (in rupees):");
Contribution = input("Enter your monthly contribution (in rupees):");
rate = input("Enter the annual interest rate (%):");
future=input("Enter the target amount to save :");
% Define the time period in months
time = input("Enter the time period in months:");

% compound interest
final = initial;
for i = 1:time
final = final + Contribution;
final = final* (1 + rate / 12 / 100);
save(i)=final;
end
fprintf("Your savings will grow to ₹%.2f after %d months.\n", final, time);

if save >= future %minimum
fprintf("\nYou are on track to meet your savings goal.\n");
else
fprintf("\nConsider increasing your monthly contributions or seeking higher returns.\n");
end
 case 4
        % Comercial Budget planner
        disp("--------------------------------- Commercial Budget Planner---------------------------------------");
revenue=input("Enter the revenue of the company :");
fprintf("\n\nThe calculation is based on the following analysis\n\n");
% Define your budget categories and initial budget amounts
disp("Marketing: 5% - 12% of revenue");
disp("Sales: 10% - 20% of revenue");
disp("Operations: 20% - 40% of revenue")
disp("Research and Development: 3% - 10% of revenue");
disp("Human Resources: 10% - 35% of revenue")
disp("Miscellaneous: 5% - 10% of revenue")
marketing=0.05*revenue;
sales=0.12*revenue;
operations=0.25*revenue;
research=0.05*revenue;
resource=0.10*revenue;
miscellaneous=0.06*revenue;
categories = {'Marketing', 'Sales', 'Operations', 'Research and Development', 'Human Resources', 'Miscellaneous'};
budgetAmounts = [marketing, sales, operations, research, resource, miscellaneous]; % Example budget amounts for each category
% Display the initial budget amounts
disp("---------------------------------------------------------------------------");
disp('                     Initial Budget Amounts                               ');
disp("---------------------------------------------------------------------------");
fprintf("\nMarketing expenses :%0.2f",marketing);
fprintf("\nSales expenses :%0.2f",sales);
fprintf("\nOperational expenses :%0.2f",operations);
fprintf("\nResearch and Developmental expenses :%0.2f ",research);
fprintf("\nHuman resource expenses : %0.2f",resource);
fprintf("\nMiscellaneous  :%0.2f",miscellaneous);
saving= revenue- sum(budgetAmounts);
fprintf("\n\nThe Total Amount saved  : %0.2f",saving)
% Create a bar plot to visualize the budget amounts and expenses
figure;
bar(1:length(categories), budgetAmounts, 0.5);
xticks(1:length(categories));
xticklabels(categories);
xlabel('Categories');
ylabel('Amount (in ₹)');
title('Commercial Budget Planner');
legend('Budget Amount');
grid on;
otherwise
disp("Sorry ! INVALID CHOICE")
end
