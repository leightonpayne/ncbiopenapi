# OrganelleApi

All URIs are relative to *https://api.ncbi.nlm.nih.gov/datasets/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DownloadOrganellePackage**](OrganelleApi.md#DownloadOrganellePackage) | **GET** /organelle/accession/{accessions}/download | Get a organelle data package by accesions
[**DownloadOrganellePackageByPost**](OrganelleApi.md#DownloadOrganellePackageByPost) | **POST** /organelle/download | Get a organelle data package by post
[**OrganelleDatareportByAccession**](OrganelleApi.md#OrganelleDatareportByAccession) | **GET** /organelle/accessions/{accessions}/dataset_report | Get Organelle dataset report by accession
[**OrganelleDatareportByPost**](OrganelleApi.md#OrganelleDatareportByPost) | **POST** /organelle/dataset_report | Get Organelle dataset report by http post
[**OrganelleDatareportByTaxon**](OrganelleApi.md#OrganelleDatareportByTaxon) | **GET** /organelle/taxon/{taxons}/dataset_report | Get Organelle dataset report by taxons


# **DownloadOrganellePackage**
> data.frame DownloadOrganellePackage(accessions, exclude_sequence = var.exclude_sequence, include_annotation_type = var.include_annotation_type, filename = "ncbi_dataset.zip")

Get a organelle data package by accesions

Download a organelle data report and annotation data package.

### Example
```R
library(ncbiopenapi)

# Get a organelle data package by accesions
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | NCBI organelle assembly accessions
var_exclude_sequence <- "exclude_sequence_example" # character | Set to true to omit the genomic sequence. (Optional)
var_include_annotation_type <- c(v2AnnotationForOrganelleType$new()) # array[V2AnnotationForOrganelleType] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. (Optional)
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- OrganelleApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DownloadOrganellePackage(var_accessions, exclude_sequence = var_exclude_sequence, include_annotation_type = var_include_annotation_type, filename = var_filenamedata_file = "result.txt")
result <- api_instance$DownloadOrganellePackage(var_accessions, exclude_sequence = var_exclude_sequence, include_annotation_type = var_include_annotation_type, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| NCBI organelle assembly accessions | 
 **exclude_sequence** | **character**| Set to true to omit the genomic sequence. | [optional] 
 **include_annotation_type** | list( [**V2AnnotationForOrganelleType**](v2AnnotationForOrganelleType.md) )| Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
 **filename** | **character**| Output file name. | [optional] [default to &quot;ncbi_dataset.zip&quot;]

### Return type

**data.frame**

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/zip

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **DownloadOrganellePackageByPost**
> data.frame DownloadOrganellePackageByPost(v2_organelle_download_request, filename = "ncbi_dataset.zip")

Get a organelle data package by post

Download a organelle report and annotation data package by post.

### Example
```R
library(ncbiopenapi)

# Get a organelle data package by post
#
# prepare function argument(s)
var_v2_organelle_download_request <- v2OrganelleDownloadRequest$new(c("accessions_example"), "exclude_sequence_example", c(v2AnnotationForOrganelleType$new())) # V2OrganelleDownloadRequest | 
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- OrganelleApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DownloadOrganellePackageByPost(var_v2_organelle_download_request, filename = var_filenamedata_file = "result.txt")
result <- api_instance$DownloadOrganellePackageByPost(var_v2_organelle_download_request, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_organelle_download_request** | [**V2OrganelleDownloadRequest**](V2OrganelleDownloadRequest.md)|  | 
 **filename** | **character**| Output file name. | [optional] [default to &quot;ncbi_dataset.zip&quot;]

### Return type

**data.frame**

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/zip

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **OrganelleDatareportByAccession**
> V2reportsOrganelleDataReports OrganelleDatareportByAccession(accessions, taxons = var.taxons, organelle_types = var.organelle_types, first_release_date = var.first_release_date, last_release_date = var.last_release_date, tax_exact_match = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction, returned_content = var.returned_content, table_format = var.table_format, include_tabular_header = var.include_tabular_header)

Get Organelle dataset report by accession

Get Organelle dataset report by accession.

### Example
```R
library(ncbiopenapi)

# Get Organelle dataset report by accession
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | NCBI assembly accession
var_taxons <- c("inner_example") # array[character] | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank (Optional)
var_organelle_types <- c(v2reportsOrganelleType$new()) # array[V2reportsOrganelleType] |  (Optional)
var_first_release_date <- "2015-01-10T00:00:00Z" # character | Only return organelle assemblies that were released on or after the specified date By default, do not filter. (Optional)
var_last_release_date <- "2021-01-10T00:00:00Z" # character | Only return organelle assemblies that were released on or before to the specified date By default, do not filter. (Optional)
var_tax_exact_match <- FALSE # character | If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)
var_returned_content <- v2OrganelleMetadataRequestContentType$new() # V2OrganelleMetadataRequestContentType | Return either assembly accessions, or entire assembly-metadata records (Optional)
var_table_format <- v2OrganelleMetadataRequestOrganelleTableFormat$new() # V2OrganelleMetadataRequestOrganelleTableFormat | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)

api_instance <- OrganelleApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OrganelleDatareportByAccession(var_accessions, taxons = var_taxons, organelle_types = var_organelle_types, first_release_date = var_first_release_date, last_release_date = var_last_release_date, tax_exact_match = var_tax_exact_match, sort_field = var_sort_field, sort_direction = var_sort_direction, returned_content = var_returned_content, table_format = var_table_format, include_tabular_header = var_include_tabular_headerdata_file = "result.txt")
result <- api_instance$OrganelleDatareportByAccession(var_accessions, taxons = var_taxons, organelle_types = var_organelle_types, first_release_date = var_first_release_date, last_release_date = var_last_release_date, tax_exact_match = var_tax_exact_match, sort_field = var_sort_field, sort_direction = var_sort_direction, returned_content = var_returned_content, table_format = var_table_format, include_tabular_header = var_include_tabular_header)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| NCBI assembly accession | 
 **taxons** | list( **character** )| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | [optional] 
 **organelle_types** | list( [**V2reportsOrganelleType**](v2reportsOrganelleType.md) )|  | [optional] 
 **first_release_date** | **character**| Only return organelle assemblies that were released on or after the specified date By default, do not filter. | [optional] 
 **last_release_date** | **character**| Only return organelle assemblies that were released on or before to the specified date By default, do not filter. | [optional] 
 **tax_exact_match** | **character**| If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 
 **returned_content** | [**V2OrganelleMetadataRequestContentType**](.md)| Return either assembly accessions, or entire assembly-metadata records | [optional] 
 **table_format** | [**V2OrganelleMetadataRequestOrganelleTableFormat**](.md)| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 

### Return type

[**V2reportsOrganelleDataReports**](v2reportsOrganelleDataReports.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **OrganelleDatareportByPost**
> V2reportsOrganelleDataReports OrganelleDatareportByPost(v2_organelle_metadata_request)

Get Organelle dataset report by http post

Get Organelle dataset report by http post.

### Example
```R
library(ncbiopenapi)

# Get Organelle dataset report by http post
#
# prepare function argument(s)
var_v2_organelle_metadata_request <- v2OrganelleMetadataRequest$new(c("taxons_example"), c("accessions_example"), c(v2reportsOrganelleType$new()), "first_release_date_example", "last_release_date_example", "tax_exact_match_example", c(v2OrganelleSort$new("field_example", v2SortDirection$new())), v2OrganelleMetadataRequestContentType$new(), 123, "page_token_example", v2OrganelleMetadataRequestOrganelleTableFormat$new(), v2IncludeTabularHeader$new()) # V2OrganelleMetadataRequest | 

api_instance <- OrganelleApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OrganelleDatareportByPost(var_v2_organelle_metadata_requestdata_file = "result.txt")
result <- api_instance$OrganelleDatareportByPost(var_v2_organelle_metadata_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_organelle_metadata_request** | [**V2OrganelleMetadataRequest**](V2OrganelleMetadataRequest.md)|  | 

### Return type

[**V2reportsOrganelleDataReports**](v2reportsOrganelleDataReports.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **OrganelleDatareportByTaxon**
> V2reportsOrganelleDataReports OrganelleDatareportByTaxon(taxons, organelle_types = var.organelle_types, first_release_date = var.first_release_date, last_release_date = var.last_release_date, tax_exact_match = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction, returned_content = var.returned_content, page_size = var.page_size, page_token = var.page_token, table_format = var.table_format, include_tabular_header = var.include_tabular_header)

Get Organelle dataset report by taxons

Get Organelle dataset report by taxons.

### Example
```R
library(ncbiopenapi)

# Get Organelle dataset report by taxons
#
# prepare function argument(s)
var_taxons <- c("inner_example") # array[character] | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank
var_organelle_types <- c(v2reportsOrganelleType$new()) # array[V2reportsOrganelleType] |  (Optional)
var_first_release_date <- "2015-01-10T00:00:00Z" # character | Only return organelle assemblies that were released on or after the specified date By default, do not filter. (Optional)
var_last_release_date <- "2021-01-10T00:00:00Z" # character | Only return organelle assemblies that were released on or before to the specified date By default, do not filter. (Optional)
var_tax_exact_match <- FALSE # character | If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)
var_returned_content <- v2OrganelleMetadataRequestContentType$new() # V2OrganelleMetadataRequestContentType | Return either assembly accessions, or entire assembly-metadata records (Optional)
var_page_size <- 56 # integer | The maximum number of organelle assemblies to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `OrganelleMetadata` call with more than `page_size` results. Use this token, along with the previous `OrganelleMetadata` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_table_format <- v2OrganelleMetadataRequestOrganelleTableFormat$new() # V2OrganelleMetadataRequestOrganelleTableFormat | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)

api_instance <- OrganelleApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OrganelleDatareportByTaxon(var_taxons, organelle_types = var_organelle_types, first_release_date = var_first_release_date, last_release_date = var_last_release_date, tax_exact_match = var_tax_exact_match, sort_field = var_sort_field, sort_direction = var_sort_direction, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, table_format = var_table_format, include_tabular_header = var_include_tabular_headerdata_file = "result.txt")
result <- api_instance$OrganelleDatareportByTaxon(var_taxons, organelle_types = var_organelle_types, first_release_date = var_first_release_date, last_release_date = var_last_release_date, tax_exact_match = var_tax_exact_match, sort_field = var_sort_field, sort_direction = var_sort_direction, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, table_format = var_table_format, include_tabular_header = var_include_tabular_header)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxons** | list( **character** )| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 
 **organelle_types** | list( [**V2reportsOrganelleType**](v2reportsOrganelleType.md) )|  | [optional] 
 **first_release_date** | **character**| Only return organelle assemblies that were released on or after the specified date By default, do not filter. | [optional] 
 **last_release_date** | **character**| Only return organelle assemblies that were released on or before to the specified date By default, do not filter. | [optional] 
 **tax_exact_match** | **character**| If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 
 **returned_content** | [**V2OrganelleMetadataRequestContentType**](.md)| Return either assembly accessions, or entire assembly-metadata records | [optional] 
 **page_size** | **integer**| The maximum number of organelle assemblies to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] 
 **page_token** | **character**| A page token is returned from an &#x60;OrganelleMetadata&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;OrganelleMetadata&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **table_format** | [**V2OrganelleMetadataRequestOrganelleTableFormat**](.md)| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 

### Return type

[**V2reportsOrganelleDataReports**](v2reportsOrganelleDataReports.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

