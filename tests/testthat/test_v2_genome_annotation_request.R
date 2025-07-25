# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test V2GenomeAnnotationRequest")

model_instance <- V2GenomeAnnotationRequest$new()

test_that("accession", {
  # tests for the property `accession` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`accession`, "EXPECTED_RESULT")
})

test_that("annotation_ids", {
  # tests for the property `annotation_ids` (array[character])

  # uncomment below to test the property
  #expect_equal(model.instance$`annotation_ids`, "EXPECTED_RESULT")
})

test_that("symbols", {
  # tests for the property `symbols` (array[character])

  # uncomment below to test the property
  #expect_equal(model.instance$`symbols`, "EXPECTED_RESULT")
})

test_that("locations", {
  # tests for the property `locations` (array[character])

  # uncomment below to test the property
  #expect_equal(model.instance$`locations`, "EXPECTED_RESULT")
})

test_that("gene_types", {
  # tests for the property `gene_types` (array[character])

  # uncomment below to test the property
  #expect_equal(model.instance$`gene_types`, "EXPECTED_RESULT")
})

test_that("search_text", {
  # tests for the property `search_text` (array[character])

  # uncomment below to test the property
  #expect_equal(model.instance$`search_text`, "EXPECTED_RESULT")
})

test_that("sort", {
  # tests for the property `sort` (array[V2SortField])

  # uncomment below to test the property
  #expect_equal(model.instance$`sort`, "EXPECTED_RESULT")
})

test_that("include_annotation_type", {
  # tests for the property `include_annotation_type` (array[V2GenomeAnnotationRequestAnnotationType])

  # uncomment below to test the property
  #expect_equal(model.instance$`include_annotation_type`, "EXPECTED_RESULT")
})

test_that("page_size", {
  # tests for the property `page_size` (integer)

  # uncomment below to test the property
  #expect_equal(model.instance$`page_size`, "EXPECTED_RESULT")
})

test_that("table_fields", {
  # tests for the property `table_fields` (array[character])

  # uncomment below to test the property
  #expect_equal(model.instance$`table_fields`, "EXPECTED_RESULT")
})

test_that("table_format", {
  # tests for the property `table_format` (V2GenomeAnnotationRequestGenomeAnnotationTableFormat)

  # uncomment below to test the property
  #expect_equal(model.instance$`table_format`, "EXPECTED_RESULT")
})

test_that("include_tabular_header", {
  # tests for the property `include_tabular_header` (V2IncludeTabularHeader)

  # uncomment below to test the property
  #expect_equal(model.instance$`include_tabular_header`, "EXPECTED_RESULT")
})

test_that("page_token", {
  # tests for the property `page_token` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`page_token`, "EXPECTED_RESULT")
})
