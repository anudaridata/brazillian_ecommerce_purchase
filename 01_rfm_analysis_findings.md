### Question 1 : Who are our most valuable customers using RFM (Recency, Frequency, Monetary) analysis, and how are customers distributed across different segments?
## Result Table 
<img width="1250" height="317" alt="Screenshot 2025-11-10 at 0 29 02" src="https://github.com/user-attachments/assets/1c2aa8be-43d9-4045-bbcd-4eb534823f58" />

<img width="873" height="450" alt="image" src="https://github.com/user-attachments/assets/645c5d09-98bc-4b03-8547-522c755b581f" />


## Key Findings: <br>
### 1. VIP Customer Revenue Concentration <br>
VIP customers (7736 customers, 8% in total) generate 4,865,465 in revenue (36.8% of total). However, 6587 of these VIP customers (85%) are in 'Cooling' or 'At Risk' status  <br>
Implication: High revenue concentration in a small customer segment that shows declining engagement patters. <br>
### 2. Single Purchase Business Model Challenge <br>
Finding: Combined "At Risk" and "Cooling" segments ( VIP at Risk, VIP Cooling, Mid-Value at Risk, Mid-Value Cooling) represent 6,645,499 (50.3% of total revenue) and they have not purchased in 6+ months (recency > 180 days). However, with average order frequency of 1.0 - 1.4 items across ALL segments, these customers may be satisfied one-time purchasers rather than churned repeat customers. Critical caveat: Traditional RFM "at risk" classification may not apply to this business model. Customers who have not purchased in 6+ months might not intend to return, regardless of satisfaction level <br>
### 3. Limited Active Customer Base <br>
Finding: Only 15,132 customers (15.7%) are classified as "Active" (VIP active, Mid-Value Active, Low-Value Recent) have purchased within last 4 months and generate 2,021,752 (15.3% of revenue). <br>
Implication: Small active customer base suggests either high customer acquisition needs or business model naturally suited to infrequent purchases. <br>

## Analysis Summary <br>
Critical Data Limitation: 
This dataset exhibits characteristics of predominantly single-purchase customer base (average 1.0-1.4 items per customer across all segments). The analysis reveals significant revenue concentraton in high value customers who are largely disengaged, presenting both risk and opportunity for targeted retention campaigns. <br>
Implication for Analysis <br> 
### 1. "At Risk" Classification May Be Misleading <br>
- Customers classified "At Risk" (270+ days no purchase) may be satisfied one-time buyers, not churned repeat customers <br>
- Without repeat purchase intent data, we cannot distinguish between: <br>
- Genuinely dissatisfied customers who left <br>
- Satisfied customers who completed their purchase journey <br>
- Customers whose product category does not require replenishiment/ repurchase <br>
### 2. Recency-Based Segmentation Limitations <br>
- Traditional RFM assumes customers SHOULD repurchase <br>
- This dataset suggests customers often do not intend to return <br>
- Business model may be acquisition-focused rather than retention-focused <br>
### 3. Win-Back Campaign ROI Uncertainty <br>
- Without historical repeat-purchase data, we cannot predict which "at risk" customers would actually return <br>
- Win-back campaigns should be tested on small segments first before full investment <br>
- ROI expectations for reactivation should be conservative <br> 

## Methodology <br> 
This analysis uses a modified RFM (Recency, Frequency, Monetary) segmentation approach optimized for an e-commerce dataset with predominantly single-purchase customers. <br>
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

### Threshold Rationale
** Recency Thresholds <br> 
- Active (≤120 days): Captures customers in their natural repurchase window (~4 months), represwnting the top ~22% most engaged customers <br>
- Cooling (121-270 days): 4-9 months window where intervention is still effective <br>
- At Risk (270+ days): Beyonf 9 months, customers show significantly reduced repurchase probability <br>

**Monetary Thresholds: **
- Low-Value (<$100): Below the median total spend ($87), typically single-purchase customers <br>
- High-Value ($100-299): Customers demonstrating above median spending, potentially indicating multiple purchases or higher-value single purchase <br>
- VIP ($300+): Top ~8% of customers by lifetime value, warranting premium retention investment <br>

