# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test V2AssemblyDatasetDescriptorsFilter")

model_instance <- V2AssemblyDatasetDescriptorsFilter$new()

test_that("reference_only", {
  # tests for the property `reference_only` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`reference_only`, "EXPECTED_RESULT")
})

test_that("assembly_source", {
  # tests for the property `assembly_source` (V2AssemblyDatasetDescriptorsFilterAssemblySource)

  # uncomment below to test the property
  #expect_equal(model.instance$`assembly_source`, "EXPECTED_RESULT")
})

test_that("has_annotation", {
  # tests for the property `has_annotation` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`has_annotation`, "EXPECTED_RESULT")
})

test_that("exclude_paired_reports", {
  # tests for the property `exclude_paired_reports` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`exclude_paired_reports`, "EXPECTED_RESULT")
})

test_that("exclude_atypical", {
  # tests for the property `exclude_atypical` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`exclude_atypical`, "EXPECTED_RESULT")
})

test_that("assembly_version", {
  # tests for the property `assembly_version` (V2AssemblyDatasetDescriptorsFilterAssemblyVersion)

  # uncomment below to test the property
  #expect_equal(model.instance$`assembly_version`, "EXPECTED_RESULT")
})

test_that("assembly_level", {
  # tests for the property `assembly_level` (array[V2reportsAssemblyLevel])

  # uncomment below to test the property
  #expect_equal(model.instance$`assembly_level`, "EXPECTED_RESULT")
})

test_that("first_release_date", {
  # tests for the property `first_release_date` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`first_release_date`, "EXPECTED_RESULT")
})

test_that("last_release_date", {
  # tests for the property `last_release_date` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`last_release_date`, "EXPECTED_RESULT")
})

test_that("search_text", {
  # tests for the property `search_text` (array[character])

  # uncomment below to test the property
  #expect_equal(model.instance$`search_text`, "EXPECTED_RESULT")
})

test_that("is_metagenome_derived", {
  # tests for the property `is_metagenome_derived` (V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter)

  # uncomment below to test the property
  #expect_equal(model.instance$`is_metagenome_derived`, "EXPECTED_RESULT")
})

test_that("is_type_material", {
  # tests for the property `is_type_material` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`is_type_material`, "EXPECTED_RESULT")
})

test_that("is_ictv_exemplar", {
  # tests for the property `is_ictv_exemplar` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`is_ictv_exemplar`, "EXPECTED_RESULT")
})

test_that("exclude_multi_isolate", {
  # tests for the property `exclude_multi_isolate` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`exclude_multi_isolate`, "EXPECTED_RESULT")
})

test_that("type_material_category", {
  # tests for the property `type_material_category` (V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory)

  # uncomment below to test the property
  #expect_equal(model.instance$`type_material_category`, "EXPECTED_RESULT")
})
