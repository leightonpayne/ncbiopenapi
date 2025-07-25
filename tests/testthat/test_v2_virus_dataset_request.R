# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test V2VirusDatasetRequest")

model_instance <- V2VirusDatasetRequest$new()

test_that("accessions", {
  # tests for the property `accessions` (array[character])

  # uncomment below to test the property
  #expect_equal(model.instance$`accessions`, "EXPECTED_RESULT")
})

test_that("taxon", {
  # tests for the property `taxon` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`taxon`, "EXPECTED_RESULT")
})

test_that("taxons", {
  # tests for the property `taxons` (array[character])

  # uncomment below to test the property
  #expect_equal(model.instance$`taxons`, "EXPECTED_RESULT")
})

test_that("refseq_only", {
  # tests for the property `refseq_only` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`refseq_only`, "EXPECTED_RESULT")
})

test_that("annotated_only", {
  # tests for the property `annotated_only` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`annotated_only`, "EXPECTED_RESULT")
})

test_that("released_since", {
  # tests for the property `released_since` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`released_since`, "EXPECTED_RESULT")
})

test_that("updated_since", {
  # tests for the property `updated_since` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`updated_since`, "EXPECTED_RESULT")
})

test_that("host", {
  # tests for the property `host` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`host`, "EXPECTED_RESULT")
})

test_that("pangolin_classification", {
  # tests for the property `pangolin_classification` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`pangolin_classification`, "EXPECTED_RESULT")
})

test_that("geo_location", {
  # tests for the property `geo_location` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`geo_location`, "EXPECTED_RESULT")
})

test_that("usa_state", {
  # tests for the property `usa_state` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`usa_state`, "EXPECTED_RESULT")
})

test_that("complete_only", {
  # tests for the property `complete_only` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`complete_only`, "EXPECTED_RESULT")
})

test_that("table_fields", {
  # tests for the property `table_fields` (array[V2VirusTableField])

  # uncomment below to test the property
  #expect_equal(model.instance$`table_fields`, "EXPECTED_RESULT")
})

test_that("include_sequence", {
  # tests for the property `include_sequence` (array[V2ViralSequenceType])

  # uncomment below to test the property
  #expect_equal(model.instance$`include_sequence`, "EXPECTED_RESULT")
})

test_that("aux_report", {
  # tests for the property `aux_report` (array[V2VirusDatasetReportType])

  # uncomment below to test the property
  #expect_equal(model.instance$`aux_report`, "EXPECTED_RESULT")
})

test_that("format", {
  # tests for the property `format` (V2TableFormat)

  # uncomment below to test the property
  #expect_equal(model.instance$`format`, "EXPECTED_RESULT")
})

test_that("use_psg", {
  # tests for the property `use_psg` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`use_psg`, "EXPECTED_RESULT")
})
