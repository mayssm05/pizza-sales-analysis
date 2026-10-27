# Pizza Sales Analysis | SQL Server + Excel

> A tutorial-guided learning project. I followed the two-part **Data Tutorials** series and applied the demonstrated workflow; this is not a claim that the entire project was created independently from scratch.

## Learning references

- [SQL & Excel Portfolio Project — Part 1](https://www.youtube.com/watch?v=3Acmk-rqn6c)
- [SQL & Excel Portfolio Project — Part 2](https://www.youtube.com/watch?v=wGJYJ42V8OQ)
- Creator: [Data Tutorials](https://www.youtube.com/@datatutorials1)

## Project workflow

1. Used SQL Server-style queries to calculate sales KPIs and explore order, time, category, size, and pizza-level performance.
2. Used Excel PivotTables, charts, and date filtering to assemble an interactive dashboard.

The analysis covers:

- Revenue, order count, pizzas sold, average order value, and average pizzas per order.
- Order trends by day of week and hour.
- Sales mix by pizza category and size.
- Total pizzas sold by category.
- The five best- and worst-selling pizzas by quantity.

## Project files

| File | Description |
|---|---|
| `sql/pizza_sales_analysis.sql` | Readable SQL Server query script transcribed and formatted from the supplied PDF. |
| `docs/PIZZA_SALES_SQL_QUERIES.pdf` | Original SQL query document. |
| `data/pizza_sales.csv` | Raw sales dataset used for the analysis (48,620 rows, 12 columns). |
| `dashboard/Pizza_Sales_Analysis.xlsx` | Excel workbook with the sales data, PivotTables, charts, and dashboard. Download and open in Excel to explore it. |
| `dashboard/dashboard-preview.mp4` | Short dashboard walkthrough. The clip is filtered to Q1 2015; the workbook's KPI worksheet currently shows Q4 2015, so those period-specific values differ. |

## Dataset snapshot

The CSV contains 48,620 sales-detail rows and 12 columns. The Excel workbook contains the same data for the dashboard analysis. The original publisher/source of the dataset was not included with the supplied files.

Across the full dataset, the calculations give approximately:

- Revenue: **$817,860.05**
- Orders: **21,350**
- Pizzas sold: **49,574**
- Average order value: **$38.31**
- Average pizzas per order: **2.32**

## بالعربية

هذا مشروع تعليمي تطبيقي نفذته باتباع سلسلة شروحات **Data Tutorials**. لا أقدمه على أنه مشروع كامل ابتكرته من الصفر؛ المستودع يوثق تطبيق ما تعلمته في SQL ثم استخدام Excel لبناء لوحة المعلومات، مع الإشارة إلى صاحب الشروحات ومصادرها أعلاه.

يحتوي الملف على استعلامات SQL Server، وملف PDF الأصلي للاستعلامات، ودفتر Excel الذي يضم البيانات ولوحة المعلومات، ومقطع قصير لمعاينة الداشبورد.