Note: These threshold balance statistical distribution with actionable business segments, optimized for resource allocation in retention making. However, their effectiveness depends on whether customers in this business naturally repurchase. <br> 

# Data Sources <br> 
- Data Range: Orders through October 17, 2018 <br>
- Customer Base: 96,478 customers with delivered orders <br>
- Metrics Calculated: <br>
  - Recency: Days since last purchase <br>
  - Monetary: Total spending per customer <br>
  - Basket size: Total count of order items per customer <br>

## Segment Analysis & Recommendations <br> 
### 1. VIP at Risk (3871 customers, 2.4 million revenue) <br>
- Highest historical spend: 629.75 average <br>
- Have not purchased in 421 days (14 months) <br>
- Higher basket size 1.4 VS 1.0 <br>
- 2.4 million revenue at risk <br>

### Why they might have left? (Hypothesis) <br>
## Hypothesis 1: One-Time High-Value Purchase Intent <br>
- Customers bough items such as furniture, electronics, special occation <br>
- Satisfied with purchase, simply no current need <br>
- Not churned - just completed their buying journey <br>
## Hypothesis 2: Product Category Matters (more analysis is needed) <br> 
- If selling consumables -> genuine churn concern <br>
- If selling durables -> expected behavior <br>
## Hypothesis 3: True Churn (Test Required) <br>
- Genuine dissatisfaction (quality, service, pricing) <br>
- Competitor switching <br>
- Can only be validated through win-back campaign response rates <br>
- Poor customer service <br> 
- Pricing concerns <br> 

### 2.VIP Cooling down (2716 customers, 1.7 million revenue) <br>
- High historical spend: 622.9 average <br>
- Last purchase 194 days ago (around 6 months)
- 12.8% of total revenue starting to slip away <br>
- Still within potentially saveable range <br>
- Revenue cooling 1.691.807 <br>
Business Impact <br>
- If no actions get taken, they might become "VIP at Risk" status <br> 
### Why they are cooling (Hypothesis) <br>
- Natural purchase cycle gap <br>
- Competitors might be winning <br>
- Lost engagement with brand <br>
- Simply satisfied one-time buyers with no repurchase need <br>

### Actions that can be taken: <br>
1. We miss you campaign with 20% discount <br>
2. Personalized product recommendations via email <br>
3. Showcase new arrivals relevant ot past purchases <br>
4. Exclusive early access to new products <br>

### 3. Mid Value at Risk (15472 customers, 2.6 million revenue) <br>
- Moderate historical spent: 168.12 average <br> 
- Last purchase: 413 days ago (13.7 months)  <br>
- Largest revenue percentage segment: 19.7 % <br>
- Largest at-risk group by count <br>

### Business Impact <br> 
- Revenue at risk: 2,601,098 million <br>
- Largest revenue segment currently at risk <br>
- Win-back ROI highly uncertain without testing <br>

### Recommended Actions (Conservative Approach)  <br> 
## Phase 1: Low-Cost Test (Month 1) <br>
1. Email only campaign: "It's been a while - here is 25% off" <br>
2. Target 10% of segment (1547 customers)
3. Success Threhsold: >3% converstion to justifyu broader investment
## Phase 2: If Test Succeeds: <br> 
1. Automated win-back email series (3 emails over 2 weeks) <br>
2. New product showcase: "See what you have missed" <br>
3. Free shipping incentive <br>
4. Retargeting ads on social media <br>
5. Survey to understand departure reasons <br>
## Phase 3: If Test Fails <br> 
1. Remove from expensive marketing channels (paid ads, direct email) <br>
2. Keep on low-cost email list only <br>
3. Reallocate budget to customer acquisition or proven repeat buyers <br>
Investment caution: This segment represents $2.6 million in past revenue but with average 1.2 items per customer and 413 days recency, aggressive win back investment is risky without validation <br>

### 4. VIP Active (1,149 customers | $736K revenue) <br>
Profile:<br>
- Highest spend: $640.45 average<br>
- Most recent: 84 days since purchase<br>
- Only 1.2% of customer base<br>
- Revenue: $733,850 (5.6% of total)<br>

