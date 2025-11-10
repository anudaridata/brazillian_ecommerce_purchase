### Question 1 : Who are our most valuable customers using RFM (Recency, Frequency, Monetary) analysis, and how are customers distributed across different segments?
## Result Table 
<img width="1250" height="317" alt="Screenshot 2025-11-10 at 0 29 02" src="https://github.com/user-attachments/assets/1c2aa8be-43d9-4045-bbcd-4eb534823f58" />

## Key Findings: <br>
1. VIP customers (7736 customers, 8% in total) generate 4,865,465 in revenue (36.8% of total). However, 6587 of these VIP customers (85%) are in 'Cooling' or 'At Risk' status  <br>
2. Combined "At Risk" and "Cooling" segments ( VIP at Risk, VIP Cooling, Mid-Value at Risk, Mid-Value Cooling) represent 6,645,499 (50.3% of total revenue) and they have not purchased in 6+ months (recency > 180 days)  <br>
3. Only 15,132 customers (15.7%) are classified as "Active" (VIP active, Mid-Value Active, Low-Value Recent) have purchased within last 4 months and generate 2,021,752 (15.3% of revenue)  <br>

## Analysis Summary <br>
This dataset exhibits characteristics of predominantly single-purchase customer base (average 1.0-1.4 items per customer across all segments). The analysis reveals significant revenue concentraton in high value customers who are largely disengaged, presenting both risk and opportunity for targeted retention campaigns. <br>

## Methodology <br> 
This analysis uses a modified RFM (Recency, Frequency, Monetary) segmentation approach optimized for an e-commerce dataset with predominantly single-purchase customers. <br>
## Key metrics <br>
Recency: Days since last purchase (as of October 17, 2018) <br>

Active: ≤ 120 days (~4 months) <br>
Cooling: 121-270 days (~4-9 months) <br>
At Risk/Churned: 270+ days (~9+ months) <br>

Monetary Value: Total amount spent (lifetime) <br>

VIP: $300+ <br>
Mid-Value: $100-$299 <br>
Low-Value: < $100 <br>

Frequency (Basket): Total order items purchased <br>

### Segmentation Logic <br> 
Customers were classified into 9 segments based on the intersection of their value tier and recency status: <br>
Value Tier × Recency Status = Segment <br>

VIP ($300+): <br>
- Active (≤120 days) → VIP Active <br>
- Cooling (121-270 days) → VIP Cooling Down <br>
- At Risk (270+ days) → VIP At Risk <br>

Mid-Value ($100-299): <br>
- Active → Mid-Value Active <br>
- Cooling → Mid-Value Cooling <br>
- At Risk → Mid-Value At Risk <br>

Low-Value (<$100): <br>
- Recent (≤120 days) → Low-Value Recent <br>
- Churned (270+ days) → Low-Value Churned <br>

## Next Action <br> 
### 1. VIP at Risk (3871 customers, 2.4 million revenue) <br>
They have the highest historical spend: 629.75 average <br>
Have not purchased in 421 days (14 months) <br>
Higher basket size 1.4 VS 1.0 <br>
2.4 million revenue at risk <br>

### Why they have left? (Hypothesis) <br>
Product quality issues <br>
Poor customer service <br> 
Pricing concerns <br> 

### 2.VIP Cooling down (2716 customers, 1.7 million revenue) <br>
High historical spend: 622.9 average <br>
Last purchase 194 days ago (around 6 months)
12.8% of total revenue starting to slip away <br>
Still within saveable range <br>
Revenue cooling 1.691.807 <br>
Business Impact <br>
If no actions get taken, they might become "VIP at Risk" too <br> 
### Why they are cooling (Hypothesis) <br>
Competitors might be winning <br>
Lost engagement with brand <br>
Natural purchase cycle gap
### Actions that can be taken: <br>
1. We miss you campaign with 20% discount <br>
2. Personalized product recommendations via emal <br>
3. Showcase new arrivals relevant ot past purchases <br>

### 3. Mid Value at Risk (15472 customers, 2.6 million revenue) <br>
Moderate historical spent: 168.12 <br> 
Last purchase: 413 days ago <br>
Largest revenue percentage segment: 19.7 % <br>
Largest at-risk group by count <br>
### Business Impact <br> 
Revenue at risk: 2,601,098 million <br>
Largest revenue segment currently at risk <br>
### Actions <br> 
1. Discount offers (Ex: 25% discount offer) <br>
2. New product since you have been gone email and showcae it <br>
3. Automated email win-back series (3 emails over 2 weeks)
4. Retargeting ads on social media <br>
5. Free shipping incentive <br>
6. Survey to understand departure reasons <br>
7. Product recommendations based on browsing history <br>

