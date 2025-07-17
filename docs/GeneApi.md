# GeneApi

All URIs are relative to *https://api.ncbi.nlm.nih.gov/datasets/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DownloadGenePackage**](GeneApi.md#DownloadGenePackage) | **GET** /gene/id/{gene_ids}/download | Get a gene dataset by gene ID
[**DownloadGenePackagePost**](GeneApi.md#DownloadGenePackagePost) | **POST** /gene/download | Get a gene dataset by POST
[**GeneChromosomeSummary**](GeneApi.md#GeneChromosomeSummary) | **GET** /gene/taxon/{taxon}/annotation/{annotation_name}/chromosome_summary | Get summary of chromosomes for a particular taxon&#39;s annotation
[**GeneCountsForTaxon**](GeneApi.md#GeneCountsForTaxon) | **GET** /gene/taxon/{taxon}/counts | Get gene counts by taxonomic identifier
[**GeneCountsForTaxonByPost**](GeneApi.md#GeneCountsForTaxonByPost) | **POST** /gene/taxon/counts | Get gene counts by taxonomic identifier
[**GeneDatasetReport**](GeneApi.md#GeneDatasetReport) | **POST** /gene/dataset_report | Get gene dataset report as JSON
[**GeneDatasetReportByAccession**](GeneApi.md#GeneDatasetReportByAccession) | **GET** /gene/accession/{accessions}/dataset_report | Get dataset reports by accession IDs
[**GeneDatasetReportByTaxAndSymbol**](GeneApi.md#GeneDatasetReportByTaxAndSymbol) | **GET** /gene/symbol/{symbols}/taxon/{taxon}/dataset_report | Get dataset reports by taxons.
[**GeneDatasetReportsById**](GeneApi.md#GeneDatasetReportsById) | **GET** /gene/id/{gene_ids}/dataset_report | Get dataset reports by gene IDs.
[**GeneDatasetReportsByLocusTag**](GeneApi.md#GeneDatasetReportsByLocusTag) | **GET** /gene/locus_tag/{locus_tags}/dataset_report | Get gene dataset reports by locus tag
[**GeneDatasetReportsByTaxon**](GeneApi.md#GeneDatasetReportsByTaxon) | **GET** /gene/taxon/{taxon}/dataset_report | Get gene dataset reports by taxonomic identifier
[**GeneDownloadSummaryById**](GeneApi.md#GeneDownloadSummaryById) | **GET** /gene/id/{gene_ids}/download_summary | Get gene download summary by GeneID
[**GeneDownloadSummaryByPost**](GeneApi.md#GeneDownloadSummaryByPost) | **POST** /gene/download_summary | Get gene download summary
[**GeneLinksById**](GeneApi.md#GeneLinksById) | **GET** /gene/id/{gene_ids}/links | Get gene links by gene ID
[**GeneLinksByIdByPost**](GeneApi.md#GeneLinksByIdByPost) | **POST** /gene/links | Get gene links by gene ID
[**GeneMetadataByAccession**](GeneApi.md#GeneMetadataByAccession) | **GET** /gene/accession/{accessions} | Get gene metadata by RefSeq Accession
[**GeneMetadataByPost**](GeneApi.md#GeneMetadataByPost) | **POST** /gene | Get gene metadata as JSON
[**GeneMetadataByTaxAndSymbol**](GeneApi.md#GeneMetadataByTaxAndSymbol) | **GET** /gene/symbol/{symbols}/taxon/{taxon} | Get gene metadata by gene symbol
[**GeneOrthologsById**](GeneApi.md#GeneOrthologsById) | **GET** /gene/id/{gene_id}/orthologs | Get gene orthologs by gene ID
[**GeneOrthologsByPost**](GeneApi.md#GeneOrthologsByPost) | **POST** /gene/orthologs | Get gene orthologs by gene ID
[**GeneProductReport**](GeneApi.md#GeneProductReport) | **POST** /gene/product_report | Get gene product reports as JSON
[**GeneProductReportByAccession**](GeneApi.md#GeneProductReportByAccession) | **GET** /gene/accession/{accessions}/product_report | Get gene product reports by accession IDs
[**GeneProductReportByTaxAndSymbol**](GeneApi.md#GeneProductReportByTaxAndSymbol) | **GET** /gene/symbol/{symbols}/taxon/{taxon}/product_report | Get product reports by taxon.
[**GeneProductReportsById**](GeneApi.md#GeneProductReportsById) | **GET** /gene/id/{gene_ids}/product_report | Get gene product reports by gene IDs.
[**GeneProductReportsByLocusTags**](GeneApi.md#GeneProductReportsByLocusTags) | **GET** /gene/locus_tag/{locus_tags}/product_report | Get gene product reports by locus tags
[**GeneProductReportsByTaxon**](GeneApi.md#GeneProductReportsByTaxon) | **GET** /gene/taxon/{taxon}/product_report | Get gene product reports by taxonomic identifier
[**GeneReportsById**](GeneApi.md#GeneReportsById) | **GET** /gene/id/{gene_ids} | Get gene reports by GeneID
[**GeneReportsByTaxon**](GeneApi.md#GeneReportsByTaxon) | **GET** /gene/taxon/{taxon} | Get gene reports by taxonomic identifier


# **DownloadGenePackage**
> data.frame DownloadGenePackage(gene_ids, include_annotation_type = var.include_annotation_type, fasta_filter = var.fasta_filter, accession_filter = var.accession_filter, aux_report = var.aux_report, tabular_reports = var.tabular_reports, table_fields = var.table_fields, table_report_type = var.table_report_type, filename = "ncbi_dataset.zip")

Get a gene dataset by gene ID

Get a gene dataset including gene, transcript and protein fasta sequence, annotation and metadata by gene ID.

### Example
```R
library(ncbiopenapi)

# Get a gene dataset by gene ID
#
# prepare function argument(s)
var_gene_ids <- c(123) # array[integer] | NCBI gene ids
var_include_annotation_type <- c(v2Fasta$new()) # array[V2Fasta] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. (Optional)
var_fasta_filter <- c("inner_example") # array[character] | Limit the FASTA sequences in the datasets package to these transcript and protein accessions (deprecated) (Optional)
var_accession_filter <- c("inner_example") # array[character] | Limit the FASTA sequences and tabular product report in the datasets package to these transcript and protein accessions (Optional)
var_aux_report <- c(v2GeneDatasetRequestGeneDatasetReportType$new()) # array[V2GeneDatasetRequestGeneDatasetReportType] | list additional reports to include with download. Data report is included by default. (Optional)
var_tabular_reports <- c(v2GeneDatasetRequestGeneDatasetReportType$new()) # array[V2GeneDatasetRequestGeneDatasetReportType] |  (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report. This is currently deprecated - use tabular_reports instead. (Optional)
var_table_report_type <- v2GeneDatasetRequestGeneDatasetReportType$new() # V2GeneDatasetRequestGeneDatasetReportType | Specify the report from which the table fields will be taken. This is currently deprecated - use tabular_reports instead. (Optional)
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DownloadGenePackage(var_gene_ids, include_annotation_type = var_include_annotation_type, fasta_filter = var_fasta_filter, accession_filter = var_accession_filter, aux_report = var_aux_report, tabular_reports = var_tabular_reports, table_fields = var_table_fields, table_report_type = var_table_report_type, filename = var_filenamedata_file = "result.txt")
result <- api_instance$DownloadGenePackage(var_gene_ids, include_annotation_type = var_include_annotation_type, fasta_filter = var_fasta_filter, accession_filter = var_accession_filter, aux_report = var_aux_report, tabular_reports = var_tabular_reports, table_fields = var_table_fields, table_report_type = var_table_report_type, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_ids** | list( **integer** )| NCBI gene ids | 
 **include_annotation_type** | list( [**V2Fasta**](v2Fasta.md) )| Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
 **fasta_filter** | list( **character** )| Limit the FASTA sequences in the datasets package to these transcript and protein accessions (deprecated) | [optional] 
 **accession_filter** | list( **character** )| Limit the FASTA sequences and tabular product report in the datasets package to these transcript and protein accessions | [optional] 
 **aux_report** | list( [**V2GeneDatasetRequestGeneDatasetReportType**](v2GeneDatasetRequestGeneDatasetReportType.md) )| list additional reports to include with download. Data report is included by default. | [optional] 
 **tabular_reports** | list( [**V2GeneDatasetRequestGeneDatasetReportType**](v2GeneDatasetRequestGeneDatasetReportType.md) )|  | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report. This is currently deprecated - use tabular_reports instead. | [optional] 
 **table_report_type** | [**V2GeneDatasetRequestGeneDatasetReportType**](.md)| Specify the report from which the table fields will be taken. This is currently deprecated - use tabular_reports instead. | [optional] 
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

# **DownloadGenePackagePost**
> data.frame DownloadGenePackagePost(v2_gene_dataset_request, filename = "ncbi_dataset.zip")

Get a gene dataset by POST

Get a gene dataset including gene, transcript and protein fasta sequence, annotation and metadata by POST.

### Example
```R
library(ncbiopenapi)

# Get a gene dataset by POST
#
# prepare function argument(s)
var_v2_gene_dataset_request <- v2GeneDatasetRequest$new(c(123), c(v2Fasta$new()), v2GeneDatasetRequestContentType$new(), c("fasta_filter_example"), c("accession_filter_example"), c(v2GeneDatasetRequestGeneDatasetReportType$new()), c(v2GeneDatasetRequestGeneDatasetReportType$new()), c("table_fields_example"), v2GeneDatasetRequestGeneDatasetReportType$new()) # V2GeneDatasetRequest | 
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DownloadGenePackagePost(var_v2_gene_dataset_request, filename = var_filenamedata_file = "result.txt")
result <- api_instance$DownloadGenePackagePost(var_v2_gene_dataset_request, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_gene_dataset_request** | [**V2GeneDatasetRequest**](V2GeneDatasetRequest.md)|  | 
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

# **GeneChromosomeSummary**
> V2GeneChromosomeSummaryReply GeneChromosomeSummary(taxon, annotation_name)

Get summary of chromosomes for a particular taxon's annotation

Get summary of chromosomes for a particular taxon's annotation.

### Example
```R
library(ncbiopenapi)

# Get summary of chromosomes for a particular taxon's annotation
#
# prepare function argument(s)
var_taxon <- "9117" # character | 
var_annotation_name <- "GCF_028858705.1-RS_2023_03" # character | 

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneChromosomeSummary(var_taxon, var_annotation_namedata_file = "result.txt")
result <- api_instance$GeneChromosomeSummary(var_taxon, var_annotation_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**|  | 
 **annotation_name** | **character**|  | 

### Return type

[**V2GeneChromosomeSummaryReply**](v2GeneChromosomeSummaryReply.md)

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

# **GeneCountsForTaxon**
> V2GeneCountsByTaxonReply GeneCountsForTaxon(taxon)

Get gene counts by taxonomic identifier

Get gene counts for a specified NCBI Taxonomy ID or name (common or scientific) in JSON format.

### Example
```R
library(ncbiopenapi)

# Get gene counts by taxonomic identifier
#
# prepare function argument(s)
var_taxon <- "9606" # character | Taxon for provided gene symbol

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneCountsForTaxon(var_taxondata_file = "result.txt")
result <- api_instance$GeneCountsForTaxon(var_taxon)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| Taxon for provided gene symbol | 

### Return type

[**V2GeneCountsByTaxonReply**](v2GeneCountsByTaxonReply.md)

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

# **GeneCountsForTaxonByPost**
> V2GeneCountsByTaxonReply GeneCountsForTaxonByPost(v2_gene_counts_by_taxon_request)

Get gene counts by taxonomic identifier

Get gene counts for a specified NCBI Taxonomy ID or name (common or scientific) in JSON format.

### Example
```R
library(ncbiopenapi)

# Get gene counts by taxonomic identifier
#
# prepare function argument(s)
var_v2_gene_counts_by_taxon_request <- v2GeneCountsByTaxonRequest$new("taxon_example") # V2GeneCountsByTaxonRequest | 

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneCountsForTaxonByPost(var_v2_gene_counts_by_taxon_requestdata_file = "result.txt")
result <- api_instance$GeneCountsForTaxonByPost(var_v2_gene_counts_by_taxon_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_gene_counts_by_taxon_request** | [**V2GeneCountsByTaxonRequest**](V2GeneCountsByTaxonRequest.md)|  | 

### Return type

[**V2GeneCountsByTaxonReply**](v2GeneCountsByTaxonReply.md)

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

# **GeneDatasetReport**
> V2reportsGeneDataReportPage GeneDatasetReport(v2_gene_dataset_reports_request)

Get gene dataset report as JSON

Get gene dataset report. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene dataset report as JSON
#
# prepare function argument(s)
var_v2_gene_dataset_reports_request <- v2GeneDatasetReportsRequest$new(v2GeneDatasetReportsRequestContentType$new(), c(123), c("accessions_example"), v2GeneDatasetReportsRequestSymbolsForTaxon$new(c("symbols_example"), "taxon_example"), "taxon_example", c("locus_tags_example"), c("table_fields_example"), "table_format_example", v2IncludeTabularHeader$new(), 123, "page_token_example", "query_example", c(v2GeneType$new()), c("accession_filter_example"), "tax_search_subtree_example", c(v2SortField$new("field_example", v2SortDirection$new()))) # V2GeneDatasetReportsRequest | 

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneDatasetReport(var_v2_gene_dataset_reports_requestdata_file = "result.txt")
result <- api_instance$GeneDatasetReport(var_v2_gene_dataset_reports_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_gene_dataset_reports_request** | [**V2GeneDatasetReportsRequest**](V2GeneDatasetReportsRequest.md)|  | 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneDatasetReportByAccession**
> V2reportsGeneDataReportPage GeneDatasetReportByAccession(accessions, returned_content = var.returned_content, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, query = var.query, types = var.types, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get dataset reports by accession IDs

Get dataset reports by accession IDs.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get dataset reports by accession IDs
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | RNA or Protein accessions.
var_returned_content <- v2GeneDatasetReportsRequestContentType$new() # V2GeneDatasetReportsRequestContentType | Return either gene-ids, or entire gene metadata (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- "table_format_example" # character | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_query <- "A2M immunoglobulin" # character | text search within gene symbol, aliases, name, locus-tag and protein name (Optional)
var_types <- c(v2GeneType$new()) # array[V2GeneType] | Gene types to filter (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneDatasetReportByAccession(var_accessions, returned_content = var_returned_content, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneDatasetReportByAccession(var_accessions, returned_content = var_returned_content, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| RNA or Protein accessions. | 
 **returned_content** | [**V2GeneDatasetReportsRequestContentType**](.md)| Return either gene-ids, or entire gene metadata | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | **character**| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **query** | **character**| text search within gene symbol, aliases, name, locus-tag and protein name | [optional] 
 **types** | list( [**V2GeneType**](v2GeneType.md) )| Gene types to filter | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneDatasetReportByTaxAndSymbol**
> V2reportsGeneDataReportPage GeneDatasetReportByTaxAndSymbol(symbols, taxon, returned_content = var.returned_content, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, query = var.query, types = var.types, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get dataset reports by taxons.

Get dataset reports by taxons.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get dataset reports by taxons.
#
# prepare function argument(s)
var_symbols <- c("inner_example") # array[character] | Gene symbol
var_taxon <- "9606" # character | Taxon for provided gene symbol
var_returned_content <- v2GeneDatasetReportsRequestContentType$new() # V2GeneDatasetReportsRequestContentType | Return either gene-ids, or entire gene metadata (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- "table_format_example" # character | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_query <- "A2M immunoglobulin" # character | text search within gene symbol, aliases, name, locus-tag and protein name (Optional)
var_types <- c(v2GeneType$new()) # array[V2GeneType] | Gene types to filter (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneDatasetReportByTaxAndSymbol(var_symbols, var_taxon, returned_content = var_returned_content, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneDatasetReportByTaxAndSymbol(var_symbols, var_taxon, returned_content = var_returned_content, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbols** | list( **character** )| Gene symbol | 
 **taxon** | **character**| Taxon for provided gene symbol | 
 **returned_content** | [**V2GeneDatasetReportsRequestContentType**](.md)| Return either gene-ids, or entire gene metadata | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | **character**| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **query** | **character**| text search within gene symbol, aliases, name, locus-tag and protein name | [optional] 
 **types** | list( [**V2GeneType**](v2GeneType.md) )| Gene types to filter | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneDatasetReportsById**
> V2reportsGeneDataReportPage GeneDatasetReportsById(gene_ids, returned_content = var.returned_content, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, query = var.query, types = var.types, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get dataset reports by gene IDs.

Get dataset reports by gene IDs.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get dataset reports by gene IDs.
#
# prepare function argument(s)
var_gene_ids <- c(123) # array[integer] | NCBI gene ids
var_returned_content <- v2GeneDatasetReportsRequestContentType$new() # V2GeneDatasetReportsRequestContentType | Return either gene-ids, or entire gene metadata (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- "table_format_example" # character | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_query <- "A2M immunoglobulin" # character | text search within gene symbol, aliases, name, locus-tag and protein name (Optional)
var_types <- c(v2GeneType$new()) # array[V2GeneType] | Gene types to filter (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneDatasetReportsById(var_gene_ids, returned_content = var_returned_content, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneDatasetReportsById(var_gene_ids, returned_content = var_returned_content, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_ids** | list( **integer** )| NCBI gene ids | 
 **returned_content** | [**V2GeneDatasetReportsRequestContentType**](.md)| Return either gene-ids, or entire gene metadata | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | **character**| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **query** | **character**| text search within gene symbol, aliases, name, locus-tag and protein name | [optional] 
 **types** | list( [**V2GeneType**](v2GeneType.md) )| Gene types to filter | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneDatasetReportsByLocusTag**
> V2reportsGeneDataReportPage GeneDatasetReportsByLocusTag(locus_tags, returned_content = var.returned_content, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, query = var.query, types = var.types, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get gene dataset reports by locus tag

Get a gene summary for one or more gene locus tags. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene dataset reports by locus tag
#
# prepare function argument(s)
var_locus_tags <- c("inner_example") # array[character] | Gene locus tags
var_returned_content <- v2GeneDatasetReportsRequestContentType$new() # V2GeneDatasetReportsRequestContentType | Return either gene-ids, or entire gene metadata (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- "table_format_example" # character | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_query <- "A2M immunoglobulin" # character | text search within gene symbol, aliases, name, locus-tag and protein name (Optional)
var_types <- c(v2GeneType$new()) # array[V2GeneType] | Gene types to filter (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneDatasetReportsByLocusTag(var_locus_tags, returned_content = var_returned_content, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneDatasetReportsByLocusTag(var_locus_tags, returned_content = var_returned_content, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locus_tags** | list( **character** )| Gene locus tags | 
 **returned_content** | [**V2GeneDatasetReportsRequestContentType**](.md)| Return either gene-ids, or entire gene metadata | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | **character**| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **query** | **character**| text search within gene symbol, aliases, name, locus-tag and protein name | [optional] 
 **types** | list( [**V2GeneType**](v2GeneType.md) )| Gene types to filter | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneDatasetReportsByTaxon**
> V2reportsGeneDataReportPage GeneDatasetReportsByTaxon(taxon, returned_content = var.returned_content, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, query = var.query, types = var.types, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get gene dataset reports by taxonomic identifier

Get a gene summary for a specified NCBI Taxonomy ID or name (common or scientific). By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene dataset reports by taxonomic identifier
#
# prepare function argument(s)
var_taxon <- "9606" # character | NCBI Taxonomy ID or name (common or scientific) that the genes are annotated at
var_returned_content <- v2GeneDatasetReportsRequestContentType$new() # V2GeneDatasetReportsRequestContentType | Return either gene-ids, or entire gene metadata (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- "table_format_example" # character | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_query <- "A2M immunoglobulin" # character | text search within gene symbol, aliases, name, locus-tag and protein name (Optional)
var_types <- c(v2GeneType$new()) # array[V2GeneType] | Gene types to filter (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneDatasetReportsByTaxon(var_taxon, returned_content = var_returned_content, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneDatasetReportsByTaxon(var_taxon, returned_content = var_returned_content, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) that the genes are annotated at | 
 **returned_content** | [**V2GeneDatasetReportsRequestContentType**](.md)| Return either gene-ids, or entire gene metadata | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | **character**| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **query** | **character**| text search within gene symbol, aliases, name, locus-tag and protein name | [optional] 
 **types** | list( [**V2GeneType**](v2GeneType.md) )| Gene types to filter | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneDownloadSummaryById**
> V2DownloadSummary GeneDownloadSummaryById(gene_ids, include_annotation_type = var.include_annotation_type, returned_content = var.returned_content, fasta_filter = var.fasta_filter, accession_filter = var.accession_filter, aux_report = var.aux_report, tabular_reports = var.tabular_reports, table_fields = var.table_fields, table_report_type = var.table_report_type)

Get gene download summary by GeneID

Get a download summary by GeneID in a JSON output format.

### Example
```R
library(ncbiopenapi)

# Get gene download summary by GeneID
#
# prepare function argument(s)
var_gene_ids <- c(123) # array[integer] | NCBI gene ids
var_include_annotation_type <- c(v2Fasta$new()) # array[V2Fasta] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. (Optional)
var_returned_content <- v2GeneDatasetRequestContentType$new() # V2GeneDatasetRequestContentType | Return either gene-ids, or entire gene metadata (Optional)
var_fasta_filter <- c("inner_example") # array[character] | Limit the FASTA sequences in the datasets package to these transcript and protein accessions (deprecated) (Optional)
var_accession_filter <- c("inner_example") # array[character] | Limit the FASTA sequences and tabular product report in the datasets package to these transcript and protein accessions (Optional)
var_aux_report <- c(v2GeneDatasetRequestGeneDatasetReportType$new()) # array[V2GeneDatasetRequestGeneDatasetReportType] | list additional reports to include with download. Data report is included by default. (Optional)
var_tabular_reports <- c(v2GeneDatasetRequestGeneDatasetReportType$new()) # array[V2GeneDatasetRequestGeneDatasetReportType] |  (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report. This is currently deprecated - use tabular_reports instead. (Optional)
var_table_report_type <- v2GeneDatasetRequestGeneDatasetReportType$new() # V2GeneDatasetRequestGeneDatasetReportType | Specify the report from which the table fields will be taken. This is currently deprecated - use tabular_reports instead. (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneDownloadSummaryById(var_gene_ids, include_annotation_type = var_include_annotation_type, returned_content = var_returned_content, fasta_filter = var_fasta_filter, accession_filter = var_accession_filter, aux_report = var_aux_report, tabular_reports = var_tabular_reports, table_fields = var_table_fields, table_report_type = var_table_report_typedata_file = "result.txt")
result <- api_instance$GeneDownloadSummaryById(var_gene_ids, include_annotation_type = var_include_annotation_type, returned_content = var_returned_content, fasta_filter = var_fasta_filter, accession_filter = var_accession_filter, aux_report = var_aux_report, tabular_reports = var_tabular_reports, table_fields = var_table_fields, table_report_type = var_table_report_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_ids** | list( **integer** )| NCBI gene ids | 
 **include_annotation_type** | list( [**V2Fasta**](v2Fasta.md) )| Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
 **returned_content** | [**V2GeneDatasetRequestContentType**](.md)| Return either gene-ids, or entire gene metadata | [optional] 
 **fasta_filter** | list( **character** )| Limit the FASTA sequences in the datasets package to these transcript and protein accessions (deprecated) | [optional] 
 **accession_filter** | list( **character** )| Limit the FASTA sequences and tabular product report in the datasets package to these transcript and protein accessions | [optional] 
 **aux_report** | list( [**V2GeneDatasetRequestGeneDatasetReportType**](v2GeneDatasetRequestGeneDatasetReportType.md) )| list additional reports to include with download. Data report is included by default. | [optional] 
 **tabular_reports** | list( [**V2GeneDatasetRequestGeneDatasetReportType**](v2GeneDatasetRequestGeneDatasetReportType.md) )|  | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report. This is currently deprecated - use tabular_reports instead. | [optional] 
 **table_report_type** | [**V2GeneDatasetRequestGeneDatasetReportType**](.md)| Specify the report from which the table fields will be taken. This is currently deprecated - use tabular_reports instead. | [optional] 

### Return type

[**V2DownloadSummary**](v2DownloadSummary.md)

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

# **GeneDownloadSummaryByPost**
> V2DownloadSummary GeneDownloadSummaryByPost(v2_gene_dataset_request)

Get gene download summary

Get gene download summary in a JSON output format.

### Example
```R
library(ncbiopenapi)

# Get gene download summary
#
# prepare function argument(s)
var_v2_gene_dataset_request <- v2GeneDatasetRequest$new(c(123), c(v2Fasta$new()), v2GeneDatasetRequestContentType$new(), c("fasta_filter_example"), c("accession_filter_example"), c(v2GeneDatasetRequestGeneDatasetReportType$new()), c(v2GeneDatasetRequestGeneDatasetReportType$new()), c("table_fields_example"), v2GeneDatasetRequestGeneDatasetReportType$new()) # V2GeneDatasetRequest | 

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneDownloadSummaryByPost(var_v2_gene_dataset_requestdata_file = "result.txt")
result <- api_instance$GeneDownloadSummaryByPost(var_v2_gene_dataset_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_gene_dataset_request** | [**V2GeneDatasetRequest**](V2GeneDatasetRequest.md)|  | 

### Return type

[**V2DownloadSummary**](v2DownloadSummary.md)

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

# **GeneLinksById**
> V2GeneLinksReply GeneLinksById(gene_ids)

Get gene links by gene ID

Get links to available gene resources by gene ID.

### Example
```R
library(ncbiopenapi)

# Get gene links by gene ID
#
# prepare function argument(s)
var_gene_ids <- c(123) # array[integer] | NCBI gene ids, limited to 1000 ids

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneLinksById(var_gene_idsdata_file = "result.txt")
result <- api_instance$GeneLinksById(var_gene_ids)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_ids** | list( **integer** )| NCBI gene ids, limited to 1000 ids | 

### Return type

[**V2GeneLinksReply**](v2GeneLinksReply.md)

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

# **GeneLinksByIdByPost**
> V2GeneLinksReply GeneLinksByIdByPost(v2_gene_links_request)

Get gene links by gene ID

Get links to available gene resources by gene ID.

### Example
```R
library(ncbiopenapi)

# Get gene links by gene ID
#
# prepare function argument(s)
var_v2_gene_links_request <- v2GeneLinksRequest$new(c(123)) # V2GeneLinksRequest | 

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneLinksByIdByPost(var_v2_gene_links_requestdata_file = "result.txt")
result <- api_instance$GeneLinksByIdByPost(var_v2_gene_links_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_gene_links_request** | [**V2GeneLinksRequest**](V2GeneLinksRequest.md)|  | 

### Return type

[**V2GeneLinksReply**](v2GeneLinksReply.md)

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

# **GeneMetadataByAccession**
> V2reportsGeneDataReportPage GeneMetadataByAccession(accessions, returned_content = var.returned_content, locus_tags = var.locus_tags, table_fields = var.table_fields, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, accession_filter = var.accession_filter, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get gene metadata by RefSeq Accession

Get a gene summary by RefSeq Accession. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene metadata by RefSeq Accession
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | RNA or Protein accessions.
var_returned_content <- v2GeneDatasetReportsRequestContentType$new() # V2GeneDatasetReportsRequestContentType | Return either gene-ids, or entire gene metadata (Optional)
var_locus_tags <- c("inner_example") # array[character] | Gene locus tags (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_accession_filter <- c("inner_example") # array[character] | Filter tabular product report to only include the selected accessions (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneMetadataByAccession(var_accessions, returned_content = var_returned_content, locus_tags = var_locus_tags, table_fields = var_table_fields, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneMetadataByAccession(var_accessions, returned_content = var_returned_content, locus_tags = var_locus_tags, table_fields = var_table_fields, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| RNA or Protein accessions. | 
 **returned_content** | [**V2GeneDatasetReportsRequestContentType**](.md)| Return either gene-ids, or entire gene metadata | [optional] 
 **locus_tags** | list( **character** )| Gene locus tags | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **accession_filter** | list( **character** )| Filter tabular product report to only include the selected accessions | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneMetadataByPost**
> V2reportsGeneDataReportPage GeneMetadataByPost(v2_gene_dataset_reports_request)

Get gene metadata as JSON

Get a gene summary. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene metadata as JSON
#
# prepare function argument(s)
var_v2_gene_dataset_reports_request <- v2GeneDatasetReportsRequest$new(v2GeneDatasetReportsRequestContentType$new(), c(123), c("accessions_example"), v2GeneDatasetReportsRequestSymbolsForTaxon$new(c("symbols_example"), "taxon_example"), "taxon_example", c("locus_tags_example"), c("table_fields_example"), "table_format_example", v2IncludeTabularHeader$new(), 123, "page_token_example", "query_example", c(v2GeneType$new()), c("accession_filter_example"), "tax_search_subtree_example", c(v2SortField$new("field_example", v2SortDirection$new()))) # V2GeneDatasetReportsRequest | 

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneMetadataByPost(var_v2_gene_dataset_reports_requestdata_file = "result.txt")
result <- api_instance$GeneMetadataByPost(var_v2_gene_dataset_reports_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_gene_dataset_reports_request** | [**V2GeneDatasetReportsRequest**](V2GeneDatasetReportsRequest.md)|  | 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneMetadataByTaxAndSymbol**
> V2reportsGeneDataReportPage GeneMetadataByTaxAndSymbol(symbols, taxon, returned_content = var.returned_content, locus_tags = var.locus_tags, table_fields = var.table_fields, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, accession_filter = var.accession_filter, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get gene metadata by gene symbol

Get a gene summary by by gene symbol. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene metadata by gene symbol
#
# prepare function argument(s)
var_symbols <- c("inner_example") # array[character] | Gene symbol
var_taxon <- "9606" # character | Taxon for provided gene symbol
var_returned_content <- v2GeneDatasetReportsRequestContentType$new() # V2GeneDatasetReportsRequestContentType | Return either gene-ids, or entire gene metadata (Optional)
var_locus_tags <- c("inner_example") # array[character] | Gene locus tags (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_accession_filter <- c("inner_example") # array[character] | Filter tabular product report to only include the selected accessions (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneMetadataByTaxAndSymbol(var_symbols, var_taxon, returned_content = var_returned_content, locus_tags = var_locus_tags, table_fields = var_table_fields, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneMetadataByTaxAndSymbol(var_symbols, var_taxon, returned_content = var_returned_content, locus_tags = var_locus_tags, table_fields = var_table_fields, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbols** | list( **character** )| Gene symbol | 
 **taxon** | **character**| Taxon for provided gene symbol | 
 **returned_content** | [**V2GeneDatasetReportsRequestContentType**](.md)| Return either gene-ids, or entire gene metadata | [optional] 
 **locus_tags** | list( **character** )| Gene locus tags | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **accession_filter** | list( **character** )| Filter tabular product report to only include the selected accessions | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneOrthologsById**
> V2reportsGeneDataReportPage GeneOrthologsById(gene_id, returned_content = var.returned_content, taxon_filter = var.taxon_filter, page_size = 20, page_token = var.page_token)

Get gene orthologs by gene ID

Get a gene summary for an ortholog set by gene ID in a JSON output format.

### Example
```R
library(ncbiopenapi)

# Get gene orthologs by gene ID
#
# prepare function argument(s)
var_gene_id <- 2778 # integer | 
var_returned_content <- v2OrthologRequestContentType$new() # V2OrthologRequestContentType | Return either gene-ids, or entire gene metadata (Optional)
var_taxon_filter <- c("inner_example") # array[character] | Filter genes by taxa (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `OrthologRequest` call with more than `page_size` results. Use this token, along with the previous `OrthologRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneOrthologsById(var_gene_id, returned_content = var_returned_content, taxon_filter = var_taxon_filter, page_size = var_page_size, page_token = var_page_tokendata_file = "result.txt")
result <- api_instance$GeneOrthologsById(var_gene_id, returned_content = var_returned_content, taxon_filter = var_taxon_filter, page_size = var_page_size, page_token = var_page_token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **integer**|  | 
 **returned_content** | [**V2OrthologRequestContentType**](.md)| Return either gene-ids, or entire gene metadata | [optional] 
 **taxon_filter** | list( **character** )| Filter genes by taxa | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;OrthologRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;OrthologRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneOrthologsByPost**
> V2reportsGeneDataReportPage GeneOrthologsByPost(v2_ortholog_request)

Get gene orthologs by gene ID

Get a gene summary for an ortholog set by gene ID in a JSON output format by POST

### Example
```R
library(ncbiopenapi)

# Get gene orthologs by gene ID
#
# prepare function argument(s)
var_v2_ortholog_request <- v2OrthologRequest$new(123, v2OrthologRequestContentType$new(), c("taxon_filter_example"), 123, "page_token_example") # V2OrthologRequest | 

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneOrthologsByPost(var_v2_ortholog_requestdata_file = "result.txt")
result <- api_instance$GeneOrthologsByPost(var_v2_ortholog_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_ortholog_request** | [**V2OrthologRequest**](V2OrthologRequest.md)|  | 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneProductReport**
> V2reportsGeneDataReportPage GeneProductReport(v2_gene_dataset_reports_request)

Get gene product reports as JSON

Get gene product reports. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene product reports as JSON
#
# prepare function argument(s)
var_v2_gene_dataset_reports_request <- v2GeneDatasetReportsRequest$new(v2GeneDatasetReportsRequestContentType$new(), c(123), c("accessions_example"), v2GeneDatasetReportsRequestSymbolsForTaxon$new(c("symbols_example"), "taxon_example"), "taxon_example", c("locus_tags_example"), c("table_fields_example"), "table_format_example", v2IncludeTabularHeader$new(), 123, "page_token_example", "query_example", c(v2GeneType$new()), c("accession_filter_example"), "tax_search_subtree_example", c(v2SortField$new("field_example", v2SortDirection$new()))) # V2GeneDatasetReportsRequest | 

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneProductReport(var_v2_gene_dataset_reports_requestdata_file = "result.txt")
result <- api_instance$GeneProductReport(var_v2_gene_dataset_reports_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_gene_dataset_reports_request** | [**V2GeneDatasetReportsRequest**](V2GeneDatasetReportsRequest.md)|  | 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneProductReportByAccession**
> V2reportsGeneDataReportPage GeneProductReportByAccession(accessions, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, query = var.query, types = var.types, accession_filter = var.accession_filter, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get gene product reports by accession IDs

Get gene product reports by accession IDs.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene product reports by accession IDs
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | RNA or Protein accessions.
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- "table_format_example" # character | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_query <- "A2M immunoglobulin" # character | text search within gene symbol, aliases, name, locus-tag and protein name (Optional)
var_types <- c(v2GeneType$new()) # array[V2GeneType] | Gene types to filter (Optional)
var_accession_filter <- c("inner_example") # array[character] | Filter tabular product report to only include the selected accessions (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneProductReportByAccession(var_accessions, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneProductReportByAccession(var_accessions, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| RNA or Protein accessions. | 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | **character**| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **query** | **character**| text search within gene symbol, aliases, name, locus-tag and protein name | [optional] 
 **types** | list( [**V2GeneType**](v2GeneType.md) )| Gene types to filter | [optional] 
 **accession_filter** | list( **character** )| Filter tabular product report to only include the selected accessions | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneProductReportByTaxAndSymbol**
> V2reportsGeneDataReportPage GeneProductReportByTaxAndSymbol(symbols, taxon, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, query = var.query, types = var.types, accession_filter = var.accession_filter, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get product reports by taxon.

Get gene product reports by taxon.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get product reports by taxon.
#
# prepare function argument(s)
var_symbols <- c("inner_example") # array[character] | Gene symbol
var_taxon <- "9606" # character | Taxon for provided gene symbol
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- "table_format_example" # character | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_query <- "A2M immunoglobulin" # character | text search within gene symbol, aliases, name, locus-tag and protein name (Optional)
var_types <- c(v2GeneType$new()) # array[V2GeneType] | Gene types to filter (Optional)
var_accession_filter <- c("inner_example") # array[character] | Filter tabular product report to only include the selected accessions (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneProductReportByTaxAndSymbol(var_symbols, var_taxon, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneProductReportByTaxAndSymbol(var_symbols, var_taxon, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbols** | list( **character** )| Gene symbol | 
 **taxon** | **character**| Taxon for provided gene symbol | 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | **character**| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **query** | **character**| text search within gene symbol, aliases, name, locus-tag and protein name | [optional] 
 **types** | list( [**V2GeneType**](v2GeneType.md) )| Gene types to filter | [optional] 
 **accession_filter** | list( **character** )| Filter tabular product report to only include the selected accessions | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneProductReportsById**
> V2reportsGeneDataReportPage GeneProductReportsById(gene_ids, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, query = var.query, types = var.types, accession_filter = var.accession_filter, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get gene product reports by gene IDs.

Get gene product reports by gene IDs.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene product reports by gene IDs.
#
# prepare function argument(s)
var_gene_ids <- c(123) # array[integer] | NCBI gene ids
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- "table_format_example" # character | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_query <- "A2M immunoglobulin" # character | text search within gene symbol, aliases, name, locus-tag and protein name (Optional)
var_types <- c(v2GeneType$new()) # array[V2GeneType] | Gene types to filter (Optional)
var_accession_filter <- c("inner_example") # array[character] | Filter tabular product report to only include the selected accessions (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneProductReportsById(var_gene_ids, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneProductReportsById(var_gene_ids, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_ids** | list( **integer** )| NCBI gene ids | 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | **character**| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **query** | **character**| text search within gene symbol, aliases, name, locus-tag and protein name | [optional] 
 **types** | list( [**V2GeneType**](v2GeneType.md) )| Gene types to filter | [optional] 
 **accession_filter** | list( **character** )| Filter tabular product report to only include the selected accessions | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneProductReportsByLocusTags**
> V2reportsGeneDataReportPage GeneProductReportsByLocusTags(locus_tags, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, query = var.query, types = var.types, accession_filter = var.accession_filter, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get gene product reports by locus tags

Get gene product reports for one or more gene locus tags. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene product reports by locus tags
#
# prepare function argument(s)
var_locus_tags <- c("inner_example") # array[character] | Gene locus tags
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- "table_format_example" # character | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_query <- "A2M immunoglobulin" # character | text search within gene symbol, aliases, name, locus-tag and protein name (Optional)
var_types <- c(v2GeneType$new()) # array[V2GeneType] | Gene types to filter (Optional)
var_accession_filter <- c("inner_example") # array[character] | Filter tabular product report to only include the selected accessions (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneProductReportsByLocusTags(var_locus_tags, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneProductReportsByLocusTags(var_locus_tags, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locus_tags** | list( **character** )| Gene locus tags | 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | **character**| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **query** | **character**| text search within gene symbol, aliases, name, locus-tag and protein name | [optional] 
 **types** | list( [**V2GeneType**](v2GeneType.md) )| Gene types to filter | [optional] 
 **accession_filter** | list( **character** )| Filter tabular product report to only include the selected accessions | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneProductReportsByTaxon**
> V2reportsGeneDataReportPage GeneProductReportsByTaxon(taxon, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, query = var.query, types = var.types, accession_filter = var.accession_filter, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get gene product reports by taxonomic identifier

Get gene product reports for a specified NCBI Taxonomy ID or name (common or scientific). By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene product reports by taxonomic identifier
#
# prepare function argument(s)
var_taxon <- "9606" # character | NCBI Taxonomy ID or name (common or scientific) that the genes are annotated at
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- "table_format_example" # character | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_query <- "A2M immunoglobulin" # character | text search within gene symbol, aliases, name, locus-tag and protein name (Optional)
var_types <- c(v2GeneType$new()) # array[V2GeneType] | Gene types to filter (Optional)
var_accession_filter <- c("inner_example") # array[character] | Filter tabular product report to only include the selected accessions (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneProductReportsByTaxon(var_taxon, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneProductReportsByTaxon(var_taxon, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) that the genes are annotated at | 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | **character**| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **query** | **character**| text search within gene symbol, aliases, name, locus-tag and protein name | [optional] 
 **types** | list( [**V2GeneType**](v2GeneType.md) )| Gene types to filter | [optional] 
 **accession_filter** | list( **character** )| Filter tabular product report to only include the selected accessions | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneReportsById**
> V2reportsGeneDataReportPage GeneReportsById(gene_ids, returned_content = var.returned_content, locus_tags = var.locus_tags, table_fields = var.table_fields, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, accession_filter = var.accession_filter, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get gene reports by GeneID

Get a gene summary by GeneID. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene reports by GeneID
#
# prepare function argument(s)
var_gene_ids <- c(123) # array[integer] | NCBI gene ids
var_returned_content <- v2GeneDatasetReportsRequestContentType$new() # V2GeneDatasetReportsRequestContentType | Return either gene-ids, or entire gene metadata (Optional)
var_locus_tags <- c("inner_example") # array[character] | Gene locus tags (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_accession_filter <- c("inner_example") # array[character] | Filter tabular product report to only include the selected accessions (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneReportsById(var_gene_ids, returned_content = var_returned_content, locus_tags = var_locus_tags, table_fields = var_table_fields, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneReportsById(var_gene_ids, returned_content = var_returned_content, locus_tags = var_locus_tags, table_fields = var_table_fields, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_ids** | list( **integer** )| NCBI gene ids | 
 **returned_content** | [**V2GeneDatasetReportsRequestContentType**](.md)| Return either gene-ids, or entire gene metadata | [optional] 
 **locus_tags** | list( **character** )| Gene locus tags | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **accession_filter** | list( **character** )| Filter tabular product report to only include the selected accessions | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

# **GeneReportsByTaxon**
> V2reportsGeneDataReportPage GeneReportsByTaxon(taxon, returned_content = var.returned_content, locus_tags = var.locus_tags, table_fields = var.table_fields, include_tabular_header = var.include_tabular_header, page_size = 20, page_token = var.page_token, query = var.query, types = var.types, accession_filter = var.accession_filter, tax_search_subtree = FALSE, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get gene reports by taxonomic identifier

Get a gene summary for a specified NCBI Taxonomy ID or name (common or scientific). By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get gene reports by taxonomic identifier
#
# prepare function argument(s)
var_taxon <- "9606" # character | NCBI Taxonomy ID or name (common or scientific) that the genes are annotated at
var_returned_content <- v2GeneDatasetReportsRequestContentType$new() # V2GeneDatasetReportsRequestContentType | Return either gene-ids, or entire gene metadata (Optional)
var_locus_tags <- c("inner_example") # array[character] | Gene locus tags (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_size <- 20 # integer | The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_query <- "A2M immunoglobulin" # character | text search within gene symbol, aliases, name, locus-tag and protein name (Optional)
var_types <- c(v2GeneType$new()) # array[V2GeneType] | Gene types to filter (Optional)
var_accession_filter <- c("inner_example") # array[character] | Filter tabular product report to only include the selected accessions (Optional)
var_tax_search_subtree <- FALSE # character | For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GeneApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GeneReportsByTaxon(var_taxon, returned_content = var_returned_content, locus_tags = var_locus_tags, table_fields = var_table_fields, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$GeneReportsByTaxon(var_taxon, returned_content = var_returned_content, locus_tags = var_locus_tags, table_fields = var_table_fields, include_tabular_header = var_include_tabular_header, page_size = var_page_size, page_token = var_page_token, query = var_query, types = var_types, accession_filter = var_accession_filter, tax_search_subtree = var_tax_search_subtree, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) that the genes are annotated at | 
 **returned_content** | [**V2GeneDatasetReportsRequestContentType**](.md)| Return either gene-ids, or entire gene metadata | [optional] 
 **locus_tags** | list( **character** )| Gene locus tags | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_size** | **integer**| The maximum number of gene reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **query** | **character**| text search within gene symbol, aliases, name, locus-tag and protein name | [optional] 
 **types** | list( [**V2GeneType**](v2GeneType.md) )| Gene types to filter | [optional] 
 **accession_filter** | list( **character** )| Filter tabular product report to only include the selected accessions | [optional] 
 **tax_search_subtree** | **character**| For queries including a tax-id, include any matching genes annotated on taxa below the selected taxon. By default this is false, and only genes for the selected taxon are returned. | [optional] [default to FALSE]
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2reportsGeneDataReportPage**](v2reportsGeneDataReportPage.md)

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

