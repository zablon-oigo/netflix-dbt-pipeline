## Netflix Data Pipeline
Built a simple transformation pipeline using dbt that fetches raw CSV data from an S3 bucket and loads it into Snowflake under three different schemas: raw (loading), staging, and dev.
### Run Locally

Clone the project

```bash
  git clone https://github.com/zablon-oigo/netflix-dbt-pipeline.git
```

Go to the project directory

```bash
  cd netflix-dbt-pipeline
```
Install dependencies

```bash
  pip install dbt-core dbt-mysql
```

Run dbt transformations

```bash
 dbt run
```
