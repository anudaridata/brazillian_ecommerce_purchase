## Question 3: Revenue and Performance by Region
### Sub-questions: <br>
1. What are the top 5 states by revenue <br>
2. What are the top 3 popular product categories in each region? <br>
3. What are the top categories in each state? <br>
4. Which categories generate most revenue and how does it differ across the states in Brazil? <br>
5. Which categories show the fastest revenue growth month-over-month? <br>

## Key Findings: <br>
## 1. Top 5 states by revenue <br>
### Key Results: <br>

<img width="1189" height="590" alt="image" src="https://github.com/user-attachments/assets/e44266e3-b8d3-47ce-bfe0-33340cb8822d" />


### Insights from Finding 1: <br>
- Sao Paulo dominates the e-commerce market, generating nearly 3x times more revenue (and 37.4% of total_revenue) than the second place state (Rio de Janeiro) <br>
- Top 5 states account for approximately of 73% of total revenue (11,288,956 BRL out of 15,433,462 BRL <br>
- All top 5 states are located in Brazil's South and Southeast regions, highlighting stronf economic concentration in developed regions and opportunity for geographic expansion <br>

## Business Implications: <br> 
- Marketing and distribution should prioritize Sao Paulo and Rio de Janeiro <br>
- Warehouse/fulfillment centers optimally located in Southeast <br>
- Consider regional partnerships to expand beyond top 5 sales <br>

### 2. What are the top 3 popular product categories in each region? <br>
### Key Findings 
1. Southeast Region Dominates
- bed_bath_table leads with R$1.25M revenue, representing the largest market opportunity
- Accounts for majority of overall revenue across all categories
2. health_beauty Has Universal Appeal
- Only category appearing in top 3 across all 5 regions
- Indicates consistent nationwide demand regardless of location
3. Clear Regional Preferences
- Central-West: Auto products (R$76K)
- North: Furniture_decor (R$26K)
- Northeast: Watches_gifts and computers_accessories (R$260K combined)
- South: Furniture_decor dominates (R$268K)
- Southeast: Home essentials lead due to urban density
4. Strategic Implications
- Prioritize Southeast region for maximum revenue impact
- Stock health_beauty products nationally
- Tailor marketing campaigns to regional preferences
<img width="1790" height="985" alt="image" src="https://github.com/user-attachments/assets/7bfc63c5-0368-4d76-9be8-a27ab03ed2cb" />

## 3. What are the most popular categories in each state? <br>

### Top Categories by State: <br> 
#### To understand regional purchasing patters, I analyzed the top-selling product categories across Brazillian states. <br>

#### Methodology:
1. Calculated total payment value by state and product category
2. Ranked categories within each state using 'ROW_NUMBER()'
3. Filtered to rank 1 (top category per state)

##### Visuazliation 1: Top 10 States by Revenue
###### First, I visualized the top 10 revenue-generating states using 'nlargest(10, 'total_payments') to focus on the major markets.
<img width="1104" height="525" alt="top_three_categories" src="https://github.com/user-attachments/assets/36850b8a-8c16-410e-973a-ea7c06f1a42a" />  

### Key Insights: <br>
1. **bed_bath_table category seems to dominate major economic states in Brazil** Sao Paulo, Rio de Janeiro, Minas Gerais- these states have as their #1 category, suggesting strong demand for home essentials in urban markets. <br>
2. **Southern states show tech preference** - computer accessories seem to dominate in Rio Grande do Sul and Santa Catarina, indicating consumer behavior in Brazil's southern region, possibly reflecting higher tech adoption or income levels <br>
3. **Regional category variation** - Despite bed_bath_table's overall dominance, categories like furniture_decor (Paraná), health_beauty (Bahia, Pernambuco, Ceará), and auto (Goiás) lead in specific states, suggesting opportunities for region-specific marketing strategies.

##### Visuazliation 2: All 27 States
###### To see the complete picture across all Brazillian states, I expanded the analysis to inlcude all 27 states ranked by revenue.
<img width="986" height="1189" alt="top_categories_in_all_states" src="https://github.com/user-attachments/assets/ff710a1d-f861-470a-aa71-f2a6b8ee669e" />

### Key Insights: 
1. **Revenue concentration in top 3 states** - São Paulo, Rio de Janeiro, and Minas Gerais dominate revenue generation, confirming the patterns observed in the top 10 analysis. <br>
2. **health_beauty leads in most states by count** - While the top 3 states prefer bed_bath_table, 11 out of 27 states have health_beauty as their leading category, making it most popular category by state count (though not by revenue). <br>
3. **Clear regional divide** - High-revenue urban centers favor home goods, while smaller states across the North regions show stronger preference for health and beauty products. <br>

## 4. Which categories generate most revenue and how does it differ accross Top 3 states in Brazil? <br> 
<img width="1385" height="690" alt="image" src="https://github.com/user-attachments/assets/86dd7ccd-92e5-49b3-a71d-5e593de49367" /> <br>
## Key Findings: <br> 
### Geographic Concentration <br> 
- For the ease of calculation, I focused on Top 10 categories <br> 
- Top 10 revenue-generating categories are dominated by 3 southeastern states: Sao Paulo, Rio de Janeiro, and Minas Gerais <br>
### Category Performance <br>
- Top 10 categories that generate the most revenue are: auto, bed_bath_table, computers_accessories, cool_stuff, furniture_decor, garden_tools, health_beauty, housewaves, sports_leisure, watches_gifts <br>
- These categories align with the affluent demographics of Brazil's wealthiest regions <br>
### Business Implications <br>
- Strong existing market presence in these 3 states suggest opportunities for deepr market penetration through targeted marketing <br>
- Revenue concentration in southeastern Brazil presents both an advantage (established customer base) and a risk (limited geographic diversification) <br>

### 5. Which categories show the fastest revenue growth month-over-month? <br>

To calculate growth rates, I filtered categories with at least 12 months of data and removed low-revenue months to avoid volatality <br>
```python
# Filter to substantial categories (12+ months)
substantial_cats = category_month_count[category_month_count >= 12].index
monthly_revenue_filtered = monthly_revenue[monthly_revenue['category'].isin(substantial_cats)]

# Calculate monthly growth
monthly_revenue_filtered['previous_month_revenue'] = monthly_revenue_filtered.groupby('category')['monthly_revenue'].shift(1)
monthly_revenue_filtered['mom_growth_pct'] = ((monthly_revenue_filtered['monthly_revenue'] - monthly_revenue_filtered['previous_month_revenue']) / monthly_revenue_filtered['previous_month_revenue']) * 100

# Filter out low base values to reduce noise (e.g 92.78 dollars art category in year 2017 december)
growth_data_filtered = growth_data[growth_data['previous_month_revenue'] > 500]
```

#### Methodology: 
1. Extracted monthly revenue data for each category (Oct 2016 - Aug 2018)
2. Filtered categories with at least 12 months of data (62 out of 71 categories)
3. Calculated month-over-month growth percentage for each category
4. Filtered out months with revenue > 500 R$ to reduce volatility from low base values
5. Used median growth rate as opposed to mean growth rate to avoid distortion from outliers <br>
<img width="1179" height="899" alt="top-10_growing_vs_declining" src="https://github.com/user-attachments/assets/e52ab14b-7bf2-4447-a5db-69998f6bc1ba" />

## Key Findings: 
### Faster Growing Categories: 
1. **Construction tools lead growth** - construction_tools_safety (31.3%), construction_tools_lights (27.1%), and construction_tools_construction (26.8%) show the strongest consistent month-over-month growth, suggesting rising demand in the home improvement/construction sector.
2. **Tech and lifestyle categories perform well** - Watches_gifts (28.5%), computers (26.3%), and pet_shop (25.8%) demonstrate strong growth, indicating these categories resonate with the e-commerce customer base.

3. **Home appliances gaining traction** - With 25.4% median growth, home_appliances shows steady upward momentum.

**Declining Categories:**
1. **Fashion categories struggling** - Fashion_sport (-90.5%), fashio_female_clothing (-74.2%), and fashion_underwear_beach (-37.5%) show severe month-over-month declines, suggesting either seasonality, increased competition, or shifting consumer preferences.

2. **Entertainment media declining** - DVDs_blu_ray (-70.9%) and music (-58.3%) reflect the digital transformation of media consumption, with physical formats losing ground.

3. **Volatile categories** - Drinks showed -28% median growth despite having the highest mean growth (229%), indicating extreme volatility with occasional spikes but overall declining trend.

**Strategic Recommendations:**
- **Invest in construction tools inventory and marketing** - These categories show consistent, sustainable growth
- **Re-evaluate fashion strategy** - Consider category-specific issues (pricing, product mix, competition) given persistent declines
- **Monitor volatile categories carefully** - High mean but negative median growth suggests unsustainable spikes









  
