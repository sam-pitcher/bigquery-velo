# project_name: "bigquery-velo"

application: bigquery-velo-ext {
  label: "BigQuery Velo"
  url: "https://localhost:8080/bundle.js"
  # file: "bundle.js
  entitlements: {
    core_api_methods: ["me", "run_query", "lookml_model_explore", "query_for_slug"]
  }
}
