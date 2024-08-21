project_name: "bigquery-velo"

application: bigquery-velo {
  label: "BigQuery Velo"
  url: "https://localhost:8080/bundle.js"
  # file: "bundle.js
  entitlements: {
    use_embeds: yes
    use_iframes: yes
    external_api_urls : ["https://localhost:8080","http://localhost:8080"]
    core_api_methods: ["me", "run_query", "run_inline_query", "create_query", "dashboard", "lookml_model_explore", "query_for_slug"]
  }
}