## Opportunity:<br>
Recent high-value purchasers - short window for cross-sell and referral requests before they complete their journey.<br>
Actions:<br>

- Cross-sell complementary products (30-60 day window)<br>
- Request product reviews and referrals<br>
- Use segment for lookalike acquisition targeting<br>


### 5. Mid-Value Active (5,094 customers | $831K revenue)<br>
Profile:<br>

- Recent purchase: 84 days ago<br>
- Moderate spend: $163.13 average<br>
- Revenue: $831,207 (6.3% of total)<br>

## Opportunity:<br>
- Largest "recent buyer" segment - focus on cross-sell window and learning to increase AOV for future customers.<br>
Actions:<br>

- Cross-sell attempts within 60-day window<br>
- Referral program enrollment<br>
- Analyze purchase patterns to optimize future customer AOV<br>


### 6. Mid-Value Cooling Down (11,659 customers | $1.9M revenue)<br>
Profile:<br>

- Single purchase: $164.29 average<br>
- Made 196 days ago (6.5 months)<br>
- Revenue: $1,915,424 (14.5% of total)<br>
- Largest mid-value segment<br>

## Reality:<br>
Given one-order model, these are completed customers rather than "cooling down" buyers.<br>
Actions:<br>

- Test low-cost cross-sell on 10% sample<br>
- If <3% response, suppress from active marketing<br>
- Focus budget on new customer acquisition instead<br>


### 7. Low-Value Recent (8,690 customers | $455K revenue)<br>
Profile:<br>

- Recent purchase: 83 days ago<br>
- Low spend: $52.34 average<br>
- Revenue: $454,707 (3.4% of total)<br>

## Actions:<br>

- Single follow-up for cross-sell opportunity<br>
- Analyze acquisition channels bringing low-value customers<br>
- Minimal ongoing investment<br>


### 8. Low-Value Churned (28,765 customers | $1.5M revenue)<br>
Profile:<br>
- Single purchase: $53.75 average<br>
- Made 415 days ago<br>
- Largest segment: 29.8% of customer base<br>
- Historical revenue: $1,546,042 (11.7% of total)<br>

## Actions:<br>

- Suppress from all marketing channels<br>
- Reallocate retention budget to acquisition<br>
- Accept as completed customer journeys<br>


### 9. Others (19,062 customers | $1.0M revenue)<br>
Profile:<br>

- Mid-recency: 198 days ago<br>
- Low spend: $52.86 average<br>
- Revenue: $1,007,735 (7.6% of total)<br>

## Actions:<br>

- Minimal marketing investment<br>
- Analyze for acquisition channel optimization<br>
- Monitor but don't actively engage<br>


## Strategic Insights<br>
1. One-Order Business Model<br>
Finding: 99%+ of customers made exactly ONE order.<br>
Implication: Traditional retention strategies don't apply. Focus shifts to acquisition efficiency and maximizing first-order value.<br>

2. Revenue Concentration<br>
Finding: 8% of customers (VIP segments) generate 37% of revenue.<br>
Action: Use VIP profiles for lookalike acquisition targeting rather than retention programs.<br>

3. Critical 90-Day Window<br>
Finding: Customers who purchased 120+ days ago show no return behavior.<br>
Action: Focus cross-sell and referral efforts in first 90 days, then suppress marketing.<br>

### Key Recommendations<br>
Given the one-order business model:<br>

- Maximize Average Order Value: Implement checkout upsells, bundles, and free shipping thresholds<br>
- Optimize Acquisition: Focus on channels bringing high-value customers, reduce CAC<br>
- Leverage Cross-Sell Window: Aggressive complementary product marketing in first 90 days<br>
- Build Referral Program: Convert satisfied customers into acquisition channel<br>
- Stop Retention Spend: Reallocate win-back budgets to acquisition<br>

Expected Impact: Shifting from retention to acquisition focus could improve marketing ROI by 40-60%.<br>

### SQL query <br>
Full analysis code available at https://github.com/anudaridata/brazillian_ecommerce_purchase/blob/main/01_rfm_analysis_final.sql



   