### 4. VIP Active (1,149 customers | $736K revenue) <br> 
Highest spend + most recent: $640.45 average, 84 days recency <br>
Only 1.2% of customer base <br> 
Highest basket size: 1.4 items on average <br> 
### Business Impact: <br> 
Current revenue $733,850 (5.6%) <br>
Lifetime value is extremely high <br> 

### Actions: <br>
1. Welcome to VIP program email <br>
2. Dedicated account manager assignment <br>
3. Exclusive thank you gift <br>
4. Request review on products <br>
5. Free expedited shipping on all orders <br>
6. Priority customer service (dedicated line/email) <br>
   
### Growth Opportunity Segment <br> 
5. Mid-Value Active (5094 customers| 831 thousand in revenue) <br> 
Active engagement: 84 days sicne last purchase <br>
Moderate spend: 163.13 average <br> 

### Business Impact: <br>
Currently 6.3% of revenue <br> 
Active engagement = high potential <br>
Close to VIP threshold $300 - need only $137 dollars more
### Actions: <br>
1. Upsell Strategy <br>
2. Bundle deals that push cart value to $300+ <br>
3. Incentive programs 'Spend 300$, get $50 credit for next purchase' <br>
4. Loyalty points accelerator (2x points this month) <br>

### 6. Mid value Cooling (11,659 customers | 1.9M revenue) <br> 
Moderate spend + moderate recency: 164.29 average spending, 196 days average recency <br>
14.5% of revenue <br> 
Largest mid-value segment <br>
Early intervention opportunity <br>

Business Impact: <br> 
Revenue cooling: $1,915,424 <br> 
Catching them early = higher success reate than "At Risk" <br>
Large volume = significant total impact potential <br>

### Actions: <br>
1."Based on your last purchase" product emails <br>
2. Seasonal reminders (e.g., "Holiday shopping made easy")
3. Replenishment reminders for consumable products <br> 
4. Incentives: 15% discount "welcome back" offer , free shipping on next order, loyalty points bonus

### 7. Low-Value Recent (8,690 customers | $455K revenue) <br>
Recent but low spend: 52.34$ avg, 83 days <br>
9% customer base <br> 
Potential new customers still evaluating <br>

### Actions: <br> 
1. Nurture sequence to increase order value <br>
2. Cross sell complementary items <br>
3. Loyalty program enrollment <br>
Goal: Upgrade 20% to Mid-Value tier within 6 months <br>

### 8. Low-Value Churned (28,765 customers | $1.5M revenue) <br>
Low spend + old: $53.75 avg, 415 days <br>
Largest segment by count (29.8%) <br>

### Actions: <br> 
1. Minimal investment (low-cost email only) <br>
2. Remove from expensive marketing channels <br>
3. One final "last chance" offer <br>
4. If no response in 90 days → suppress from active marketing <br>
Goal: Reduce marketing waste and focus those resources on high-value segments <br>

### 9. Others (19,062 customers | $1.0M revenue) 
Mid-recency, low spend: $52.86 avg, 198 days <br>
19.8% of customer base and mixed characterisitics <br> 

### Actions: <br> 
1. Further segmentation recommended <br>
2. Automated nurture campaigns <br>
3. Monitor for movement to defined segments <br>

## Key Insights and Learning: <br>
1. Dataset characteristics: One-Time Purchase is dominant <br>
Finding: 95%+ of customers made only a single purchase (avg items = 1.0-1.4 across all segments) <br>
Implication: <br>
1. Traditional "Frequency" in RFM is less meaningful <br>
2. Focus shifted to Recency + Monetary value <br>
3. Retention is more critical than initially expected <br>

### Business recommendations <br> 
1. Invest heavily in first-purchase experience <br>
2. Implement strong post-purchase follow-up <br>
3. Create compelling reasons to return (loyalty program, subscription model) <br>

## Revenue Concentration: The 8% Rule <br> 
Finding: 8% of customers (VIP segments) generate 37% of revenue <br>
Small group of high-value customers drives business <br>
Proactive engagement before they show churn signals <br> 

### Time to Churn: The 6 Month Window <br> 
Finding: Customers who haven't purchased in 6+ months (Cooling Down) rapidly progress to At Risk status <br>
120-day mark is critical intervention point <br>
"Cooling" is the last easy save opportunity <br>
Once customers hit 270+ days, recovery becomes expensive <br> 
### Actions <br> 
Automated triggers at 90, 120, and 180 days <br> 
Progressive incentive escalation (10% -> 15% -> 25%) 
Early warning system for high-value custoemrs <br> 


### SQL query <br>
Full analysis code available at https://github.com/anudaridata/brazillian_ecommerce_purchase/blob/main/01_rfm_analysis_final.sql



   


