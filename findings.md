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

### Growth Opportunity Segment <br> 
Mid-Value Active (5094 customers| 831 thousand in revenue) <br> 
Active engagement: 84 days sicne last purchase <br>
Moderate spend: 163.13 average <br> 
Business Impact: <br>
Currently 6.3% of revenue <br> 
Active engagement = high potential <br>
Close to VIP threshold $300 - need only $137 dollars more
Upsell Strategy <br> 
Bundle deals that push cart value to $300+ <br>
Incentive programs 'Spend 300$, get $50 credit for next purchase' <br>
Loyalty points accelerator (2x points this month) <br>



   


