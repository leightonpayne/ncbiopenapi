# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test V2reportsTaxonomyNamesDescriptor")

model_instance <- V2reportsTaxonomyNamesDescriptor$new()

test_that("tax_id", {
  # tests for the property `tax_id` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`tax_id`, "EXPECTED_RESULT")
})

test_that("rank", {
  # tests for the property `rank` (V2reportsRankType)

  # uncomment below to test the property
  #expect_equal(model.instance$`rank`, "EXPECTED_RESULT")
})

test_that("current_scientific_name", {
  # tests for the property `current_scientific_name` (V2reportsNameAndAuthority)

  # uncomment below to test the property
  #expect_equal(model.instance$`current_scientific_name`, "EXPECTED_RESULT")
})

test_that("group_name", {
  # tests for the property `group_name` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`group_name`, "EXPECTED_RESULT")
})

test_that("curator_common_name", {
  # tests for the property `curator_common_name` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`curator_common_name`, "EXPECTED_RESULT")
})

test_that("other_common_names", {
  # tests for the property `other_common_names` (array[character])

  # uncomment below to test the property
  #expect_equal(model.instance$`other_common_names`, "EXPECTED_RESULT")
})

test_that("general_notes", {
  # tests for the property `general_notes` (array[character])

  # uncomment below to test the property
  #expect_equal(model.instance$`general_notes`, "EXPECTED_RESULT")
})

test_that("links_from_type", {
  # tests for the property `links_from_type` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`links_from_type`, "EXPECTED_RESULT")
})

test_that("citations", {
  # tests for the property `citations` (array[V2reportsTaxonomyNamesDescriptorCitation])

  # uncomment below to test the property
  #expect_equal(model.instance$`citations`, "EXPECTED_RESULT")
})

test_that("current_scientific_name_is_formal", {
  # tests for the property `current_scientific_name_is_formal` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`current_scientific_name_is_formal`, "EXPECTED_RESULT")
})
