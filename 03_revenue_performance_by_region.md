## Question 3: Revenue and Performance by Region
### Sub-questions: <br>
1. What are the top 5 states by revenue <br>
2. What are the top 3 popular product categories in each region? <br>
3. What are the top 3 states per category? <br>
4. Which categories generate most revenue and how does it differ across the states in Brazil? <br>
5. Which categories show the fastest revenue growth month-over-month? <br>
6. What is the revenue concentration (% from top categories)? <br>

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

## 2. What are the top 3 popular categories in each region? <br>

### Top 3 Categories by State: <br> 
#### To understand regional purchasing patters, I analyzed the top-selling product categories across Brazillian states. <br>

#### Methodology:
1. Calculated total payment value by state and product category
2. Ranked categories within each state using 'ROW_NUMBER()'
3. Filtered to rank 1 (top category per state)
4. Selected top 10 states by revenue using 'nlargest(10, 'total_payment') <br>

##### Visuazliation
<img width="1104" height="525" alt="top_three_categories" src="https://github.com/user-attachments/assets/36850b8a-8c16-410e-973a-ea7c06f1a42a" />

### Key Insights: 
1. **bed_bath_table category seems to dominate major economic states in Brazil** Sao Paulo, Rio de Janeiro, Minas Gerais- these states have as their #1 category, suggesting strong demand for home essentials in urban markets. <br>
2. **Southern states show tech preference** - computer accessories seem to dominate in Rio Grande do Sul and Santa Catarina, indicating consumer behavior in Brazil's southern region, possibly reflecting higher tech adoption or income levels <br>
3. **Regional category variation** - Despite bed_bath_table's overall dominance, categories like furniture_decor (Paraná), health_beauty (Bahia, Pernambuco, Ceará), and auto (Goiás) lead in specific states, suggesting opportunities for region-specific marketing strategies.

## 3. What are the top 3 states per category? <br> 



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





  
