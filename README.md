# Sales Incentive Compensation Analytics System

## Objective
Designed a multi-table relational sales compensation system to calculate commission, bonus eligibility, and total payout using rule-based logic.

## Database Design
- sales_reps: Sales representative information
- sales_transactions: Individual transaction records (120 rows)
- compensation_rules: Tier-based commission and bonus rules

## Business Logic
- Achievement % = Total Sales / Monthly Target
- Commission applied based on achievement slab
- Bonus eligibility determined via rule thresholds
- Total payout = Commission + Bonus

## Analytics Implemented
- Region-wise performance aggregation
- Tier-based compensation mapping
- Top performer identification
- Rule-engine compensation calculation

## Tools Used
SQL (Joins, CTEs, Aggregations), Microsoft Excel, Power BI