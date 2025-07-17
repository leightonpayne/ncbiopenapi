# TaxonomyApi

All URIs are relative to *https://api.ncbi.nlm.nih.gov/datasets/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DownloadTaxonomyPackage**](TaxonomyApi.md#DownloadTaxonomyPackage) | **GET** /taxonomy/taxon/{tax_ids}/download | Get a taxonomy data package by tax ID
[**DownloadTaxonomyPackageByPost**](TaxonomyApi.md#DownloadTaxonomyPackageByPost) | **POST** /taxonomy/download | Get a taxonomy data package by tax_id
[**TaxNameQuery**](TaxonomyApi.md#TaxNameQuery) | **GET** /taxonomy/taxon_suggest/{taxon_query} | Get a list of taxonomy names and IDs given a partial taxonomic name
[**TaxNameQueryByPost**](TaxonomyApi.md#TaxNameQueryByPost) | **POST** /taxonomy/taxon_suggest | Get a list of taxonomy names and IDs given a partial taxonomic name
[**TaxonomyDataReport**](TaxonomyApi.md#TaxonomyDataReport) | **GET** /taxonomy/taxon/{taxons}/dataset_report | Use taxonomic identifiers to get taxonomic data report
[**TaxonomyDataReportPost**](TaxonomyApi.md#TaxonomyDataReportPost) | **POST** /taxonomy/dataset_report | Use taxonomic identifiers to get taxonomic names data report by post
[**TaxonomyFilteredSubtree**](TaxonomyApi.md#TaxonomyFilteredSubtree) | **GET** /taxonomy/taxon/{taxons}/filtered_subtree | Use taxonomic identifiers to get a filtered taxonomic subtree
[**TaxonomyFilteredSubtreePost**](TaxonomyApi.md#TaxonomyFilteredSubtreePost) | **POST** /taxonomy/filtered_subtree | Use taxonomic identifiers to get a filtered taxonomic subtree by post
[**TaxonomyImage**](TaxonomyApi.md#TaxonomyImage) | **GET** /taxonomy/taxon/{taxon}/image | Retrieve image associated with a taxonomic identifier
[**TaxonomyImageMetadata**](TaxonomyApi.md#TaxonomyImageMetadata) | **GET** /taxonomy/taxon/{taxon}/image/metadata | Retrieve image metadata associated with a taxonomic identifier
[**TaxonomyImageMetadataPost**](TaxonomyApi.md#TaxonomyImageMetadataPost) | **POST** /taxonomy/image/metadata | Retrieve image metadata associated with a taxonomic identifier by post
[**TaxonomyImagePost**](TaxonomyApi.md#TaxonomyImagePost) | **POST** /taxonomy/image | Retrieve image associated with a taxonomic identifier by post
[**TaxonomyLinks**](TaxonomyApi.md#TaxonomyLinks) | **GET** /taxonomy/taxon/{taxon}/links | Retrieve external links associated with a taxonomic identifier.
[**TaxonomyLinksByPost**](TaxonomyApi.md#TaxonomyLinksByPost) | **POST** /taxonomy/links | Retrieve external links associated with a taxonomic identifier.
[**TaxonomyMetadata**](TaxonomyApi.md#TaxonomyMetadata) | **GET** /taxonomy/taxon/{taxons} | Use taxonomic identifiers to get taxonomic metadata
[**TaxonomyMetadataPost**](TaxonomyApi.md#TaxonomyMetadataPost) | **POST** /taxonomy | Use taxonomic identifiers to get taxonomic metadata by post
[**TaxonomyNames**](TaxonomyApi.md#TaxonomyNames) | **GET** /taxonomy/taxon/{taxons}/name_report | Use taxonomic identifiers to get taxonomic names data report
[**TaxonomyNamesPost**](TaxonomyApi.md#TaxonomyNamesPost) | **POST** /taxonomy/name_report | Use taxonomic identifiers to get taxonomic names data report by post
[**TaxonomyRelatedIds**](TaxonomyApi.md#TaxonomyRelatedIds) | **GET** /taxonomy/taxon/{tax_id}/related_ids | Use taxonomic identifier to get related taxonomic identifiers, such as children
[**TaxonomyRelatedIdsPost**](TaxonomyApi.md#TaxonomyRelatedIdsPost) | **POST** /taxonomy/related_ids | Use taxonomic identifier to get related taxonomic identifiers, such as children


# **DownloadTaxonomyPackage**
> data.frame DownloadTaxonomyPackage(tax_ids, aux_reports = var.aux_reports, filename = "ncbi_dataset.zip")

Get a taxonomy data package by tax ID

Download a taxonomy report and names data package.

### Example
```R
library(ncbiopenapi)

# Get a taxonomy data package by tax ID
#
# prepare function argument(s)
var_tax_ids <- c(123) # array[integer] | 
var_aux_reports <- c(v2TaxonomyDatasetRequestTaxonomyReportType$new()) # array[V2TaxonomyDatasetRequestTaxonomyReportType] | list additional reports to include with download. TAXONOMY_REPORT is included by default. (Optional)
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DownloadTaxonomyPackage(var_tax_ids, aux_reports = var_aux_reports, filename = var_filenamedata_file = "result.txt")
result <- api_instance$DownloadTaxonomyPackage(var_tax_ids, aux_reports = var_aux_reports, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_ids** | list( **integer** )|  | 
 **aux_reports** | list( [**V2TaxonomyDatasetRequestTaxonomyReportType**](v2TaxonomyDatasetRequestTaxonomyReportType.md) )| list additional reports to include with download. TAXONOMY_REPORT is included by default. | [optional] 
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

# **DownloadTaxonomyPackageByPost**
> data.frame DownloadTaxonomyPackageByPost(v2_taxonomy_dataset_request, filename = "ncbi_dataset.zip")

Get a taxonomy data package by tax_id

Download a taxonomy report and names data package.

### Example
```R
library(ncbiopenapi)

# Get a taxonomy data package by tax_id
#
# prepare function argument(s)
var_v2_taxonomy_dataset_request <- v2TaxonomyDatasetRequest$new(c(123), c(v2TaxonomyDatasetRequestTaxonomyReportType$new())) # V2TaxonomyDatasetRequest | 
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DownloadTaxonomyPackageByPost(var_v2_taxonomy_dataset_request, filename = var_filenamedata_file = "result.txt")
result <- api_instance$DownloadTaxonomyPackageByPost(var_v2_taxonomy_dataset_request, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_taxonomy_dataset_request** | [**V2TaxonomyDatasetRequest**](V2TaxonomyDatasetRequest.md)|  | 
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

# **TaxNameQuery**
> V2SciNameAndIds TaxNameQuery(taxon_query, tax_rank_filter = var.tax_rank_filter, taxon_resource_filter = var.taxon_resource_filter, exact_match = FALSE)

Get a list of taxonomy names and IDs given a partial taxonomic name

This endpoint retrieves a list of taxonomy names and IDs given a possibly partial taxonomic name of any rank.

### Example
```R
library(ncbiopenapi)

# Get a list of taxonomy names and IDs given a partial taxonomic name
#
# prepare function argument(s)
var_taxon_query <- "hum" # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank
var_tax_rank_filter <- v2OrganismQueryRequestTaxRankFilter$new() # V2OrganismQueryRequestTaxRankFilter | Set the scope of searched tax ranks when filtering by gene or genome.  Not used for 'all' (Optional)
var_taxon_resource_filter <- v2OrganismQueryRequestTaxonResourceFilter$new() # V2OrganismQueryRequestTaxonResourceFilter | Limit results to those with gene or genome counts (no filter by default) (Optional)
var_exact_match <- FALSE # character | If true, only return results that exactly match the provided name or tax-id (Optional)

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxNameQuery(var_taxon_query, tax_rank_filter = var_tax_rank_filter, taxon_resource_filter = var_taxon_resource_filter, exact_match = var_exact_matchdata_file = "result.txt")
result <- api_instance$TaxNameQuery(var_taxon_query, tax_rank_filter = var_tax_rank_filter, taxon_resource_filter = var_taxon_resource_filter, exact_match = var_exact_match)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon_query** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 
 **tax_rank_filter** | [**V2OrganismQueryRequestTaxRankFilter**](.md)| Set the scope of searched tax ranks when filtering by gene or genome.  Not used for &#39;all&#39; | [optional] 
 **taxon_resource_filter** | [**V2OrganismQueryRequestTaxonResourceFilter**](.md)| Limit results to those with gene or genome counts (no filter by default) | [optional] 
 **exact_match** | **character**| If true, only return results that exactly match the provided name or tax-id | [optional] [default to FALSE]

### Return type

[**V2SciNameAndIds**](v2SciNameAndIds.md)

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

# **TaxNameQueryByPost**
> V2SciNameAndIds TaxNameQueryByPost(v2_organism_query_request)

Get a list of taxonomy names and IDs given a partial taxonomic name

This endpoint retrieves a list of taxonomy names and IDs given a possibly partial taxonomic name of any rank, by post.

### Example
```R
library(ncbiopenapi)

# Get a list of taxonomy names and IDs given a partial taxonomic name
#
# prepare function argument(s)
var_v2_organism_query_request <- v2OrganismQueryRequest$new("organism_query_example", "taxon_query_example", v2OrganismQueryRequestTaxRankFilter$new(), v2OrganismQueryRequestTaxonResourceFilter$new(), "exact_match_example") # V2OrganismQueryRequest | 

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxNameQueryByPost(var_v2_organism_query_requestdata_file = "result.txt")
result <- api_instance$TaxNameQueryByPost(var_v2_organism_query_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_organism_query_request** | [**V2OrganismQueryRequest**](V2OrganismQueryRequest.md)|  | 

### Return type

[**V2SciNameAndIds**](v2SciNameAndIds.md)

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

# **TaxonomyDataReport**
> V2reportsTaxonomyDataReportPage TaxonomyDataReport(taxons, returned_content = var.returned_content, page_size = 20, include_tabular_header = var.include_tabular_header, page_token = var.page_token, table_format = var.table_format, children = var.children, ranks = var.ranks)

Use taxonomic identifiers to get taxonomic data report

Using NCBI Taxonomy IDs or names (common or scientific) at any rank, get metadata about a taxonomic node including taxonomic identifiers, lineage information, child nodes, and gene and genome counts in JSON format.

### Example
```R
library(ncbiopenapi)

# Use taxonomic identifiers to get taxonomic data report
#
# prepare function argument(s)
var_taxons <- c("inner_example") # array[character] | 
var_returned_content <- v2TaxonomyMetadataRequestContentType$new() # V2TaxonomyMetadataRequestContentType | Return either tax-ids alone, or entire taxononmy-metadata records (Optional)
var_page_size <- 20 # integer | The maximum number of taxons to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from `GetTaxonomyDataReportFor` and `GetTaxonomyNamesDataReportFor` calls with more than `page_size` results. When `page_token` is empty, all results have been retrieved. (Optional)
var_table_format <- v2TaxonomyMetadataRequestTableFormat$new() # V2TaxonomyMetadataRequestTableFormat |  (Optional)
var_children <- "children_example" # character | Flag for tax explosion. (Optional)
var_ranks <- c(v2reportsRankType$new()) # array[V2reportsRankType] | Only include taxons of the provided ranks. If empty, return all ranks. (Optional)

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyDataReport(var_taxons, returned_content = var_returned_content, page_size = var_page_size, include_tabular_header = var_include_tabular_header, page_token = var_page_token, table_format = var_table_format, children = var_children, ranks = var_ranksdata_file = "result.txt")
result <- api_instance$TaxonomyDataReport(var_taxons, returned_content = var_returned_content, page_size = var_page_size, include_tabular_header = var_include_tabular_header, page_token = var_page_token, table_format = var_table_format, children = var_children, ranks = var_ranks)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxons** | list( **character** )|  | 
 **returned_content** | [**V2TaxonomyMetadataRequestContentType**](.md)| Return either tax-ids alone, or entire taxononmy-metadata records | [optional] 
 **page_size** | **integer**| The maximum number of taxons to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_token** | **character**| A page token is returned from &#x60;GetTaxonomyDataReportFor&#x60; and &#x60;GetTaxonomyNamesDataReportFor&#x60; calls with more than &#x60;page_size&#x60; results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **table_format** | [**V2TaxonomyMetadataRequestTableFormat**](.md)|  | [optional] 
 **children** | **character**| Flag for tax explosion. | [optional] 
 **ranks** | list( [**V2reportsRankType**](v2reportsRankType.md) )| Only include taxons of the provided ranks. If empty, return all ranks. | [optional] 

### Return type

[**V2reportsTaxonomyDataReportPage**](v2reportsTaxonomyDataReportPage.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, application/x-ndjson, text/tab-separated-values

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **TaxonomyDataReportPost**
> V2reportsTaxonomyDataReportPage TaxonomyDataReportPost(v2_taxonomy_metadata_request)

Use taxonomic identifiers to get taxonomic names data report by post

Using NCBI Taxonomy IDs or names (common or scientific) at any rank, get metadata about a taxonomic node including taxonomic identifiers, lineage information, child nodes, and gene and genome counts in JSON format.

### Example
```R
library(ncbiopenapi)

# Use taxonomic identifiers to get taxonomic names data report by post
#
# prepare function argument(s)
var_v2_taxonomy_metadata_request <- v2TaxonomyMetadataRequest$new(c("taxons_example"), v2TaxonomyMetadataRequestContentType$new(), 123, v2IncludeTabularHeader$new(), "page_token_example", v2TaxonomyMetadataRequestTableFormat$new(), "children_example", c(v2reportsRankType$new())) # V2TaxonomyMetadataRequest | 

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyDataReportPost(var_v2_taxonomy_metadata_requestdata_file = "result.txt")
result <- api_instance$TaxonomyDataReportPost(var_v2_taxonomy_metadata_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_taxonomy_metadata_request** | [**V2TaxonomyMetadataRequest**](V2TaxonomyMetadataRequest.md)|  | 

### Return type

[**V2reportsTaxonomyDataReportPage**](v2reportsTaxonomyDataReportPage.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, application/x-ndjson, text/tab-separated-values

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **TaxonomyFilteredSubtree**
> V2TaxonomyFilteredSubtreeResponse TaxonomyFilteredSubtree(taxons, specified_limit = var.specified_limit, rank_limits = var.rank_limits)

Use taxonomic identifiers to get a filtered taxonomic subtree

Using NCBI Taxonomy IDs or names (common or scientific) at any rank, get a filtered taxonomic subtree that includes the full parent lineage and all immediate children from the selected taxonomic ranks in JSON format.

### Example
```R
library(ncbiopenapi)

# Use taxonomic identifiers to get a filtered taxonomic subtree
#
# prepare function argument(s)
var_taxons <- c("inner_example") # array[character] | 
var_specified_limit <- "specified_limit_example" # character | Limit to specified species (Optional)
var_rank_limits <- c(v2reportsRankType$new()) # array[V2reportsRankType] | Limit to the provided ranks.  If empty, accept any rank. (Optional)

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyFilteredSubtree(var_taxons, specified_limit = var_specified_limit, rank_limits = var_rank_limitsdata_file = "result.txt")
result <- api_instance$TaxonomyFilteredSubtree(var_taxons, specified_limit = var_specified_limit, rank_limits = var_rank_limits)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxons** | list( **character** )|  | 
 **specified_limit** | **character**| Limit to specified species | [optional] 
 **rank_limits** | list( [**V2reportsRankType**](v2reportsRankType.md) )| Limit to the provided ranks.  If empty, accept any rank. | [optional] 

### Return type

[**V2TaxonomyFilteredSubtreeResponse**](v2TaxonomyFilteredSubtreeResponse.md)

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

# **TaxonomyFilteredSubtreePost**
> V2TaxonomyFilteredSubtreeResponse TaxonomyFilteredSubtreePost(v2_taxonomy_filtered_subtree_request)

Use taxonomic identifiers to get a filtered taxonomic subtree by post

Using NCBI Taxonomy IDs or names (common or scientific) at any rank, get a filtered taxonomic subtree that includes the full parent lineage and all immediate children from the selected taxonomic ranks in JSON format.

### Example
```R
library(ncbiopenapi)

# Use taxonomic identifiers to get a filtered taxonomic subtree by post
#
# prepare function argument(s)
var_v2_taxonomy_filtered_subtree_request <- v2TaxonomyFilteredSubtreeRequest$new(c("taxons_example"), "specified_limit_example", c(v2reportsRankType$new())) # V2TaxonomyFilteredSubtreeRequest | 

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyFilteredSubtreePost(var_v2_taxonomy_filtered_subtree_requestdata_file = "result.txt")
result <- api_instance$TaxonomyFilteredSubtreePost(var_v2_taxonomy_filtered_subtree_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_taxonomy_filtered_subtree_request** | [**V2TaxonomyFilteredSubtreeRequest**](V2TaxonomyFilteredSubtreeRequest.md)|  | 

### Return type

[**V2TaxonomyFilteredSubtreeResponse**](v2TaxonomyFilteredSubtreeResponse.md)

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

# **TaxonomyImage**
> data.frame TaxonomyImage(taxon, image_size = var.image_size)

Retrieve image associated with a taxonomic identifier

Using an NCBI Taxonomy ID or a name (common or scientific) at any rank, get the image associated with the taxon.

### Example
```R
library(ncbiopenapi)

# Retrieve image associated with a taxonomic identifier
#
# prepare function argument(s)
var_taxon <- "9606" # character | 
var_image_size <- v2ImageSize$new() # V2ImageSize |  (Optional)

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyImage(var_taxon, image_size = var_image_sizedata_file = "result.txt")
result <- api_instance$TaxonomyImage(var_taxon, image_size = var_image_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**|  | 
 **image_size** | [**V2ImageSize**](.md)|  | [optional] 

### Return type

**data.frame**

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, image/jpeg, image/png, image/gif, image/tiff, image/svg+xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **TaxonomyImageMetadata**
> V2TaxonomyImageMetadataResponse TaxonomyImageMetadata(taxon)

Retrieve image metadata associated with a taxonomic identifier

Using an NCBI Taxonomy ID or a name (common or scientific) at any rank, get the image metadata associated with the taxon.

### Example
```R
library(ncbiopenapi)

# Retrieve image metadata associated with a taxonomic identifier
#
# prepare function argument(s)
var_taxon <- "9606" # character | 

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyImageMetadata(var_taxondata_file = "result.txt")
result <- api_instance$TaxonomyImageMetadata(var_taxon)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**|  | 

### Return type

[**V2TaxonomyImageMetadataResponse**](v2TaxonomyImageMetadataResponse.md)

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

# **TaxonomyImageMetadataPost**
> V2TaxonomyImageMetadataResponse TaxonomyImageMetadataPost(v2_taxonomy_image_metadata_request)

Retrieve image metadata associated with a taxonomic identifier by post

Using an NCBI Taxonomy ID or a name (common or scientific) at any rank, get the image metadata associated with the taxon.

### Example
```R
library(ncbiopenapi)

# Retrieve image metadata associated with a taxonomic identifier by post
#
# prepare function argument(s)
var_v2_taxonomy_image_metadata_request <- v2TaxonomyImageMetadataRequest$new("taxon_example") # V2TaxonomyImageMetadataRequest | 

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyImageMetadataPost(var_v2_taxonomy_image_metadata_requestdata_file = "result.txt")
result <- api_instance$TaxonomyImageMetadataPost(var_v2_taxonomy_image_metadata_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_taxonomy_image_metadata_request** | [**V2TaxonomyImageMetadataRequest**](V2TaxonomyImageMetadataRequest.md)|  | 

### Return type

[**V2TaxonomyImageMetadataResponse**](v2TaxonomyImageMetadataResponse.md)

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

# **TaxonomyImagePost**
> data.frame TaxonomyImagePost(v2_taxonomy_image_request)

Retrieve image associated with a taxonomic identifier by post

Using an NCBI Taxonomy ID or a name (common or scientific) at any rank, get the image associated with the taxon.

### Example
```R
library(ncbiopenapi)

# Retrieve image associated with a taxonomic identifier by post
#
# prepare function argument(s)
var_v2_taxonomy_image_request <- v2TaxonomyImageRequest$new("taxon_example", v2ImageSize$new()) # V2TaxonomyImageRequest | 

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyImagePost(var_v2_taxonomy_image_requestdata_file = "result.txt")
result <- api_instance$TaxonomyImagePost(var_v2_taxonomy_image_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_taxonomy_image_request** | [**V2TaxonomyImageRequest**](V2TaxonomyImageRequest.md)|  | 

### Return type

**data.frame**

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, image/jpeg, image/png, image/tiff, image/svg+xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **TaxonomyLinks**
> V2TaxonomyLinksResponse TaxonomyLinks(taxon)

Retrieve external links associated with a taxonomic identifier.

Using an NCBI Taxonomy ID at any rank, get the external links associated with the taxon.

### Example
```R
library(ncbiopenapi)

# Retrieve external links associated with a taxonomic identifier.
#
# prepare function argument(s)
var_taxon <- "9606" # character | 

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyLinks(var_taxondata_file = "result.txt")
result <- api_instance$TaxonomyLinks(var_taxon)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**|  | 

### Return type

[**V2TaxonomyLinksResponse**](v2TaxonomyLinksResponse.md)

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

# **TaxonomyLinksByPost**
> V2TaxonomyLinksResponse TaxonomyLinksByPost(v2_taxonomy_links_request)

Retrieve external links associated with a taxonomic identifier.

Using an NCBI Taxonomy ID at any rank, get the external links associated with the taxon.

### Example
```R
library(ncbiopenapi)

# Retrieve external links associated with a taxonomic identifier.
#
# prepare function argument(s)
var_v2_taxonomy_links_request <- v2TaxonomyLinksRequest$new("taxon_example") # V2TaxonomyLinksRequest | 

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyLinksByPost(var_v2_taxonomy_links_requestdata_file = "result.txt")
result <- api_instance$TaxonomyLinksByPost(var_v2_taxonomy_links_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_taxonomy_links_request** | [**V2TaxonomyLinksRequest**](V2TaxonomyLinksRequest.md)|  | 

### Return type

[**V2TaxonomyLinksResponse**](v2TaxonomyLinksResponse.md)

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

# **TaxonomyMetadata**
> V2TaxonomyMetadataResponse TaxonomyMetadata(taxons, returned_content = var.returned_content, page_size = 20, include_tabular_header = var.include_tabular_header, page_token = var.page_token, table_format = var.table_format, children = var.children, ranks = var.ranks)

Use taxonomic identifiers to get taxonomic metadata

Using NCBI Taxonomy IDs or names (common or scientific) at any rank, get metadata about a taxonomic node including taxonomic identifiers, lineage information, child nodes, and gene and genome counts in JSON format.

### Example
```R
library(ncbiopenapi)

# Use taxonomic identifiers to get taxonomic metadata
#
# prepare function argument(s)
var_taxons <- c("inner_example") # array[character] | 
var_returned_content <- v2TaxonomyMetadataRequestContentType$new() # V2TaxonomyMetadataRequestContentType | Return either tax-ids alone, or entire taxononmy-metadata records (Optional)
var_page_size <- 20 # integer | The maximum number of taxons to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from `GetTaxonomyDataReportFor` and `GetTaxonomyNamesDataReportFor` calls with more than `page_size` results. When `page_token` is empty, all results have been retrieved. (Optional)
var_table_format <- v2TaxonomyMetadataRequestTableFormat$new() # V2TaxonomyMetadataRequestTableFormat |  (Optional)
var_children <- "children_example" # character | Flag for tax explosion. (Optional)
var_ranks <- c(v2reportsRankType$new()) # array[V2reportsRankType] | Only include taxons of the provided ranks. If empty, return all ranks. (Optional)

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyMetadata(var_taxons, returned_content = var_returned_content, page_size = var_page_size, include_tabular_header = var_include_tabular_header, page_token = var_page_token, table_format = var_table_format, children = var_children, ranks = var_ranksdata_file = "result.txt")
result <- api_instance$TaxonomyMetadata(var_taxons, returned_content = var_returned_content, page_size = var_page_size, include_tabular_header = var_include_tabular_header, page_token = var_page_token, table_format = var_table_format, children = var_children, ranks = var_ranks)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxons** | list( **character** )|  | 
 **returned_content** | [**V2TaxonomyMetadataRequestContentType**](.md)| Return either tax-ids alone, or entire taxononmy-metadata records | [optional] 
 **page_size** | **integer**| The maximum number of taxons to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_token** | **character**| A page token is returned from &#x60;GetTaxonomyDataReportFor&#x60; and &#x60;GetTaxonomyNamesDataReportFor&#x60; calls with more than &#x60;page_size&#x60; results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **table_format** | [**V2TaxonomyMetadataRequestTableFormat**](.md)|  | [optional] 
 **children** | **character**| Flag for tax explosion. | [optional] 
 **ranks** | list( [**V2reportsRankType**](v2reportsRankType.md) )| Only include taxons of the provided ranks. If empty, return all ranks. | [optional] 

### Return type

[**V2TaxonomyMetadataResponse**](v2TaxonomyMetadataResponse.md)

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

# **TaxonomyMetadataPost**
> V2TaxonomyMetadataResponse TaxonomyMetadataPost(v2_taxonomy_metadata_request)

Use taxonomic identifiers to get taxonomic metadata by post

Using NCBI Taxonomy IDs or names (common or scientific) at any rank, get metadata about a taxonomic node including taxonomic identifiers, lineage information, child nodes, and gene and genome counts in JSON format.

### Example
```R
library(ncbiopenapi)

# Use taxonomic identifiers to get taxonomic metadata by post
#
# prepare function argument(s)
var_v2_taxonomy_metadata_request <- v2TaxonomyMetadataRequest$new(c("taxons_example"), v2TaxonomyMetadataRequestContentType$new(), 123, v2IncludeTabularHeader$new(), "page_token_example", v2TaxonomyMetadataRequestTableFormat$new(), "children_example", c(v2reportsRankType$new())) # V2TaxonomyMetadataRequest | 

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyMetadataPost(var_v2_taxonomy_metadata_requestdata_file = "result.txt")
result <- api_instance$TaxonomyMetadataPost(var_v2_taxonomy_metadata_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_taxonomy_metadata_request** | [**V2TaxonomyMetadataRequest**](V2TaxonomyMetadataRequest.md)|  | 

### Return type

[**V2TaxonomyMetadataResponse**](v2TaxonomyMetadataResponse.md)

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

# **TaxonomyNames**
> V2reportsTaxonomyNamesDataReportPage TaxonomyNames(taxons, returned_content = var.returned_content, page_size = 20, include_tabular_header = var.include_tabular_header, page_token = var.page_token, table_format = var.table_format, children = var.children, ranks = var.ranks)

Use taxonomic identifiers to get taxonomic names data report

Using NCBI Taxonomy IDs or names (common or scientific) at any rank, get metadata about associated taxonomic names.

### Example
```R
library(ncbiopenapi)

# Use taxonomic identifiers to get taxonomic names data report
#
# prepare function argument(s)
var_taxons <- c("inner_example") # array[character] | 
var_returned_content <- v2TaxonomyMetadataRequestContentType$new() # V2TaxonomyMetadataRequestContentType | Return either tax-ids alone, or entire taxononmy-metadata records (Optional)
var_page_size <- 20 # integer | The maximum number of taxons to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from `GetTaxonomyDataReportFor` and `GetTaxonomyNamesDataReportFor` calls with more than `page_size` results. When `page_token` is empty, all results have been retrieved. (Optional)
var_table_format <- v2TaxonomyMetadataRequestTableFormat$new() # V2TaxonomyMetadataRequestTableFormat |  (Optional)
var_children <- "children_example" # character | Flag for tax explosion. (Optional)
var_ranks <- c(v2reportsRankType$new()) # array[V2reportsRankType] | Only include taxons of the provided ranks. If empty, return all ranks. (Optional)

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyNames(var_taxons, returned_content = var_returned_content, page_size = var_page_size, include_tabular_header = var_include_tabular_header, page_token = var_page_token, table_format = var_table_format, children = var_children, ranks = var_ranksdata_file = "result.txt")
result <- api_instance$TaxonomyNames(var_taxons, returned_content = var_returned_content, page_size = var_page_size, include_tabular_header = var_include_tabular_header, page_token = var_page_token, table_format = var_table_format, children = var_children, ranks = var_ranks)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxons** | list( **character** )|  | 
 **returned_content** | [**V2TaxonomyMetadataRequestContentType**](.md)| Return either tax-ids alone, or entire taxononmy-metadata records | [optional] 
 **page_size** | **integer**| The maximum number of taxons to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_token** | **character**| A page token is returned from &#x60;GetTaxonomyDataReportFor&#x60; and &#x60;GetTaxonomyNamesDataReportFor&#x60; calls with more than &#x60;page_size&#x60; results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **table_format** | [**V2TaxonomyMetadataRequestTableFormat**](.md)|  | [optional] 
 **children** | **character**| Flag for tax explosion. | [optional] 
 **ranks** | list( [**V2reportsRankType**](v2reportsRankType.md) )| Only include taxons of the provided ranks. If empty, return all ranks. | [optional] 

### Return type

[**V2reportsTaxonomyNamesDataReportPage**](v2reportsTaxonomyNamesDataReportPage.md)

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

# **TaxonomyNamesPost**
> V2reportsTaxonomyNamesDataReportPage TaxonomyNamesPost(v2_taxonomy_metadata_request)

Use taxonomic identifiers to get taxonomic names data report by post

Using NCBI Taxonomy IDs or names (common or scientific) at any rank, get metadata about associated taxonomic names.

### Example
```R
library(ncbiopenapi)

# Use taxonomic identifiers to get taxonomic names data report by post
#
# prepare function argument(s)
var_v2_taxonomy_metadata_request <- v2TaxonomyMetadataRequest$new(c("taxons_example"), v2TaxonomyMetadataRequestContentType$new(), 123, v2IncludeTabularHeader$new(), "page_token_example", v2TaxonomyMetadataRequestTableFormat$new(), "children_example", c(v2reportsRankType$new())) # V2TaxonomyMetadataRequest | 

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyNamesPost(var_v2_taxonomy_metadata_requestdata_file = "result.txt")
result <- api_instance$TaxonomyNamesPost(var_v2_taxonomy_metadata_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_taxonomy_metadata_request** | [**V2TaxonomyMetadataRequest**](V2TaxonomyMetadataRequest.md)|  | 

### Return type

[**V2reportsTaxonomyNamesDataReportPage**](v2reportsTaxonomyNamesDataReportPage.md)

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

# **TaxonomyRelatedIds**
> V2TaxonomyTaxIdsPage TaxonomyRelatedIds(tax_id, include_lineage = FALSE, include_subtree = FALSE, ranks = var.ranks, page_size = 20, page_token = var.page_token)

Use taxonomic identifier to get related taxonomic identifiers, such as children

Using a single NCBI Taxonomy ID at any rank, get a list of related taxonomic IDs in JSON format.

### Example
```R
library(ncbiopenapi)

# Use taxonomic identifier to get related taxonomic identifiers, such as children
#
# prepare function argument(s)
var_tax_id <- 9606 # integer | 
var_include_lineage <- FALSE # character | If true, return reports for all taxonomy nodes in the lineages of the requested tax_id (Optional)
var_include_subtree <- FALSE # character | This field is deprecated because all requests include the subtree, so it has no effect (Optional)
var_ranks <- c(v2reportsRankType$new()) # array[V2reportsRankType] | Only include taxons of the provided ranks. If empty, return all ranks. (Optional)
var_page_size <- 20 # integer | The maximum number of taxids to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from a `GetRelatedTaxids` call with more than `page_size` results. Use this token, along with the previous `TaxonomyRelatedIdRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyRelatedIds(var_tax_id, include_lineage = var_include_lineage, include_subtree = var_include_subtree, ranks = var_ranks, page_size = var_page_size, page_token = var_page_tokendata_file = "result.txt")
result <- api_instance$TaxonomyRelatedIds(var_tax_id, include_lineage = var_include_lineage, include_subtree = var_include_subtree, ranks = var_ranks, page_size = var_page_size, page_token = var_page_token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_id** | **integer**|  | 
 **include_lineage** | **character**| If true, return reports for all taxonomy nodes in the lineages of the requested tax_id | [optional] [default to FALSE]
 **include_subtree** | **character**| This field is deprecated because all requests include the subtree, so it has no effect | [optional] [default to FALSE]
 **ranks** | list( [**V2reportsRankType**](v2reportsRankType.md) )| Only include taxons of the provided ranks. If empty, return all ranks. | [optional] 
 **page_size** | **integer**| The maximum number of taxids to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from a &#x60;GetRelatedTaxids&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;TaxonomyRelatedIdRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 

### Return type

[**V2TaxonomyTaxIdsPage**](v2TaxonomyTaxIdsPage.md)

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

# **TaxonomyRelatedIdsPost**
> V2TaxonomyTaxIdsPage TaxonomyRelatedIdsPost(v2_taxonomy_related_id_request)

Use taxonomic identifier to get related taxonomic identifiers, such as children

Using a single NCBI Taxonomy ID at any rank, get a list of related taxonomic IDs in JSON format.

### Example
```R
library(ncbiopenapi)

# Use taxonomic identifier to get related taxonomic identifiers, such as children
#
# prepare function argument(s)
var_v2_taxonomy_related_id_request <- v2TaxonomyRelatedIdRequest$new(123, "include_lineage_example", "include_subtree_example", c(v2reportsRankType$new()), 123, "page_token_example") # V2TaxonomyRelatedIdRequest | 

api_instance <- TaxonomyApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TaxonomyRelatedIdsPost(var_v2_taxonomy_related_id_requestdata_file = "result.txt")
result <- api_instance$TaxonomyRelatedIdsPost(var_v2_taxonomy_related_id_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_taxonomy_related_id_request** | [**V2TaxonomyRelatedIdRequest**](V2TaxonomyRelatedIdRequest.md)|  | 

### Return type

[**V2TaxonomyTaxIdsPage**](v2TaxonomyTaxIdsPage.md)

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

