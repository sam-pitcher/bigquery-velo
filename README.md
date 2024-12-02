# BigQuery and Looker Monitoring Dashboards

## Overview  
This suite of dashboards and LookML models enables organizations to monitor and analyze **Looker and BigQuery consumption** directly in Looker. These dashboards provide insights into query performance, costs, and user/Explore/Dashboard/Model activity, empowering teams to optimize resource usage, reduce costs, and ensure efficient operations.

---

## Features  

### Query Performance Analysis  
- Identify slow or inefficient queries.  
- Analyze trends in execution times and bytes processed.  
- Detect potential bottlenecks.  

### Cost Monitoring  
- Visualize costs by project, team, or user.  
- Identify cost drivers, such as high-frequency queries.  
- Monitor adherence to budget allocations.  

### User Activity Tracking  
- Understand query patterns by user/Dashboard/Explore.  
- Detect anomalies or spikes in usage.  
- Provide insights for training or cost-saving initiatives.

  <img width="1543" alt="image" src="https://github.com/user-attachments/assets/de343091-9550-4652-a04b-8118eb5d9d38">

---

## Requirements  

### 1. Prerequisites  
- **BigQuery Dataset**: Contains logs and billing data, such as query usage and billing exports. To populate the required **Looker System Activity data** in BigQuery, use the following repository:  
[BigQuery Velo Data](https://github.com/sam-pitcher/bigquery-velo-data)
- **Service Account**: Grant the following roles with access to the above dataset:  
  - `BigQuery Data Viewer`  
  - `BigQuery Job User`

### 2. Looker Instance  
Ensure you have admin access to create new projects or import remote LookML projects.  

### 3. Remote Project Import (Optional)  
If using `remote_project_import`, the parent Looker project must be configured for external project imports.
