# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test V2reportsGeneOntology")

model_instance <- V2reportsGeneOntology$new()

test_that("assigned_by", {
  # tests for the property `assigned_by` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`assigned_by`, "EXPECTED_RESULT")
})

test_that("molecular_functions", {
  # tests for the property `molecular_functions` (array[V2reportsProcessMetadata])

  # uncomment below to test the property
  #expect_equal(model.instance$`molecular_functions`, "EXPECTED_RESULT")
})

test_that("biological_processes", {
  # tests for the property `biological_processes` (array[V2reportsProcessMetadata])

  # uncomment below to test the property
  #expect_equal(model.instance$`biological_processes`, "EXPECTED_RESULT")
})

test_that("cellular_components", {
  # tests for the property `cellular_components` (array[V2reportsProcessMetadata])

  # uncomment below to test the property
  #expect_equal(model.instance$`cellular_components`, "EXPECTED_RESULT")
})
