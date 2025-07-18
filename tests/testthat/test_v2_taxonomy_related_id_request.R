# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test V2TaxonomyRelatedIdRequest")

model_instance <- V2TaxonomyRelatedIdRequest$new()

test_that("tax_id", {
  # tests for the property `tax_id` (integer)

  # uncomment below to test the property
  #expect_equal(model.instance$`tax_id`, "EXPECTED_RESULT")
})

test_that("include_lineage", {
  # tests for the property `include_lineage` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`include_lineage`, "EXPECTED_RESULT")
})

test_that("include_subtree", {
  # tests for the property `include_subtree` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`include_subtree`, "EXPECTED_RESULT")
})

test_that("ranks", {
  # tests for the property `ranks` (array[V2reportsRankType])

  # uncomment below to test the property
  #expect_equal(model.instance$`ranks`, "EXPECTED_RESULT")
})

test_that("page_size", {
  # tests for the property `page_size` (integer)

  # uncomment below to test the property
  #expect_equal(model.instance$`page_size`, "EXPECTED_RESULT")
})

test_that("page_token", {
  # tests for the property `page_token` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`page_token`, "EXPECTED_RESULT")
})
