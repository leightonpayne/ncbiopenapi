# GenomeApi

All URIs are relative to *https://api.ncbi.nlm.nih.gov/datasets/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AnnotationReportFacetsByAccession**](GenomeApi.md#AnnotationReportFacetsByAccession) | **GET** /genome/accession/{accession}/annotation_summary | Get genome annotation report summary information
[**AnnotationReportFacetsByPost**](GenomeApi.md#AnnotationReportFacetsByPost) | **POST** /genome/annotation_summary | Get genome annotation report summary information
[**AssemblyAccessionsForSequenceAccession**](GenomeApi.md#AssemblyAccessionsForSequenceAccession) | **GET** /genome/sequence_accession/{accession}/sequence_assemblies | Get assembly accessions for a sequence accession
[**AssemblyAccessionsForSequenceAccessionByPost**](GenomeApi.md#AssemblyAccessionsForSequenceAccessionByPost) | **POST** /genome/sequence_assemblies | Get assembly accessions for a sequence accession
[**AssemblyRevisionHistoryByGet**](GenomeApi.md#AssemblyRevisionHistoryByGet) | **GET** /genome/accession/{accession}/revision_history | Get revision history for assembly by accession
[**AssemblyRevisionHistoryByPost**](GenomeApi.md#AssemblyRevisionHistoryByPost) | **POST** /genome/revision_history | Get revision history for assembly by accession
[**CheckAssemblyAvailability**](GenomeApi.md#CheckAssemblyAvailability) | **GET** /genome/accession/{accessions}/check | Check the validity of genome accessions
[**CheckAssemblyAvailabilityPost**](GenomeApi.md#CheckAssemblyAvailabilityPost) | **POST** /genome/check | Check the validity of many genome accessions in a single request
[**CheckmHistogramByTaxon**](GenomeApi.md#CheckmHistogramByTaxon) | **GET** /genome/taxon/{species_taxon}/checkm_histogram | Get CheckM histogram by species taxon
[**CheckmHistogramByTaxonByPost**](GenomeApi.md#CheckmHistogramByTaxonByPost) | **POST** /genome/checkm_histogram | Get CheckM histogram by species taxon
[**DownloadAssemblyPackage**](GenomeApi.md#DownloadAssemblyPackage) | **GET** /genome/accession/{accessions}/download | Get a genome dataset by accession
[**DownloadAssemblyPackagePost**](GenomeApi.md#DownloadAssemblyPackagePost) | **POST** /genome/download | Get a genome dataset by post
[**DownloadGenomeAnnotationPackage**](GenomeApi.md#DownloadGenomeAnnotationPackage) | **GET** /genome/accession/{accession}/annotation_report/download | Get an annotation report dataset by accession
[**DownloadGenomeAnnotationPackageByPost**](GenomeApi.md#DownloadGenomeAnnotationPackageByPost) | **POST** /genome/annotation_report/download | Get an annotation report dataset by accession
[**GenomeAnnotationDownloadSummary**](GenomeApi.md#GenomeAnnotationDownloadSummary) | **GET** /genome/accession/{accession}/annotation_report/download_summary | Preview feature dataset download
[**GenomeAnnotationDownloadSummaryByPost**](GenomeApi.md#GenomeAnnotationDownloadSummaryByPost) | **POST** /genome/annotation_report/download_summary | Preview feature download by POST
[**GenomeAnnotationReport**](GenomeApi.md#GenomeAnnotationReport) | **GET** /genome/accession/{accession}/annotation_report | Get genome annotation reports by genome accession
[**GenomeAnnotationReportByPost**](GenomeApi.md#GenomeAnnotationReportByPost) | **POST** /genome/annotation_report | Get genome annotation reports by genome accession
[**GenomeDatasetReport**](GenomeApi.md#GenomeDatasetReport) | **GET** /genome/accession/{accessions}/dataset_report | Get dataset reports by accessions
[**GenomeDatasetReportByPost**](GenomeApi.md#GenomeDatasetReportByPost) | **POST** /genome/dataset_report | Get dataset reports by accessions
[**GenomeDatasetReportsByAssemblyName**](GenomeApi.md#GenomeDatasetReportsByAssemblyName) | **GET** /genome/assembly_name/{assembly_names}/dataset_report | Get dataset reports by assembly name (exact)
[**GenomeDatasetReportsByBioproject**](GenomeApi.md#GenomeDatasetReportsByBioproject) | **GET** /genome/bioproject/{bioprojects}/dataset_report | Get dataset reports by bioproject
[**GenomeDatasetReportsByBiosampleId**](GenomeApi.md#GenomeDatasetReportsByBiosampleId) | **GET** /genome/biosample/{biosample_ids}/dataset_report | Get dataset reports by biosample id
[**GenomeDatasetReportsByTaxon**](GenomeApi.md#GenomeDatasetReportsByTaxon) | **GET** /genome/taxon/{taxons}/dataset_report | Get dataset reports by taxons
[**GenomeDatasetReportsByWgs**](GenomeApi.md#GenomeDatasetReportsByWgs) | **GET** /genome/wgs/{wgs_accessions}/dataset_report | Get dataset reports by wgs accession
[**GenomeDownloadSummary**](GenomeApi.md#GenomeDownloadSummary) | **GET** /genome/accession/{accessions}/download_summary | Preview genome dataset download
[**GenomeDownloadSummaryByPost**](GenomeApi.md#GenomeDownloadSummaryByPost) | **POST** /genome/download_summary | Preview genome dataset download by POST
[**GenomeLinksByAccession**](GenomeApi.md#GenomeLinksByAccession) | **GET** /genome/accession/{accessions}/links | Get assembly links by accessions
[**GenomeLinksByAccessionByPost**](GenomeApi.md#GenomeLinksByAccessionByPost) | **POST** /genome/links | Get assembly links by accessions
[**GenomeSequenceReport**](GenomeApi.md#GenomeSequenceReport) | **GET** /genome/accession/{accession}/sequence_reports | Get sequence reports by accessions
[**GenomeSequenceReportByPost**](GenomeApi.md#GenomeSequenceReportByPost) | **POST** /genome/sequence_reports | Get sequence reports by accessions


# **AnnotationReportFacetsByAccession**
> V2GenomeAnnotationTableSummaryReply AnnotationReportFacetsByAccession(accession, sort_field = var.sort_field, sort_direction = var.sort_direction)

Get genome annotation report summary information

Get genome annotation report summary information by genome accession. The return facets can be used in subsequent queries.

### Example
```R
library(ncbiopenapi)

# Get genome annotation report summary information
#
# prepare function argument(s)
var_accession <- "GCF_000001635.27" # character | 
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AnnotationReportFacetsByAccession(var_accession, sort_field = var_sort_field, sort_direction = var_sort_directiondata_file = "result.txt")
result <- api_instance$AnnotationReportFacetsByAccession(var_accession, sort_field = var_sort_field, sort_direction = var_sort_direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession** | **character**|  | 
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 

### Return type

[**V2GenomeAnnotationTableSummaryReply**](v2GenomeAnnotationTableSummaryReply.md)

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

# **AnnotationReportFacetsByPost**
> V2GenomeAnnotationTableSummaryReply AnnotationReportFacetsByPost(v2_genome_annotation_request)

Get genome annotation report summary information

Get genome annotation report summary information by genome accession. The return facets can be used in subsequent queries.

### Example
```R
library(ncbiopenapi)

# Get genome annotation report summary information
#
# prepare function argument(s)
var_v2_genome_annotation_request <- v2GenomeAnnotationRequest$new("accession_example", c("annotation_ids_example"), c("symbols_example"), c("locations_example"), c("gene_types_example"), c("search_text_example"), c(v2SortField$new("field_example", v2SortDirection$new())), c(v2GenomeAnnotationRequestAnnotationType$new()), 123, c("table_fields_example"), v2GenomeAnnotationRequestGenomeAnnotationTableFormat$new(), v2IncludeTabularHeader$new(), "page_token_example") # V2GenomeAnnotationRequest | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AnnotationReportFacetsByPost(var_v2_genome_annotation_requestdata_file = "result.txt")
result <- api_instance$AnnotationReportFacetsByPost(var_v2_genome_annotation_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_genome_annotation_request** | [**V2GenomeAnnotationRequest**](V2GenomeAnnotationRequest.md)|  | 

### Return type

[**V2GenomeAnnotationTableSummaryReply**](v2GenomeAnnotationTableSummaryReply.md)

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

# **AssemblyAccessionsForSequenceAccession**
> V2AssemblyAccessions AssemblyAccessionsForSequenceAccession(accession)

Get assembly accessions for a sequence accession

Get assembly accessions for a sequence (nucleotide) accession

### Example
```R
library(ncbiopenapi)

# Get assembly accessions for a sequence accession
#
# prepare function argument(s)
var_accession <- "NC_000001.11" # character | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AssemblyAccessionsForSequenceAccession(var_accessiondata_file = "result.txt")
result <- api_instance$AssemblyAccessionsForSequenceAccession(var_accession)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession** | **character**|  | 

### Return type

[**V2AssemblyAccessions**](v2AssemblyAccessions.md)

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

# **AssemblyAccessionsForSequenceAccessionByPost**
> V2AssemblyAccessions AssemblyAccessionsForSequenceAccessionByPost(v2_sequence_accession_request)

Get assembly accessions for a sequence accession

Get assembly accessions for a sequence (nucleotide) accession

### Example
```R
library(ncbiopenapi)

# Get assembly accessions for a sequence accession
#
# prepare function argument(s)
var_v2_sequence_accession_request <- v2SequenceAccessionRequest$new("accession_example") # V2SequenceAccessionRequest | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AssemblyAccessionsForSequenceAccessionByPost(var_v2_sequence_accession_requestdata_file = "result.txt")
result <- api_instance$AssemblyAccessionsForSequenceAccessionByPost(var_v2_sequence_accession_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_sequence_accession_request** | [**V2SequenceAccessionRequest**](V2SequenceAccessionRequest.md)|  | 

### Return type

[**V2AssemblyAccessions**](v2AssemblyAccessions.md)

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

# **AssemblyRevisionHistoryByGet**
> V2AssemblyRevisionHistory AssemblyRevisionHistoryByGet(accession)

Get revision history for assembly by accession

Get revision history for assembly by accession

### Example
```R
library(ncbiopenapi)

# Get revision history for assembly by accession
#
# prepare function argument(s)
var_accession <- "GCF_000001405.40" # character | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AssemblyRevisionHistoryByGet(var_accessiondata_file = "result.txt")
result <- api_instance$AssemblyRevisionHistoryByGet(var_accession)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession** | **character**|  | 

### Return type

[**V2AssemblyRevisionHistory**](v2AssemblyRevisionHistory.md)

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

# **AssemblyRevisionHistoryByPost**
> V2AssemblyRevisionHistory AssemblyRevisionHistoryByPost(v2_assembly_revision_history_request)

Get revision history for assembly by accession

Get revision history for assembly by accession

### Example
```R
library(ncbiopenapi)

# Get revision history for assembly by accession
#
# prepare function argument(s)
var_v2_assembly_revision_history_request <- v2AssemblyRevisionHistoryRequest$new("accession_example") # V2AssemblyRevisionHistoryRequest | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AssemblyRevisionHistoryByPost(var_v2_assembly_revision_history_requestdata_file = "result.txt")
result <- api_instance$AssemblyRevisionHistoryByPost(var_v2_assembly_revision_history_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_assembly_revision_history_request** | [**V2AssemblyRevisionHistoryRequest**](V2AssemblyRevisionHistoryRequest.md)|  | 

### Return type

[**V2AssemblyRevisionHistory**](v2AssemblyRevisionHistory.md)

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

# **CheckAssemblyAvailability**
> V2AssemblyDatasetAvailability CheckAssemblyAvailability(accessions)

Check the validity of genome accessions

The 'GET' version of check is limited by the size of the GET URL (2KB, which works out to about 140 genomic accessions).  The POST operation is provided to allow users to supply a larger number of accessions in a single request.

### Example
```R
library(ncbiopenapi)

# Check the validity of genome accessions
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | NCBI genome assembly accessions

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CheckAssemblyAvailability(var_accessionsdata_file = "result.txt")
result <- api_instance$CheckAssemblyAvailability(var_accessions)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| NCBI genome assembly accessions | 

### Return type

[**V2AssemblyDatasetAvailability**](v2AssemblyDatasetAvailability.md)

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

# **CheckAssemblyAvailabilityPost**
> V2AssemblyDatasetAvailability CheckAssemblyAvailabilityPost(v2_assembly_dataset_request)

Check the validity of many genome accessions in a single request

The 'GET' version of check is limited by the size of the GET URL (2KB, which works out to about 140 genomic accessions).  The POST operation is provided to allow users to supply a larger number of accessions in a single request.

### Example
```R
library(ncbiopenapi)

# Check the validity of many genome accessions in a single request
#
# prepare function argument(s)
var_v2_assembly_dataset_request <- v2AssemblyDatasetRequest$new(c("accessions_example"), c("chromosomes_example"), c(v2AnnotationForAssemblyType$new()), v2AssemblyDatasetRequestResolution$new(), "include_tsv_example") # V2AssemblyDatasetRequest | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CheckAssemblyAvailabilityPost(var_v2_assembly_dataset_requestdata_file = "result.txt")
result <- api_instance$CheckAssemblyAvailabilityPost(var_v2_assembly_dataset_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_assembly_dataset_request** | [**V2AssemblyDatasetRequest**](V2AssemblyDatasetRequest.md)|  | 

### Return type

[**V2AssemblyDatasetAvailability**](v2AssemblyDatasetAvailability.md)

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

# **CheckmHistogramByTaxon**
> V2AssemblyCheckMHistogramReply CheckmHistogramByTaxon(species_taxon)

Get CheckM histogram by species taxon

Get CheckM histogram by species taxon. CheckM histograms are only available for certain bacterial species.

### Example
```R
library(ncbiopenapi)

# Get CheckM histogram by species taxon
#
# prepare function argument(s)
var_species_taxon <- "202956" # character | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CheckmHistogramByTaxon(var_species_taxondata_file = "result.txt")
result <- api_instance$CheckmHistogramByTaxon(var_species_taxon)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **species_taxon** | **character**|  | 

### Return type

[**V2AssemblyCheckMHistogramReply**](v2AssemblyCheckMHistogramReply.md)

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

# **CheckmHistogramByTaxonByPost**
> V2AssemblyCheckMHistogramReply CheckmHistogramByTaxonByPost(v2_assembly_check_m_histogram_request)

Get CheckM histogram by species taxon

Get CheckM histogram by species taxon. CheckM histograms are only available for certain bacterial species.

### Example
```R
library(ncbiopenapi)

# Get CheckM histogram by species taxon
#
# prepare function argument(s)
var_v2_assembly_check_m_histogram_request <- v2AssemblyCheckMHistogramRequest$new("species_taxon_example") # V2AssemblyCheckMHistogramRequest | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CheckmHistogramByTaxonByPost(var_v2_assembly_check_m_histogram_requestdata_file = "result.txt")
result <- api_instance$CheckmHistogramByTaxonByPost(var_v2_assembly_check_m_histogram_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_assembly_check_m_histogram_request** | [**V2AssemblyCheckMHistogramRequest**](V2AssemblyCheckMHistogramRequest.md)|  | 

### Return type

[**V2AssemblyCheckMHistogramReply**](v2AssemblyCheckMHistogramReply.md)

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

# **DownloadAssemblyPackage**
> data.frame DownloadAssemblyPackage(accessions, chromosomes = var.chromosomes, include_annotation_type = var.include_annotation_type, hydrated = var.hydrated, filename = "ncbi_dataset.zip")

Get a genome dataset by accession

Download a genome dataset including fasta sequence, annotation and a detailed data report by accession.

### Example
```R
library(ncbiopenapi)

# Get a genome dataset by accession
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | NCBI genome assembly accessions
var_chromosomes <- c("inner_example") # array[character] | The default setting is all chromosome. Specify individual chromosome by string (1,2,MT or chr1,chr2.chrMT). Unplaced sequences are treated like their own chromosome ('Un'). The filter only applies to fasta sequence. (Optional)
var_include_annotation_type <- c(v2AnnotationForAssemblyType$new()) # array[V2AnnotationForAssemblyType] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. (Optional)
var_hydrated <- v2AssemblyDatasetRequestResolution$new() # V2AssemblyDatasetRequestResolution | Set to DATA_REPORT_ONLY, to only retrieve data-reports. (Optional)
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DownloadAssemblyPackage(var_accessions, chromosomes = var_chromosomes, include_annotation_type = var_include_annotation_type, hydrated = var_hydrated, filename = var_filenamedata_file = "result.txt")
result <- api_instance$DownloadAssemblyPackage(var_accessions, chromosomes = var_chromosomes, include_annotation_type = var_include_annotation_type, hydrated = var_hydrated, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| NCBI genome assembly accessions | 
 **chromosomes** | list( **character** )| The default setting is all chromosome. Specify individual chromosome by string (1,2,MT or chr1,chr2.chrMT). Unplaced sequences are treated like their own chromosome (&#39;Un&#39;). The filter only applies to fasta sequence. | [optional] 
 **include_annotation_type** | list( [**V2AnnotationForAssemblyType**](v2AnnotationForAssemblyType.md) )| Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
 **hydrated** | [**V2AssemblyDatasetRequestResolution**](.md)| Set to DATA_REPORT_ONLY, to only retrieve data-reports. | [optional] 
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

# **DownloadAssemblyPackagePost**
> data.frame DownloadAssemblyPackagePost(v2_assembly_dataset_request, filename = "ncbi_dataset.zip")

Get a genome dataset by post

The 'GET' version of download is limited by the size of the GET URL (2KB, which works out to about 140 genomic accessions).  The POST operation is provided to allow users to supply a larger number of accessions in a single request.

### Example
```R
library(ncbiopenapi)

# Get a genome dataset by post
#
# prepare function argument(s)
var_v2_assembly_dataset_request <- v2AssemblyDatasetRequest$new(c("accessions_example"), c("chromosomes_example"), c(v2AnnotationForAssemblyType$new()), v2AssemblyDatasetRequestResolution$new(), "include_tsv_example") # V2AssemblyDatasetRequest | 
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DownloadAssemblyPackagePost(var_v2_assembly_dataset_request, filename = var_filenamedata_file = "result.txt")
result <- api_instance$DownloadAssemblyPackagePost(var_v2_assembly_dataset_request, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_assembly_dataset_request** | [**V2AssemblyDatasetRequest**](V2AssemblyDatasetRequest.md)|  | 
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

# **DownloadGenomeAnnotationPackage**
> data.frame DownloadGenomeAnnotationPackage(accession, annotation_ids = var.annotation_ids, symbols = var.symbols, locations = var.locations, gene_types = var.gene_types, search_text = var.search_text, sort_field = var.sort_field, sort_direction = var.sort_direction, include_annotation_type = var.include_annotation_type, page_size = 20, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header, page_token = var.page_token, filename = "ncbi_dataset.zip")

Get an annotation report dataset by accession

Download an annotation report including fasta sequence and a detailed annotation report by genomic accession.

### Example
```R
library(ncbiopenapi)

# Get an annotation report dataset by accession
#
# prepare function argument(s)
var_accession <- "GCF_000001635.27" # character | 
var_annotation_ids <- c("inner_example") # array[character] | Limit the reports by internal, unstable annotation ids. (Optional)
var_symbols <- c("inner_example") # array[character] | Filter parameters (Optional)
var_locations <- c("inner_example") # array[character] | Locations with a chromosome or accession and optional start-stop range: chromosome|accession[:start-end] (Optional)
var_gene_types <- c("inner_example") # array[character] | granular gene_types (Optional)
var_search_text <- c("inner_example") # array[character] |  (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)
var_include_annotation_type <- c(v2GenomeAnnotationRequestAnnotationType$new()) # array[V2GenomeAnnotationRequestAnnotationType] |  (Optional)
var_page_size <- 20 # integer | The maximum number of features to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- v2GenomeAnnotationRequestGenomeAnnotationTableFormat$new() # V2GenomeAnnotationRequestGenomeAnnotationTableFormat | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from a `GetFeatures` call with more than `page_size` results. Use this token, along with the previous `FeatureRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DownloadGenomeAnnotationPackage(var_accession, annotation_ids = var_annotation_ids, symbols = var_symbols, locations = var_locations, gene_types = var_gene_types, search_text = var_search_text, sort_field = var_sort_field, sort_direction = var_sort_direction, include_annotation_type = var_include_annotation_type, page_size = var_page_size, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_token = var_page_token, filename = var_filenamedata_file = "result.txt")
result <- api_instance$DownloadGenomeAnnotationPackage(var_accession, annotation_ids = var_annotation_ids, symbols = var_symbols, locations = var_locations, gene_types = var_gene_types, search_text = var_search_text, sort_field = var_sort_field, sort_direction = var_sort_direction, include_annotation_type = var_include_annotation_type, page_size = var_page_size, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_token = var_page_token, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession** | **character**|  | 
 **annotation_ids** | list( **character** )| Limit the reports by internal, unstable annotation ids. | [optional] 
 **symbols** | list( **character** )| Filter parameters | [optional] 
 **locations** | list( **character** )| Locations with a chromosome or accession and optional start-stop range: chromosome|accession[:start-end] | [optional] 
 **gene_types** | list( **character** )| granular gene_types | [optional] 
 **search_text** | list( **character** )|  | [optional] 
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 
 **include_annotation_type** | list( [**V2GenomeAnnotationRequestAnnotationType**](v2GenomeAnnotationRequestAnnotationType.md) )|  | [optional] 
 **page_size** | **integer**| The maximum number of features to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | [**V2GenomeAnnotationRequestGenomeAnnotationTableFormat**](.md)| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_token** | **character**| A page token is returned from a &#x60;GetFeatures&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;FeatureRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
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

# **DownloadGenomeAnnotationPackageByPost**
> data.frame DownloadGenomeAnnotationPackageByPost(v2_genome_annotation_request, filename = "ncbi_dataset.zip")

Get an annotation report dataset by accession

Download an annotation report including fasta sequence and a detailed annotation report by genomic accession.

### Example
```R
library(ncbiopenapi)

# Get an annotation report dataset by accession
#
# prepare function argument(s)
var_v2_genome_annotation_request <- v2GenomeAnnotationRequest$new("accession_example", c("annotation_ids_example"), c("symbols_example"), c("locations_example"), c("gene_types_example"), c("search_text_example"), c(v2SortField$new("field_example", v2SortDirection$new())), c(v2GenomeAnnotationRequestAnnotationType$new()), 123, c("table_fields_example"), v2GenomeAnnotationRequestGenomeAnnotationTableFormat$new(), v2IncludeTabularHeader$new(), "page_token_example") # V2GenomeAnnotationRequest | 
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DownloadGenomeAnnotationPackageByPost(var_v2_genome_annotation_request, filename = var_filenamedata_file = "result.txt")
result <- api_instance$DownloadGenomeAnnotationPackageByPost(var_v2_genome_annotation_request, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_genome_annotation_request** | [**V2GenomeAnnotationRequest**](V2GenomeAnnotationRequest.md)|  | 
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

# **GenomeAnnotationDownloadSummary**
> V2DownloadSummary GenomeAnnotationDownloadSummary(accession, annotation_ids = var.annotation_ids, symbols = var.symbols, locations = var.locations, gene_types = var.gene_types, search_text = var.search_text, sort_field = var.sort_field, sort_direction = var.sort_direction, include_annotation_type = var.include_annotation_type, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header)

Preview feature dataset download

Get a download feature summary by accession in a JSON output format.

### Example
```R
library(ncbiopenapi)

# Preview feature dataset download
#
# prepare function argument(s)
var_accession <- "GCF_000001635.27" # character | 
var_annotation_ids <- c("inner_example") # array[character] | Limit the reports by internal, unstable annotation ids. (Optional)
var_symbols <- c("inner_example") # array[character] | Filter parameters (Optional)
var_locations <- c("inner_example") # array[character] | Locations with a chromosome or accession and optional start-stop range: chromosome|accession[:start-end] (Optional)
var_gene_types <- c("inner_example") # array[character] | granular gene_types (Optional)
var_search_text <- c("inner_example") # array[character] |  (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)
var_include_annotation_type <- c(v2GenomeAnnotationRequestAnnotationType$new()) # array[V2GenomeAnnotationRequestAnnotationType] |  (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- v2GenomeAnnotationRequestGenomeAnnotationTableFormat$new() # V2GenomeAnnotationRequestGenomeAnnotationTableFormat | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeAnnotationDownloadSummary(var_accession, annotation_ids = var_annotation_ids, symbols = var_symbols, locations = var_locations, gene_types = var_gene_types, search_text = var_search_text, sort_field = var_sort_field, sort_direction = var_sort_direction, include_annotation_type = var_include_annotation_type, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_headerdata_file = "result.txt")
result <- api_instance$GenomeAnnotationDownloadSummary(var_accession, annotation_ids = var_annotation_ids, symbols = var_symbols, locations = var_locations, gene_types = var_gene_types, search_text = var_search_text, sort_field = var_sort_field, sort_direction = var_sort_direction, include_annotation_type = var_include_annotation_type, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession** | **character**|  | 
 **annotation_ids** | list( **character** )| Limit the reports by internal, unstable annotation ids. | [optional] 
 **symbols** | list( **character** )| Filter parameters | [optional] 
 **locations** | list( **character** )| Locations with a chromosome or accession and optional start-stop range: chromosome|accession[:start-end] | [optional] 
 **gene_types** | list( **character** )| granular gene_types | [optional] 
 **search_text** | list( **character** )|  | [optional] 
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 
 **include_annotation_type** | list( [**V2GenomeAnnotationRequestAnnotationType**](v2GenomeAnnotationRequestAnnotationType.md) )|  | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | [**V2GenomeAnnotationRequestGenomeAnnotationTableFormat**](.md)| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 

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

# **GenomeAnnotationDownloadSummaryByPost**
> V2DownloadSummary GenomeAnnotationDownloadSummaryByPost(v2_genome_annotation_request)

Preview feature download by POST

The 'GET' version of feature download summary is limited by the size of the GET URL (2KB).  The POST operation is provided to allow users to supply a larger number of annotation_ids in a single request.

### Example
```R
library(ncbiopenapi)

# Preview feature download by POST
#
# prepare function argument(s)
var_v2_genome_annotation_request <- v2GenomeAnnotationRequest$new("accession_example", c("annotation_ids_example"), c("symbols_example"), c("locations_example"), c("gene_types_example"), c("search_text_example"), c(v2SortField$new("field_example", v2SortDirection$new())), c(v2GenomeAnnotationRequestAnnotationType$new()), 123, c("table_fields_example"), v2GenomeAnnotationRequestGenomeAnnotationTableFormat$new(), v2IncludeTabularHeader$new(), "page_token_example") # V2GenomeAnnotationRequest | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeAnnotationDownloadSummaryByPost(var_v2_genome_annotation_requestdata_file = "result.txt")
result <- api_instance$GenomeAnnotationDownloadSummaryByPost(var_v2_genome_annotation_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_genome_annotation_request** | [**V2GenomeAnnotationRequest**](V2GenomeAnnotationRequest.md)|  | 

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

# **GenomeAnnotationReport**
> V2reportsGenomeAnnotationReportPage GenomeAnnotationReport(accession, annotation_ids = var.annotation_ids, symbols = var.symbols, locations = var.locations, gene_types = var.gene_types, search_text = var.search_text, sort_field = var.sort_field, sort_direction = var.sort_direction, page_size = 20, table_fields = var.table_fields, table_format = var.table_format, include_tabular_header = var.include_tabular_header, page_token = var.page_token)

Get genome annotation reports by genome accession

Get genome annotation reports by genome accession.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get genome annotation reports by genome accession
#
# prepare function argument(s)
var_accession <- "GCF_000001635.27" # character | 
var_annotation_ids <- c("inner_example") # array[character] | Limit the reports by internal, unstable annotation ids. (Optional)
var_symbols <- c("inner_example") # array[character] | Filter parameters (Optional)
var_locations <- c("inner_example") # array[character] | Locations with a chromosome or accession and optional start-stop range: chromosome|accession[:start-end] (Optional)
var_gene_types <- c("inner_example") # array[character] | granular gene_types (Optional)
var_search_text <- c("inner_example") # array[character] |  (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)
var_page_size <- 20 # integer | The maximum number of features to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_table_format <- v2GenomeAnnotationRequestGenomeAnnotationTableFormat$new() # V2GenomeAnnotationRequestGenomeAnnotationTableFormat | Optional pre-defined template for processing a tabular data request (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from a `GetFeatures` call with more than `page_size` results. Use this token, along with the previous `FeatureRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeAnnotationReport(var_accession, annotation_ids = var_annotation_ids, symbols = var_symbols, locations = var_locations, gene_types = var_gene_types, search_text = var_search_text, sort_field = var_sort_field, sort_direction = var_sort_direction, page_size = var_page_size, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_token = var_page_tokendata_file = "result.txt")
result <- api_instance$GenomeAnnotationReport(var_accession, annotation_ids = var_annotation_ids, symbols = var_symbols, locations = var_locations, gene_types = var_gene_types, search_text = var_search_text, sort_field = var_sort_field, sort_direction = var_sort_direction, page_size = var_page_size, table_fields = var_table_fields, table_format = var_table_format, include_tabular_header = var_include_tabular_header, page_token = var_page_token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession** | **character**|  | 
 **annotation_ids** | list( **character** )| Limit the reports by internal, unstable annotation ids. | [optional] 
 **symbols** | list( **character** )| Filter parameters | [optional] 
 **locations** | list( **character** )| Locations with a chromosome or accession and optional start-stop range: chromosome|accession[:start-end] | [optional] 
 **gene_types** | list( **character** )| granular gene_types | [optional] 
 **search_text** | list( **character** )|  | [optional] 
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 
 **page_size** | **integer**| The maximum number of features to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **table_format** | [**V2GenomeAnnotationRequestGenomeAnnotationTableFormat**](.md)| Optional pre-defined template for processing a tabular data request | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 
 **page_token** | **character**| A page token is returned from a &#x60;GetFeatures&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;FeatureRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 

### Return type

[**V2reportsGenomeAnnotationReportPage**](v2reportsGenomeAnnotationReportPage.md)

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

# **GenomeAnnotationReportByPost**
> V2reportsGenomeAnnotationReportPage GenomeAnnotationReportByPost(v2_genome_annotation_request)

Get genome annotation reports by genome accession

Get genome annotation reports by genome accession.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get genome annotation reports by genome accession
#
# prepare function argument(s)
var_v2_genome_annotation_request <- v2GenomeAnnotationRequest$new("accession_example", c("annotation_ids_example"), c("symbols_example"), c("locations_example"), c("gene_types_example"), c("search_text_example"), c(v2SortField$new("field_example", v2SortDirection$new())), c(v2GenomeAnnotationRequestAnnotationType$new()), 123, c("table_fields_example"), v2GenomeAnnotationRequestGenomeAnnotationTableFormat$new(), v2IncludeTabularHeader$new(), "page_token_example") # V2GenomeAnnotationRequest | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeAnnotationReportByPost(var_v2_genome_annotation_requestdata_file = "result.txt")
result <- api_instance$GenomeAnnotationReportByPost(var_v2_genome_annotation_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_genome_annotation_request** | [**V2GenomeAnnotationRequest**](V2GenomeAnnotationRequest.md)|  | 

### Return type

[**V2reportsGenomeAnnotationReportPage**](v2reportsGenomeAnnotationReportPage.md)

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

# **GenomeDatasetReport**
> V2reportsAssemblyDataReportPage GenomeDatasetReport(accessions, filters_reference_only = FALSE, filters_assembly_source = var.filters_assembly_source, filters_has_annotation = FALSE, filters_exclude_paired_reports = FALSE, filters_exclude_atypical = FALSE, filters_assembly_version = var.filters_assembly_version, filters_assembly_level = var.filters_assembly_level, filters_first_release_date = var.filters_first_release_date, filters_last_release_date = var.filters_last_release_date, filters_search_text = var.filters_search_text, filters_is_metagenome_derived = var.filters_is_metagenome_derived, filters_is_type_material = FALSE, filters_is_ictv_exemplar = FALSE, filters_exclude_multi_isolate = FALSE, filters_type_material_category = var.filters_type_material_category, tax_exact_match = FALSE, table_fields = var.table_fields, returned_content = var.returned_content, page_size = 20, page_token = var.page_token, sort_field = var.sort_field, sort_direction = var.sort_direction, include_tabular_header = var.include_tabular_header)

Get dataset reports by accessions

Get dataset reports by accessions.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get dataset reports by accessions
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | 
var_filters_reference_only <- FALSE # character | If true, only return reference genome assemblies (Optional)
var_filters_assembly_source <- v2AssemblyDatasetDescriptorsFilterAssemblySource$new() # V2AssemblyDatasetDescriptorsFilterAssemblySource | Return only RefSeq (GCF_) or GenBank (GCA_) genome assemblies (Optional)
var_filters_has_annotation <- FALSE # character | Return only annotated genome assemblies (Optional)
var_filters_exclude_paired_reports <- FALSE # character | For paired (GCA/GCF) records, only return the primary record (Optional)
var_filters_exclude_atypical <- FALSE # character | If true, exclude atypical genomes, i.e. genomes that have assembly issues or are otherwise atypical (Optional)
var_filters_assembly_version <- v2AssemblyDatasetDescriptorsFilterAssemblyVersion$new() # V2AssemblyDatasetDescriptorsFilterAssemblyVersion | Return all assemblies, including replaced and suppressed, or only current assemblies (Optional)
var_filters_assembly_level <- c(v2reportsAssemblyLevel$new()) # array[V2reportsAssemblyLevel] | Only return genome assemblies that have one of the specified assembly levels. By default, do not filter. (Optional)
var_filters_first_release_date <- "2015-01-10T00:00:00Z" # character | Only return genome assemblies that were released on or after the specified date By default, do not filter. (Optional)
var_filters_last_release_date <- "2021-01-10T00:00:00Z" # character | Only return genome assemblies that were released on or before to the specified date By default, do not filter. (Optional)
var_filters_search_text <- c("inner_example") # array[character] | Only return results whose fields contain the specified search terms in their taxon, infraspecific, assembly name or submitter fields By default, do not filter (Optional)
var_filters_is_metagenome_derived <- v2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter$new() # V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter |  (Optional)
var_filters_is_type_material <- FALSE # character | If true, include only type materials (Optional)
var_filters_is_ictv_exemplar <- FALSE # character | If true, include only ICTV Exemplars (Optional)
var_filters_exclude_multi_isolate <- FALSE # character | If true, exclude large multi-isolate projects (Optional)
var_filters_type_material_category <- v2AssemblyDatasetDescriptorsFilterTypeMaterialCategory$new() # V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory |  (Optional)
var_tax_exact_match <- FALSE # character | If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. (Optional)
var_table_fields <- c("inner_example") # array[character] |  (Optional)
var_returned_content <- v2AssemblyDatasetReportsRequestContentType$new() # V2AssemblyDatasetReportsRequestContentType | Return either assembly accessions, or complete assembly reports (Optional)
var_page_size <- 20 # integer | The maximum number of genome assembly reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeDatasetReport(var_accessions, filters_reference_only = var_filters_reference_only, filters_assembly_source = var_filters_assembly_source, filters_has_annotation = var_filters_has_annotation, filters_exclude_paired_reports = var_filters_exclude_paired_reports, filters_exclude_atypical = var_filters_exclude_atypical, filters_assembly_version = var_filters_assembly_version, filters_assembly_level = var_filters_assembly_level, filters_first_release_date = var_filters_first_release_date, filters_last_release_date = var_filters_last_release_date, filters_search_text = var_filters_search_text, filters_is_metagenome_derived = var_filters_is_metagenome_derived, filters_is_type_material = var_filters_is_type_material, filters_is_ictv_exemplar = var_filters_is_ictv_exemplar, filters_exclude_multi_isolate = var_filters_exclude_multi_isolate, filters_type_material_category = var_filters_type_material_category, tax_exact_match = var_tax_exact_match, table_fields = var_table_fields, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, sort_field = var_sort_field, sort_direction = var_sort_direction, include_tabular_header = var_include_tabular_headerdata_file = "result.txt")
result <- api_instance$GenomeDatasetReport(var_accessions, filters_reference_only = var_filters_reference_only, filters_assembly_source = var_filters_assembly_source, filters_has_annotation = var_filters_has_annotation, filters_exclude_paired_reports = var_filters_exclude_paired_reports, filters_exclude_atypical = var_filters_exclude_atypical, filters_assembly_version = var_filters_assembly_version, filters_assembly_level = var_filters_assembly_level, filters_first_release_date = var_filters_first_release_date, filters_last_release_date = var_filters_last_release_date, filters_search_text = var_filters_search_text, filters_is_metagenome_derived = var_filters_is_metagenome_derived, filters_is_type_material = var_filters_is_type_material, filters_is_ictv_exemplar = var_filters_is_ictv_exemplar, filters_exclude_multi_isolate = var_filters_exclude_multi_isolate, filters_type_material_category = var_filters_type_material_category, tax_exact_match = var_tax_exact_match, table_fields = var_table_fields, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, sort_field = var_sort_field, sort_direction = var_sort_direction, include_tabular_header = var_include_tabular_header)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )|  | 
 **filters_reference_only** | **character**| If true, only return reference genome assemblies | [optional] [default to FALSE]
 **filters_assembly_source** | [**V2AssemblyDatasetDescriptorsFilterAssemblySource**](.md)| Return only RefSeq (GCF_) or GenBank (GCA_) genome assemblies | [optional] 
 **filters_has_annotation** | **character**| Return only annotated genome assemblies | [optional] [default to FALSE]
 **filters_exclude_paired_reports** | **character**| For paired (GCA/GCF) records, only return the primary record | [optional] [default to FALSE]
 **filters_exclude_atypical** | **character**| If true, exclude atypical genomes, i.e. genomes that have assembly issues or are otherwise atypical | [optional] [default to FALSE]
 **filters_assembly_version** | [**V2AssemblyDatasetDescriptorsFilterAssemblyVersion**](.md)| Return all assemblies, including replaced and suppressed, or only current assemblies | [optional] 
 **filters_assembly_level** | list( [**V2reportsAssemblyLevel**](v2reportsAssemblyLevel.md) )| Only return genome assemblies that have one of the specified assembly levels. By default, do not filter. | [optional] 
 **filters_first_release_date** | **character**| Only return genome assemblies that were released on or after the specified date By default, do not filter. | [optional] 
 **filters_last_release_date** | **character**| Only return genome assemblies that were released on or before to the specified date By default, do not filter. | [optional] 
 **filters_search_text** | list( **character** )| Only return results whose fields contain the specified search terms in their taxon, infraspecific, assembly name or submitter fields By default, do not filter | [optional] 
 **filters_is_metagenome_derived** | [**V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter**](.md)|  | [optional] 
 **filters_is_type_material** | **character**| If true, include only type materials | [optional] [default to FALSE]
 **filters_is_ictv_exemplar** | **character**| If true, include only ICTV Exemplars | [optional] [default to FALSE]
 **filters_exclude_multi_isolate** | **character**| If true, exclude large multi-isolate projects | [optional] [default to FALSE]
 **filters_type_material_category** | [**V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory**](.md)|  | [optional] 
 **tax_exact_match** | **character**| If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. | [optional] [default to FALSE]
 **table_fields** | list( **character** )|  | [optional] 
 **returned_content** | [**V2AssemblyDatasetReportsRequestContentType**](.md)| Return either assembly accessions, or complete assembly reports | [optional] 
 **page_size** | **integer**| The maximum number of genome assembly reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 

### Return type

[**V2reportsAssemblyDataReportPage**](v2reportsAssemblyDataReportPage.md)

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

# **GenomeDatasetReportByPost**
> V2reportsAssemblyDataReportPage GenomeDatasetReportByPost(v2_assembly_dataset_reports_request)

Get dataset reports by accessions

Get a dataset report by accession.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get dataset reports by accessions
#
# prepare function argument(s)
var_v2_assembly_dataset_reports_request <- v2AssemblyDatasetReportsRequest$new(c("taxons_example"), c("bioprojects_example"), c("biosample_ids_example"), c("assembly_names_example"), c("wgs_accessions_example"), c("accessions_example"), v2AssemblyDatasetDescriptorsFilter$new("reference_only_example", v2AssemblyDatasetDescriptorsFilterAssemblySource$new(), "has_annotation_example", "exclude_paired_reports_example", "exclude_atypical_example", v2AssemblyDatasetDescriptorsFilterAssemblyVersion$new(), c(v2reportsAssemblyLevel$new()), "first_release_date_example", "last_release_date_example", c("search_text_example"), v2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter$new(), "is_type_material_example", "is_ictv_exemplar_example", "exclude_multi_isolate_example", v2AssemblyDatasetDescriptorsFilterTypeMaterialCategory$new()), "tax_exact_match_example", c("chromosomes_example"), c("table_fields_example"), v2AssemblyDatasetReportsRequestContentType$new(), 123, "page_token_example", c(v2SortField$new("field_example", v2SortDirection$new())), v2IncludeTabularHeader$new(), "table_format_example") # V2AssemblyDatasetReportsRequest | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeDatasetReportByPost(var_v2_assembly_dataset_reports_requestdata_file = "result.txt")
result <- api_instance$GenomeDatasetReportByPost(var_v2_assembly_dataset_reports_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_assembly_dataset_reports_request** | [**V2AssemblyDatasetReportsRequest**](V2AssemblyDatasetReportsRequest.md)|  | 

### Return type

[**V2reportsAssemblyDataReportPage**](v2reportsAssemblyDataReportPage.md)

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

# **GenomeDatasetReportsByAssemblyName**
> V2reportsAssemblyDataReportPage GenomeDatasetReportsByAssemblyName(assembly_names, filters_reference_only = FALSE, filters_assembly_source = var.filters_assembly_source, filters_has_annotation = FALSE, filters_exclude_paired_reports = FALSE, filters_exclude_atypical = FALSE, filters_assembly_version = var.filters_assembly_version, filters_assembly_level = var.filters_assembly_level, filters_first_release_date = var.filters_first_release_date, filters_last_release_date = var.filters_last_release_date, filters_search_text = var.filters_search_text, filters_is_metagenome_derived = var.filters_is_metagenome_derived, filters_is_type_material = FALSE, filters_is_ictv_exemplar = FALSE, filters_exclude_multi_isolate = FALSE, filters_type_material_category = var.filters_type_material_category, tax_exact_match = FALSE, table_fields = var.table_fields, returned_content = var.returned_content, page_size = 20, page_token = var.page_token, sort_field = var.sort_field, sort_direction = var.sort_direction, include_tabular_header = var.include_tabular_header)

Get dataset reports by assembly name (exact)

Get dataset reports by assembly name (exact).  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get dataset reports by assembly name (exact)
#
# prepare function argument(s)
var_assembly_names <- c("inner_example") # array[character] | 
var_filters_reference_only <- FALSE # character | If true, only return reference genome assemblies (Optional)
var_filters_assembly_source <- v2AssemblyDatasetDescriptorsFilterAssemblySource$new() # V2AssemblyDatasetDescriptorsFilterAssemblySource | Return only RefSeq (GCF_) or GenBank (GCA_) genome assemblies (Optional)
var_filters_has_annotation <- FALSE # character | Return only annotated genome assemblies (Optional)
var_filters_exclude_paired_reports <- FALSE # character | For paired (GCA/GCF) records, only return the primary record (Optional)
var_filters_exclude_atypical <- FALSE # character | If true, exclude atypical genomes, i.e. genomes that have assembly issues or are otherwise atypical (Optional)
var_filters_assembly_version <- v2AssemblyDatasetDescriptorsFilterAssemblyVersion$new() # V2AssemblyDatasetDescriptorsFilterAssemblyVersion | Return all assemblies, including replaced and suppressed, or only current assemblies (Optional)
var_filters_assembly_level <- c(v2reportsAssemblyLevel$new()) # array[V2reportsAssemblyLevel] | Only return genome assemblies that have one of the specified assembly levels. By default, do not filter. (Optional)
var_filters_first_release_date <- "2015-01-10T00:00:00Z" # character | Only return genome assemblies that were released on or after the specified date By default, do not filter. (Optional)
var_filters_last_release_date <- "2021-01-10T00:00:00Z" # character | Only return genome assemblies that were released on or before to the specified date By default, do not filter. (Optional)
var_filters_search_text <- c("inner_example") # array[character] | Only return results whose fields contain the specified search terms in their taxon, infraspecific, assembly name or submitter fields By default, do not filter (Optional)
var_filters_is_metagenome_derived <- v2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter$new() # V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter |  (Optional)
var_filters_is_type_material <- FALSE # character | If true, include only type materials (Optional)
var_filters_is_ictv_exemplar <- FALSE # character | If true, include only ICTV Exemplars (Optional)
var_filters_exclude_multi_isolate <- FALSE # character | If true, exclude large multi-isolate projects (Optional)
var_filters_type_material_category <- v2AssemblyDatasetDescriptorsFilterTypeMaterialCategory$new() # V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory |  (Optional)
var_tax_exact_match <- FALSE # character | If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. (Optional)
var_table_fields <- c("inner_example") # array[character] |  (Optional)
var_returned_content <- v2AssemblyDatasetReportsRequestContentType$new() # V2AssemblyDatasetReportsRequestContentType | Return either assembly accessions, or complete assembly reports (Optional)
var_page_size <- 20 # integer | The maximum number of genome assembly reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeDatasetReportsByAssemblyName(var_assembly_names, filters_reference_only = var_filters_reference_only, filters_assembly_source = var_filters_assembly_source, filters_has_annotation = var_filters_has_annotation, filters_exclude_paired_reports = var_filters_exclude_paired_reports, filters_exclude_atypical = var_filters_exclude_atypical, filters_assembly_version = var_filters_assembly_version, filters_assembly_level = var_filters_assembly_level, filters_first_release_date = var_filters_first_release_date, filters_last_release_date = var_filters_last_release_date, filters_search_text = var_filters_search_text, filters_is_metagenome_derived = var_filters_is_metagenome_derived, filters_is_type_material = var_filters_is_type_material, filters_is_ictv_exemplar = var_filters_is_ictv_exemplar, filters_exclude_multi_isolate = var_filters_exclude_multi_isolate, filters_type_material_category = var_filters_type_material_category, tax_exact_match = var_tax_exact_match, table_fields = var_table_fields, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, sort_field = var_sort_field, sort_direction = var_sort_direction, include_tabular_header = var_include_tabular_headerdata_file = "result.txt")
result <- api_instance$GenomeDatasetReportsByAssemblyName(var_assembly_names, filters_reference_only = var_filters_reference_only, filters_assembly_source = var_filters_assembly_source, filters_has_annotation = var_filters_has_annotation, filters_exclude_paired_reports = var_filters_exclude_paired_reports, filters_exclude_atypical = var_filters_exclude_atypical, filters_assembly_version = var_filters_assembly_version, filters_assembly_level = var_filters_assembly_level, filters_first_release_date = var_filters_first_release_date, filters_last_release_date = var_filters_last_release_date, filters_search_text = var_filters_search_text, filters_is_metagenome_derived = var_filters_is_metagenome_derived, filters_is_type_material = var_filters_is_type_material, filters_is_ictv_exemplar = var_filters_is_ictv_exemplar, filters_exclude_multi_isolate = var_filters_exclude_multi_isolate, filters_type_material_category = var_filters_type_material_category, tax_exact_match = var_tax_exact_match, table_fields = var_table_fields, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, sort_field = var_sort_field, sort_direction = var_sort_direction, include_tabular_header = var_include_tabular_header)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assembly_names** | list( **character** )|  | 
 **filters_reference_only** | **character**| If true, only return reference genome assemblies | [optional] [default to FALSE]
 **filters_assembly_source** | [**V2AssemblyDatasetDescriptorsFilterAssemblySource**](.md)| Return only RefSeq (GCF_) or GenBank (GCA_) genome assemblies | [optional] 
 **filters_has_annotation** | **character**| Return only annotated genome assemblies | [optional] [default to FALSE]
 **filters_exclude_paired_reports** | **character**| For paired (GCA/GCF) records, only return the primary record | [optional] [default to FALSE]
 **filters_exclude_atypical** | **character**| If true, exclude atypical genomes, i.e. genomes that have assembly issues or are otherwise atypical | [optional] [default to FALSE]
 **filters_assembly_version** | [**V2AssemblyDatasetDescriptorsFilterAssemblyVersion**](.md)| Return all assemblies, including replaced and suppressed, or only current assemblies | [optional] 
 **filters_assembly_level** | list( [**V2reportsAssemblyLevel**](v2reportsAssemblyLevel.md) )| Only return genome assemblies that have one of the specified assembly levels. By default, do not filter. | [optional] 
 **filters_first_release_date** | **character**| Only return genome assemblies that were released on or after the specified date By default, do not filter. | [optional] 
 **filters_last_release_date** | **character**| Only return genome assemblies that were released on or before to the specified date By default, do not filter. | [optional] 
 **filters_search_text** | list( **character** )| Only return results whose fields contain the specified search terms in their taxon, infraspecific, assembly name or submitter fields By default, do not filter | [optional] 
 **filters_is_metagenome_derived** | [**V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter**](.md)|  | [optional] 
 **filters_is_type_material** | **character**| If true, include only type materials | [optional] [default to FALSE]
 **filters_is_ictv_exemplar** | **character**| If true, include only ICTV Exemplars | [optional] [default to FALSE]
 **filters_exclude_multi_isolate** | **character**| If true, exclude large multi-isolate projects | [optional] [default to FALSE]
 **filters_type_material_category** | [**V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory**](.md)|  | [optional] 
 **tax_exact_match** | **character**| If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. | [optional] [default to FALSE]
 **table_fields** | list( **character** )|  | [optional] 
 **returned_content** | [**V2AssemblyDatasetReportsRequestContentType**](.md)| Return either assembly accessions, or complete assembly reports | [optional] 
 **page_size** | **integer**| The maximum number of genome assembly reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 

### Return type

[**V2reportsAssemblyDataReportPage**](v2reportsAssemblyDataReportPage.md)

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

# **GenomeDatasetReportsByBioproject**
> V2reportsAssemblyDataReportPage GenomeDatasetReportsByBioproject(bioprojects, filters_reference_only = FALSE, filters_assembly_source = var.filters_assembly_source, filters_has_annotation = FALSE, filters_exclude_paired_reports = FALSE, filters_exclude_atypical = FALSE, filters_assembly_version = var.filters_assembly_version, filters_assembly_level = var.filters_assembly_level, filters_first_release_date = var.filters_first_release_date, filters_last_release_date = var.filters_last_release_date, filters_search_text = var.filters_search_text, filters_is_metagenome_derived = var.filters_is_metagenome_derived, filters_is_type_material = FALSE, filters_is_ictv_exemplar = FALSE, filters_exclude_multi_isolate = FALSE, filters_type_material_category = var.filters_type_material_category, tax_exact_match = FALSE, table_fields = var.table_fields, returned_content = var.returned_content, page_size = 20, page_token = var.page_token, sort_field = var.sort_field, sort_direction = var.sort_direction, include_tabular_header = var.include_tabular_header)

Get dataset reports by bioproject

Get dataset reports by bioprojects.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get dataset reports by bioproject
#
# prepare function argument(s)
var_bioprojects <- c("inner_example") # array[character] | 
var_filters_reference_only <- FALSE # character | If true, only return reference genome assemblies (Optional)
var_filters_assembly_source <- v2AssemblyDatasetDescriptorsFilterAssemblySource$new() # V2AssemblyDatasetDescriptorsFilterAssemblySource | Return only RefSeq (GCF_) or GenBank (GCA_) genome assemblies (Optional)
var_filters_has_annotation <- FALSE # character | Return only annotated genome assemblies (Optional)
var_filters_exclude_paired_reports <- FALSE # character | For paired (GCA/GCF) records, only return the primary record (Optional)
var_filters_exclude_atypical <- FALSE # character | If true, exclude atypical genomes, i.e. genomes that have assembly issues or are otherwise atypical (Optional)
var_filters_assembly_version <- v2AssemblyDatasetDescriptorsFilterAssemblyVersion$new() # V2AssemblyDatasetDescriptorsFilterAssemblyVersion | Return all assemblies, including replaced and suppressed, or only current assemblies (Optional)
var_filters_assembly_level <- c(v2reportsAssemblyLevel$new()) # array[V2reportsAssemblyLevel] | Only return genome assemblies that have one of the specified assembly levels. By default, do not filter. (Optional)
var_filters_first_release_date <- "2015-01-10T00:00:00Z" # character | Only return genome assemblies that were released on or after the specified date By default, do not filter. (Optional)
var_filters_last_release_date <- "2021-01-10T00:00:00Z" # character | Only return genome assemblies that were released on or before to the specified date By default, do not filter. (Optional)
var_filters_search_text <- c("inner_example") # array[character] | Only return results whose fields contain the specified search terms in their taxon, infraspecific, assembly name or submitter fields By default, do not filter (Optional)
var_filters_is_metagenome_derived <- v2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter$new() # V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter |  (Optional)
var_filters_is_type_material <- FALSE # character | If true, include only type materials (Optional)
var_filters_is_ictv_exemplar <- FALSE # character | If true, include only ICTV Exemplars (Optional)
var_filters_exclude_multi_isolate <- FALSE # character | If true, exclude large multi-isolate projects (Optional)
var_filters_type_material_category <- v2AssemblyDatasetDescriptorsFilterTypeMaterialCategory$new() # V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory |  (Optional)
var_tax_exact_match <- FALSE # character | If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. (Optional)
var_table_fields <- c("inner_example") # array[character] |  (Optional)
var_returned_content <- v2AssemblyDatasetReportsRequestContentType$new() # V2AssemblyDatasetReportsRequestContentType | Return either assembly accessions, or complete assembly reports (Optional)
var_page_size <- 20 # integer | The maximum number of genome assembly reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeDatasetReportsByBioproject(var_bioprojects, filters_reference_only = var_filters_reference_only, filters_assembly_source = var_filters_assembly_source, filters_has_annotation = var_filters_has_annotation, filters_exclude_paired_reports = var_filters_exclude_paired_reports, filters_exclude_atypical = var_filters_exclude_atypical, filters_assembly_version = var_filters_assembly_version, filters_assembly_level = var_filters_assembly_level, filters_first_release_date = var_filters_first_release_date, filters_last_release_date = var_filters_last_release_date, filters_search_text = var_filters_search_text, filters_is_metagenome_derived = var_filters_is_metagenome_derived, filters_is_type_material = var_filters_is_type_material, filters_is_ictv_exemplar = var_filters_is_ictv_exemplar, filters_exclude_multi_isolate = var_filters_exclude_multi_isolate, filters_type_material_category = var_filters_type_material_category, tax_exact_match = var_tax_exact_match, table_fields = var_table_fields, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, sort_field = var_sort_field, sort_direction = var_sort_direction, include_tabular_header = var_include_tabular_headerdata_file = "result.txt")
result <- api_instance$GenomeDatasetReportsByBioproject(var_bioprojects, filters_reference_only = var_filters_reference_only, filters_assembly_source = var_filters_assembly_source, filters_has_annotation = var_filters_has_annotation, filters_exclude_paired_reports = var_filters_exclude_paired_reports, filters_exclude_atypical = var_filters_exclude_atypical, filters_assembly_version = var_filters_assembly_version, filters_assembly_level = var_filters_assembly_level, filters_first_release_date = var_filters_first_release_date, filters_last_release_date = var_filters_last_release_date, filters_search_text = var_filters_search_text, filters_is_metagenome_derived = var_filters_is_metagenome_derived, filters_is_type_material = var_filters_is_type_material, filters_is_ictv_exemplar = var_filters_is_ictv_exemplar, filters_exclude_multi_isolate = var_filters_exclude_multi_isolate, filters_type_material_category = var_filters_type_material_category, tax_exact_match = var_tax_exact_match, table_fields = var_table_fields, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, sort_field = var_sort_field, sort_direction = var_sort_direction, include_tabular_header = var_include_tabular_header)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bioprojects** | list( **character** )|  | 
 **filters_reference_only** | **character**| If true, only return reference genome assemblies | [optional] [default to FALSE]
 **filters_assembly_source** | [**V2AssemblyDatasetDescriptorsFilterAssemblySource**](.md)| Return only RefSeq (GCF_) or GenBank (GCA_) genome assemblies | [optional] 
 **filters_has_annotation** | **character**| Return only annotated genome assemblies | [optional] [default to FALSE]
 **filters_exclude_paired_reports** | **character**| For paired (GCA/GCF) records, only return the primary record | [optional] [default to FALSE]
 **filters_exclude_atypical** | **character**| If true, exclude atypical genomes, i.e. genomes that have assembly issues or are otherwise atypical | [optional] [default to FALSE]
 **filters_assembly_version** | [**V2AssemblyDatasetDescriptorsFilterAssemblyVersion**](.md)| Return all assemblies, including replaced and suppressed, or only current assemblies | [optional] 
 **filters_assembly_level** | list( [**V2reportsAssemblyLevel**](v2reportsAssemblyLevel.md) )| Only return genome assemblies that have one of the specified assembly levels. By default, do not filter. | [optional] 
 **filters_first_release_date** | **character**| Only return genome assemblies that were released on or after the specified date By default, do not filter. | [optional] 
 **filters_last_release_date** | **character**| Only return genome assemblies that were released on or before to the specified date By default, do not filter. | [optional] 
 **filters_search_text** | list( **character** )| Only return results whose fields contain the specified search terms in their taxon, infraspecific, assembly name or submitter fields By default, do not filter | [optional] 
 **filters_is_metagenome_derived** | [**V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter**](.md)|  | [optional] 
 **filters_is_type_material** | **character**| If true, include only type materials | [optional] [default to FALSE]
 **filters_is_ictv_exemplar** | **character**| If true, include only ICTV Exemplars | [optional] [default to FALSE]
 **filters_exclude_multi_isolate** | **character**| If true, exclude large multi-isolate projects | [optional] [default to FALSE]
 **filters_type_material_category** | [**V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory**](.md)|  | [optional] 
 **tax_exact_match** | **character**| If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. | [optional] [default to FALSE]
 **table_fields** | list( **character** )|  | [optional] 
 **returned_content** | [**V2AssemblyDatasetReportsRequestContentType**](.md)| Return either assembly accessions, or complete assembly reports | [optional] 
 **page_size** | **integer**| The maximum number of genome assembly reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 

### Return type

[**V2reportsAssemblyDataReportPage**](v2reportsAssemblyDataReportPage.md)

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

# **GenomeDatasetReportsByBiosampleId**
> V2reportsAssemblyDataReportPage GenomeDatasetReportsByBiosampleId(biosample_ids, filters_reference_only = FALSE, filters_assembly_source = var.filters_assembly_source, filters_has_annotation = FALSE, filters_exclude_paired_reports = FALSE, filters_exclude_atypical = FALSE, filters_assembly_version = var.filters_assembly_version, filters_assembly_level = var.filters_assembly_level, filters_first_release_date = var.filters_first_release_date, filters_last_release_date = var.filters_last_release_date, filters_search_text = var.filters_search_text, filters_is_metagenome_derived = var.filters_is_metagenome_derived, filters_is_type_material = FALSE, filters_is_ictv_exemplar = FALSE, filters_exclude_multi_isolate = FALSE, filters_type_material_category = var.filters_type_material_category, tax_exact_match = FALSE, table_fields = var.table_fields, returned_content = var.returned_content, page_size = 20, page_token = var.page_token, sort_field = var.sort_field, sort_direction = var.sort_direction, include_tabular_header = var.include_tabular_header)

Get dataset reports by biosample id

Get dataset reports by biosample id.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get dataset reports by biosample id
#
# prepare function argument(s)
var_biosample_ids <- c("inner_example") # array[character] | 
var_filters_reference_only <- FALSE # character | If true, only return reference genome assemblies (Optional)
var_filters_assembly_source <- v2AssemblyDatasetDescriptorsFilterAssemblySource$new() # V2AssemblyDatasetDescriptorsFilterAssemblySource | Return only RefSeq (GCF_) or GenBank (GCA_) genome assemblies (Optional)
var_filters_has_annotation <- FALSE # character | Return only annotated genome assemblies (Optional)
var_filters_exclude_paired_reports <- FALSE # character | For paired (GCA/GCF) records, only return the primary record (Optional)
var_filters_exclude_atypical <- FALSE # character | If true, exclude atypical genomes, i.e. genomes that have assembly issues or are otherwise atypical (Optional)
var_filters_assembly_version <- v2AssemblyDatasetDescriptorsFilterAssemblyVersion$new() # V2AssemblyDatasetDescriptorsFilterAssemblyVersion | Return all assemblies, including replaced and suppressed, or only current assemblies (Optional)
var_filters_assembly_level <- c(v2reportsAssemblyLevel$new()) # array[V2reportsAssemblyLevel] | Only return genome assemblies that have one of the specified assembly levels. By default, do not filter. (Optional)
var_filters_first_release_date <- "2015-01-10T00:00:00Z" # character | Only return genome assemblies that were released on or after the specified date By default, do not filter. (Optional)
var_filters_last_release_date <- "2021-01-10T00:00:00Z" # character | Only return genome assemblies that were released on or before to the specified date By default, do not filter. (Optional)
var_filters_search_text <- c("inner_example") # array[character] | Only return results whose fields contain the specified search terms in their taxon, infraspecific, assembly name or submitter fields By default, do not filter (Optional)
var_filters_is_metagenome_derived <- v2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter$new() # V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter |  (Optional)
var_filters_is_type_material <- FALSE # character | If true, include only type materials (Optional)
var_filters_is_ictv_exemplar <- FALSE # character | If true, include only ICTV Exemplars (Optional)
var_filters_exclude_multi_isolate <- FALSE # character | If true, exclude large multi-isolate projects (Optional)
var_filters_type_material_category <- v2AssemblyDatasetDescriptorsFilterTypeMaterialCategory$new() # V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory |  (Optional)
var_tax_exact_match <- FALSE # character | If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. (Optional)
var_table_fields <- c("inner_example") # array[character] |  (Optional)
var_returned_content <- v2AssemblyDatasetReportsRequestContentType$new() # V2AssemblyDatasetReportsRequestContentType | Return either assembly accessions, or complete assembly reports (Optional)
var_page_size <- 20 # integer | The maximum number of genome assembly reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeDatasetReportsByBiosampleId(var_biosample_ids, filters_reference_only = var_filters_reference_only, filters_assembly_source = var_filters_assembly_source, filters_has_annotation = var_filters_has_annotation, filters_exclude_paired_reports = var_filters_exclude_paired_reports, filters_exclude_atypical = var_filters_exclude_atypical, filters_assembly_version = var_filters_assembly_version, filters_assembly_level = var_filters_assembly_level, filters_first_release_date = var_filters_first_release_date, filters_last_release_date = var_filters_last_release_date, filters_search_text = var_filters_search_text, filters_is_metagenome_derived = var_filters_is_metagenome_derived, filters_is_type_material = var_filters_is_type_material, filters_is_ictv_exemplar = var_filters_is_ictv_exemplar, filters_exclude_multi_isolate = var_filters_exclude_multi_isolate, filters_type_material_category = var_filters_type_material_category, tax_exact_match = var_tax_exact_match, table_fields = var_table_fields, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, sort_field = var_sort_field, sort_direction = var_sort_direction, include_tabular_header = var_include_tabular_headerdata_file = "result.txt")
result <- api_instance$GenomeDatasetReportsByBiosampleId(var_biosample_ids, filters_reference_only = var_filters_reference_only, filters_assembly_source = var_filters_assembly_source, filters_has_annotation = var_filters_has_annotation, filters_exclude_paired_reports = var_filters_exclude_paired_reports, filters_exclude_atypical = var_filters_exclude_atypical, filters_assembly_version = var_filters_assembly_version, filters_assembly_level = var_filters_assembly_level, filters_first_release_date = var_filters_first_release_date, filters_last_release_date = var_filters_last_release_date, filters_search_text = var_filters_search_text, filters_is_metagenome_derived = var_filters_is_metagenome_derived, filters_is_type_material = var_filters_is_type_material, filters_is_ictv_exemplar = var_filters_is_ictv_exemplar, filters_exclude_multi_isolate = var_filters_exclude_multi_isolate, filters_type_material_category = var_filters_type_material_category, tax_exact_match = var_tax_exact_match, table_fields = var_table_fields, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, sort_field = var_sort_field, sort_direction = var_sort_direction, include_tabular_header = var_include_tabular_header)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **biosample_ids** | list( **character** )|  | 
 **filters_reference_only** | **character**| If true, only return reference genome assemblies | [optional] [default to FALSE]
 **filters_assembly_source** | [**V2AssemblyDatasetDescriptorsFilterAssemblySource**](.md)| Return only RefSeq (GCF_) or GenBank (GCA_) genome assemblies | [optional] 
 **filters_has_annotation** | **character**| Return only annotated genome assemblies | [optional] [default to FALSE]
 **filters_exclude_paired_reports** | **character**| For paired (GCA/GCF) records, only return the primary record | [optional] [default to FALSE]
 **filters_exclude_atypical** | **character**| If true, exclude atypical genomes, i.e. genomes that have assembly issues or are otherwise atypical | [optional] [default to FALSE]
 **filters_assembly_version** | [**V2AssemblyDatasetDescriptorsFilterAssemblyVersion**](.md)| Return all assemblies, including replaced and suppressed, or only current assemblies | [optional] 
 **filters_assembly_level** | list( [**V2reportsAssemblyLevel**](v2reportsAssemblyLevel.md) )| Only return genome assemblies that have one of the specified assembly levels. By default, do not filter. | [optional] 
 **filters_first_release_date** | **character**| Only return genome assemblies that were released on or after the specified date By default, do not filter. | [optional] 
 **filters_last_release_date** | **character**| Only return genome assemblies that were released on or before to the specified date By default, do not filter. | [optional] 
 **filters_search_text** | list( **character** )| Only return results whose fields contain the specified search terms in their taxon, infraspecific, assembly name or submitter fields By default, do not filter | [optional] 
 **filters_is_metagenome_derived** | [**V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter**](.md)|  | [optional] 
 **filters_is_type_material** | **character**| If true, include only type materials | [optional] [default to FALSE]
 **filters_is_ictv_exemplar** | **character**| If true, include only ICTV Exemplars | [optional] [default to FALSE]
 **filters_exclude_multi_isolate** | **character**| If true, exclude large multi-isolate projects | [optional] [default to FALSE]
 **filters_type_material_category** | [**V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory**](.md)|  | [optional] 
 **tax_exact_match** | **character**| If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. | [optional] [default to FALSE]
 **table_fields** | list( **character** )|  | [optional] 
 **returned_content** | [**V2AssemblyDatasetReportsRequestContentType**](.md)| Return either assembly accessions, or complete assembly reports | [optional] 
 **page_size** | **integer**| The maximum number of genome assembly reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 

### Return type

[**V2reportsAssemblyDataReportPage**](v2reportsAssemblyDataReportPage.md)

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

# **GenomeDatasetReportsByTaxon**
> V2reportsAssemblyDataReportPage GenomeDatasetReportsByTaxon(taxons, filters_reference_only = FALSE, filters_assembly_source = var.filters_assembly_source, filters_has_annotation = FALSE, filters_exclude_paired_reports = FALSE, filters_exclude_atypical = FALSE, filters_assembly_version = var.filters_assembly_version, filters_assembly_level = var.filters_assembly_level, filters_first_release_date = var.filters_first_release_date, filters_last_release_date = var.filters_last_release_date, filters_search_text = var.filters_search_text, filters_is_metagenome_derived = var.filters_is_metagenome_derived, filters_is_type_material = FALSE, filters_is_ictv_exemplar = FALSE, filters_exclude_multi_isolate = FALSE, filters_type_material_category = var.filters_type_material_category, tax_exact_match = FALSE, table_fields = var.table_fields, returned_content = var.returned_content, page_size = 20, page_token = var.page_token, sort_field = var.sort_field, sort_direction = var.sort_direction, include_tabular_header = var.include_tabular_header)

Get dataset reports by taxons

Get dataset reports by taxons.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get dataset reports by taxons
#
# prepare function argument(s)
var_taxons <- c("inner_example") # array[character] | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank
var_filters_reference_only <- FALSE # character | If true, only return reference genome assemblies (Optional)
var_filters_assembly_source <- v2AssemblyDatasetDescriptorsFilterAssemblySource$new() # V2AssemblyDatasetDescriptorsFilterAssemblySource | Return only RefSeq (GCF_) or GenBank (GCA_) genome assemblies (Optional)
var_filters_has_annotation <- FALSE # character | Return only annotated genome assemblies (Optional)
var_filters_exclude_paired_reports <- FALSE # character | For paired (GCA/GCF) records, only return the primary record (Optional)
var_filters_exclude_atypical <- FALSE # character | If true, exclude atypical genomes, i.e. genomes that have assembly issues or are otherwise atypical (Optional)
var_filters_assembly_version <- v2AssemblyDatasetDescriptorsFilterAssemblyVersion$new() # V2AssemblyDatasetDescriptorsFilterAssemblyVersion | Return all assemblies, including replaced and suppressed, or only current assemblies (Optional)
var_filters_assembly_level <- c(v2reportsAssemblyLevel$new()) # array[V2reportsAssemblyLevel] | Only return genome assemblies that have one of the specified assembly levels. By default, do not filter. (Optional)
var_filters_first_release_date <- "2015-01-10T00:00:00Z" # character | Only return genome assemblies that were released on or after the specified date By default, do not filter. (Optional)
var_filters_last_release_date <- "2021-01-10T00:00:00Z" # character | Only return genome assemblies that were released on or before to the specified date By default, do not filter. (Optional)
var_filters_search_text <- c("inner_example") # array[character] | Only return results whose fields contain the specified search terms in their taxon, infraspecific, assembly name or submitter fields By default, do not filter (Optional)
var_filters_is_metagenome_derived <- v2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter$new() # V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter |  (Optional)
var_filters_is_type_material <- FALSE # character | If true, include only type materials (Optional)
var_filters_is_ictv_exemplar <- FALSE # character | If true, include only ICTV Exemplars (Optional)
var_filters_exclude_multi_isolate <- FALSE # character | If true, exclude large multi-isolate projects (Optional)
var_filters_type_material_category <- v2AssemblyDatasetDescriptorsFilterTypeMaterialCategory$new() # V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory |  (Optional)
var_tax_exact_match <- FALSE # character | If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. (Optional)
var_table_fields <- c("inner_example") # array[character] |  (Optional)
var_returned_content <- v2AssemblyDatasetReportsRequestContentType$new() # V2AssemblyDatasetReportsRequestContentType | Return either assembly accessions, or complete assembly reports (Optional)
var_page_size <- 20 # integer | The maximum number of genome assembly reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeDatasetReportsByTaxon(var_taxons, filters_reference_only = var_filters_reference_only, filters_assembly_source = var_filters_assembly_source, filters_has_annotation = var_filters_has_annotation, filters_exclude_paired_reports = var_filters_exclude_paired_reports, filters_exclude_atypical = var_filters_exclude_atypical, filters_assembly_version = var_filters_assembly_version, filters_assembly_level = var_filters_assembly_level, filters_first_release_date = var_filters_first_release_date, filters_last_release_date = var_filters_last_release_date, filters_search_text = var_filters_search_text, filters_is_metagenome_derived = var_filters_is_metagenome_derived, filters_is_type_material = var_filters_is_type_material, filters_is_ictv_exemplar = var_filters_is_ictv_exemplar, filters_exclude_multi_isolate = var_filters_exclude_multi_isolate, filters_type_material_category = var_filters_type_material_category, tax_exact_match = var_tax_exact_match, table_fields = var_table_fields, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, sort_field = var_sort_field, sort_direction = var_sort_direction, include_tabular_header = var_include_tabular_headerdata_file = "result.txt")
result <- api_instance$GenomeDatasetReportsByTaxon(var_taxons, filters_reference_only = var_filters_reference_only, filters_assembly_source = var_filters_assembly_source, filters_has_annotation = var_filters_has_annotation, filters_exclude_paired_reports = var_filters_exclude_paired_reports, filters_exclude_atypical = var_filters_exclude_atypical, filters_assembly_version = var_filters_assembly_version, filters_assembly_level = var_filters_assembly_level, filters_first_release_date = var_filters_first_release_date, filters_last_release_date = var_filters_last_release_date, filters_search_text = var_filters_search_text, filters_is_metagenome_derived = var_filters_is_metagenome_derived, filters_is_type_material = var_filters_is_type_material, filters_is_ictv_exemplar = var_filters_is_ictv_exemplar, filters_exclude_multi_isolate = var_filters_exclude_multi_isolate, filters_type_material_category = var_filters_type_material_category, tax_exact_match = var_tax_exact_match, table_fields = var_table_fields, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, sort_field = var_sort_field, sort_direction = var_sort_direction, include_tabular_header = var_include_tabular_header)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxons** | list( **character** )| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 
 **filters_reference_only** | **character**| If true, only return reference genome assemblies | [optional] [default to FALSE]
 **filters_assembly_source** | [**V2AssemblyDatasetDescriptorsFilterAssemblySource**](.md)| Return only RefSeq (GCF_) or GenBank (GCA_) genome assemblies | [optional] 
 **filters_has_annotation** | **character**| Return only annotated genome assemblies | [optional] [default to FALSE]
 **filters_exclude_paired_reports** | **character**| For paired (GCA/GCF) records, only return the primary record | [optional] [default to FALSE]
 **filters_exclude_atypical** | **character**| If true, exclude atypical genomes, i.e. genomes that have assembly issues or are otherwise atypical | [optional] [default to FALSE]
 **filters_assembly_version** | [**V2AssemblyDatasetDescriptorsFilterAssemblyVersion**](.md)| Return all assemblies, including replaced and suppressed, or only current assemblies | [optional] 
 **filters_assembly_level** | list( [**V2reportsAssemblyLevel**](v2reportsAssemblyLevel.md) )| Only return genome assemblies that have one of the specified assembly levels. By default, do not filter. | [optional] 
 **filters_first_release_date** | **character**| Only return genome assemblies that were released on or after the specified date By default, do not filter. | [optional] 
 **filters_last_release_date** | **character**| Only return genome assemblies that were released on or before to the specified date By default, do not filter. | [optional] 
 **filters_search_text** | list( **character** )| Only return results whose fields contain the specified search terms in their taxon, infraspecific, assembly name or submitter fields By default, do not filter | [optional] 
 **filters_is_metagenome_derived** | [**V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter**](.md)|  | [optional] 
 **filters_is_type_material** | **character**| If true, include only type materials | [optional] [default to FALSE]
 **filters_is_ictv_exemplar** | **character**| If true, include only ICTV Exemplars | [optional] [default to FALSE]
 **filters_exclude_multi_isolate** | **character**| If true, exclude large multi-isolate projects | [optional] [default to FALSE]
 **filters_type_material_category** | [**V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory**](.md)|  | [optional] 
 **tax_exact_match** | **character**| If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. | [optional] [default to FALSE]
 **table_fields** | list( **character** )|  | [optional] 
 **returned_content** | [**V2AssemblyDatasetReportsRequestContentType**](.md)| Return either assembly accessions, or complete assembly reports | [optional] 
 **page_size** | **integer**| The maximum number of genome assembly reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 

### Return type

[**V2reportsAssemblyDataReportPage**](v2reportsAssemblyDataReportPage.md)

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

# **GenomeDatasetReportsByWgs**
> V2reportsAssemblyDataReportPage GenomeDatasetReportsByWgs(wgs_accessions, filters_reference_only = FALSE, filters_assembly_source = var.filters_assembly_source, filters_has_annotation = FALSE, filters_exclude_paired_reports = FALSE, filters_exclude_atypical = FALSE, filters_assembly_version = var.filters_assembly_version, filters_assembly_level = var.filters_assembly_level, filters_first_release_date = var.filters_first_release_date, filters_last_release_date = var.filters_last_release_date, filters_search_text = var.filters_search_text, filters_is_metagenome_derived = var.filters_is_metagenome_derived, filters_is_type_material = FALSE, filters_is_ictv_exemplar = FALSE, filters_exclude_multi_isolate = FALSE, filters_type_material_category = var.filters_type_material_category, tax_exact_match = FALSE, table_fields = var.table_fields, returned_content = var.returned_content, page_size = 20, page_token = var.page_token, sort_field = var.sort_field, sort_direction = var.sort_direction, include_tabular_header = var.include_tabular_header)

Get dataset reports by wgs accession

Get dataset reports by wgs accession.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get dataset reports by wgs accession
#
# prepare function argument(s)
var_wgs_accessions <- c("inner_example") # array[character] | 
var_filters_reference_only <- FALSE # character | If true, only return reference genome assemblies (Optional)
var_filters_assembly_source <- v2AssemblyDatasetDescriptorsFilterAssemblySource$new() # V2AssemblyDatasetDescriptorsFilterAssemblySource | Return only RefSeq (GCF_) or GenBank (GCA_) genome assemblies (Optional)
var_filters_has_annotation <- FALSE # character | Return only annotated genome assemblies (Optional)
var_filters_exclude_paired_reports <- FALSE # character | For paired (GCA/GCF) records, only return the primary record (Optional)
var_filters_exclude_atypical <- FALSE # character | If true, exclude atypical genomes, i.e. genomes that have assembly issues or are otherwise atypical (Optional)
var_filters_assembly_version <- v2AssemblyDatasetDescriptorsFilterAssemblyVersion$new() # V2AssemblyDatasetDescriptorsFilterAssemblyVersion | Return all assemblies, including replaced and suppressed, or only current assemblies (Optional)
var_filters_assembly_level <- c(v2reportsAssemblyLevel$new()) # array[V2reportsAssemblyLevel] | Only return genome assemblies that have one of the specified assembly levels. By default, do not filter. (Optional)
var_filters_first_release_date <- "2015-01-10T00:00:00Z" # character | Only return genome assemblies that were released on or after the specified date By default, do not filter. (Optional)
var_filters_last_release_date <- "2021-01-10T00:00:00Z" # character | Only return genome assemblies that were released on or before to the specified date By default, do not filter. (Optional)
var_filters_search_text <- c("inner_example") # array[character] | Only return results whose fields contain the specified search terms in their taxon, infraspecific, assembly name or submitter fields By default, do not filter (Optional)
var_filters_is_metagenome_derived <- v2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter$new() # V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter |  (Optional)
var_filters_is_type_material <- FALSE # character | If true, include only type materials (Optional)
var_filters_is_ictv_exemplar <- FALSE # character | If true, include only ICTV Exemplars (Optional)
var_filters_exclude_multi_isolate <- FALSE # character | If true, exclude large multi-isolate projects (Optional)
var_filters_type_material_category <- v2AssemblyDatasetDescriptorsFilterTypeMaterialCategory$new() # V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory |  (Optional)
var_tax_exact_match <- FALSE # character | If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. (Optional)
var_table_fields <- c("inner_example") # array[character] |  (Optional)
var_returned_content <- v2AssemblyDatasetReportsRequestContentType$new() # V2AssemblyDatasetReportsRequestContentType | Return either assembly accessions, or complete assembly reports (Optional)
var_page_size <- 20 # integer | The maximum number of genome assembly reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `AssemblyDatasetReportsRequest` call with more than `page_size` results. Use this token, along with the previous `AssemblyDatasetReportsRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_sort_field <- "sort_field_example" # character |  (Optional)
var_sort_direction <- v2SortDirection$new() # V2SortDirection |  (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader | Whether this request for tabular data should include the header row (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeDatasetReportsByWgs(var_wgs_accessions, filters_reference_only = var_filters_reference_only, filters_assembly_source = var_filters_assembly_source, filters_has_annotation = var_filters_has_annotation, filters_exclude_paired_reports = var_filters_exclude_paired_reports, filters_exclude_atypical = var_filters_exclude_atypical, filters_assembly_version = var_filters_assembly_version, filters_assembly_level = var_filters_assembly_level, filters_first_release_date = var_filters_first_release_date, filters_last_release_date = var_filters_last_release_date, filters_search_text = var_filters_search_text, filters_is_metagenome_derived = var_filters_is_metagenome_derived, filters_is_type_material = var_filters_is_type_material, filters_is_ictv_exemplar = var_filters_is_ictv_exemplar, filters_exclude_multi_isolate = var_filters_exclude_multi_isolate, filters_type_material_category = var_filters_type_material_category, tax_exact_match = var_tax_exact_match, table_fields = var_table_fields, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, sort_field = var_sort_field, sort_direction = var_sort_direction, include_tabular_header = var_include_tabular_headerdata_file = "result.txt")
result <- api_instance$GenomeDatasetReportsByWgs(var_wgs_accessions, filters_reference_only = var_filters_reference_only, filters_assembly_source = var_filters_assembly_source, filters_has_annotation = var_filters_has_annotation, filters_exclude_paired_reports = var_filters_exclude_paired_reports, filters_exclude_atypical = var_filters_exclude_atypical, filters_assembly_version = var_filters_assembly_version, filters_assembly_level = var_filters_assembly_level, filters_first_release_date = var_filters_first_release_date, filters_last_release_date = var_filters_last_release_date, filters_search_text = var_filters_search_text, filters_is_metagenome_derived = var_filters_is_metagenome_derived, filters_is_type_material = var_filters_is_type_material, filters_is_ictv_exemplar = var_filters_is_ictv_exemplar, filters_exclude_multi_isolate = var_filters_exclude_multi_isolate, filters_type_material_category = var_filters_type_material_category, tax_exact_match = var_tax_exact_match, table_fields = var_table_fields, returned_content = var_returned_content, page_size = var_page_size, page_token = var_page_token, sort_field = var_sort_field, sort_direction = var_sort_direction, include_tabular_header = var_include_tabular_header)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wgs_accessions** | list( **character** )|  | 
 **filters_reference_only** | **character**| If true, only return reference genome assemblies | [optional] [default to FALSE]
 **filters_assembly_source** | [**V2AssemblyDatasetDescriptorsFilterAssemblySource**](.md)| Return only RefSeq (GCF_) or GenBank (GCA_) genome assemblies | [optional] 
 **filters_has_annotation** | **character**| Return only annotated genome assemblies | [optional] [default to FALSE]
 **filters_exclude_paired_reports** | **character**| For paired (GCA/GCF) records, only return the primary record | [optional] [default to FALSE]
 **filters_exclude_atypical** | **character**| If true, exclude atypical genomes, i.e. genomes that have assembly issues or are otherwise atypical | [optional] [default to FALSE]
 **filters_assembly_version** | [**V2AssemblyDatasetDescriptorsFilterAssemblyVersion**](.md)| Return all assemblies, including replaced and suppressed, or only current assemblies | [optional] 
 **filters_assembly_level** | list( [**V2reportsAssemblyLevel**](v2reportsAssemblyLevel.md) )| Only return genome assemblies that have one of the specified assembly levels. By default, do not filter. | [optional] 
 **filters_first_release_date** | **character**| Only return genome assemblies that were released on or after the specified date By default, do not filter. | [optional] 
 **filters_last_release_date** | **character**| Only return genome assemblies that were released on or before to the specified date By default, do not filter. | [optional] 
 **filters_search_text** | list( **character** )| Only return results whose fields contain the specified search terms in their taxon, infraspecific, assembly name or submitter fields By default, do not filter | [optional] 
 **filters_is_metagenome_derived** | [**V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter**](.md)|  | [optional] 
 **filters_is_type_material** | **character**| If true, include only type materials | [optional] [default to FALSE]
 **filters_is_ictv_exemplar** | **character**| If true, include only ICTV Exemplars | [optional] [default to FALSE]
 **filters_exclude_multi_isolate** | **character**| If true, exclude large multi-isolate projects | [optional] [default to FALSE]
 **filters_type_material_category** | [**V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory**](.md)|  | [optional] 
 **tax_exact_match** | **character**| If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. | [optional] [default to FALSE]
 **table_fields** | list( **character** )|  | [optional] 
 **returned_content** | [**V2AssemblyDatasetReportsRequestContentType**](.md)| Return either assembly accessions, or complete assembly reports | [optional] 
 **page_size** | **integer**| The maximum number of genome assembly reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;AssemblyDatasetReportsRequest&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyDatasetReportsRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **sort_field** | **character**|  | [optional] 
 **sort_direction** | [**V2SortDirection**](.md)|  | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)| Whether this request for tabular data should include the header row | [optional] 

### Return type

[**V2reportsAssemblyDataReportPage**](v2reportsAssemblyDataReportPage.md)

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

# **GenomeDownloadSummary**
> V2DownloadSummary GenomeDownloadSummary(accessions, chromosomes = var.chromosomes, include_annotation_type = var.include_annotation_type)

Preview genome dataset download

Get a download summary by accession in a JSON output format.

### Example
```R
library(ncbiopenapi)

# Preview genome dataset download
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | NCBI genome assembly accessions
var_chromosomes <- c("inner_example") # array[character] | The default setting is all chromosome. Specify individual chromosome by string (1,2,MT or chr1,chr2.chrMT). Unplaced sequences are treated like their own chromosome ('Un'). The filter only applies to fasta sequence. (Optional)
var_include_annotation_type <- c(v2AnnotationForAssemblyType$new()) # array[V2AnnotationForAssemblyType] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeDownloadSummary(var_accessions, chromosomes = var_chromosomes, include_annotation_type = var_include_annotation_typedata_file = "result.txt")
result <- api_instance$GenomeDownloadSummary(var_accessions, chromosomes = var_chromosomes, include_annotation_type = var_include_annotation_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| NCBI genome assembly accessions | 
 **chromosomes** | list( **character** )| The default setting is all chromosome. Specify individual chromosome by string (1,2,MT or chr1,chr2.chrMT). Unplaced sequences are treated like their own chromosome (&#39;Un&#39;). The filter only applies to fasta sequence. | [optional] 
 **include_annotation_type** | list( [**V2AnnotationForAssemblyType**](v2AnnotationForAssemblyType.md) )| Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 

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

# **GenomeDownloadSummaryByPost**
> V2DownloadSummary GenomeDownloadSummaryByPost(v2_assembly_dataset_request)

Preview genome dataset download by POST

The 'GET' version of download summary is limited by the size of the GET URL (2KB, which works out to about 140 genomic accessions).  The POST operation is provided to allow users to supply a larger number of accessions in a single request.

### Example
```R
library(ncbiopenapi)

# Preview genome dataset download by POST
#
# prepare function argument(s)
var_v2_assembly_dataset_request <- v2AssemblyDatasetRequest$new(c("accessions_example"), c("chromosomes_example"), c(v2AnnotationForAssemblyType$new()), v2AssemblyDatasetRequestResolution$new(), "include_tsv_example") # V2AssemblyDatasetRequest | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeDownloadSummaryByPost(var_v2_assembly_dataset_requestdata_file = "result.txt")
result <- api_instance$GenomeDownloadSummaryByPost(var_v2_assembly_dataset_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_assembly_dataset_request** | [**V2AssemblyDatasetRequest**](V2AssemblyDatasetRequest.md)|  | 

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

# **GenomeLinksByAccession**
> V2AssemblyLinksReply GenomeLinksByAccession(accessions)

Get assembly links by accessions

Get links to available assembly resources by accessions.

### Example
```R
library(ncbiopenapi)

# Get assembly links by accessions
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | NCBI genome assembly accessions, limited to 1000

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeLinksByAccession(var_accessionsdata_file = "result.txt")
result <- api_instance$GenomeLinksByAccession(var_accessions)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| NCBI genome assembly accessions, limited to 1000 | 

### Return type

[**V2AssemblyLinksReply**](v2AssemblyLinksReply.md)

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

# **GenomeLinksByAccessionByPost**
> V2AssemblyLinksReply GenomeLinksByAccessionByPost(v2_assembly_links_request)

Get assembly links by accessions

Get links to available assembly resources by accessions.

### Example
```R
library(ncbiopenapi)

# Get assembly links by accessions
#
# prepare function argument(s)
var_v2_assembly_links_request <- v2AssemblyLinksRequest$new(c("accessions_example")) # V2AssemblyLinksRequest | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeLinksByAccessionByPost(var_v2_assembly_links_requestdata_file = "result.txt")
result <- api_instance$GenomeLinksByAccessionByPost(var_v2_assembly_links_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_assembly_links_request** | [**V2AssemblyLinksRequest**](V2AssemblyLinksRequest.md)|  | 

### Return type

[**V2AssemblyLinksReply**](v2AssemblyLinksReply.md)

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

# **GenomeSequenceReport**
> V2SequenceReportPage GenomeSequenceReport(accession, chromosomes = var.chromosomes, role_filters = var.role_filters, table_fields = var.table_fields, count_assembly_unplaced = FALSE, page_size = 20, page_token = var.page_token, include_tabular_header = var.include_tabular_header)

Get sequence reports by accessions

Get a sequence report by accession.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get sequence reports by accessions
#
# prepare function argument(s)
var_accession <- "GCF_000001635.27" # character | 
var_chromosomes <- c("inner_example") # array[character] |  (Optional)
var_role_filters <- c("inner_example") # array[character] |  (Optional)
var_table_fields <- c("inner_example") # array[character] |  (Optional)
var_count_assembly_unplaced <- FALSE # character |  (Optional)
var_page_size <- 20 # integer | The maximum number of genome assemblies to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from an `GetSequenceReports` call with more than `page_size` results. Use this token, along with the previous `AssemblyMetadataRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)
var_include_tabular_header <- v2IncludeTabularHeader$new() # V2IncludeTabularHeader |  (Optional)

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeSequenceReport(var_accession, chromosomes = var_chromosomes, role_filters = var_role_filters, table_fields = var_table_fields, count_assembly_unplaced = var_count_assembly_unplaced, page_size = var_page_size, page_token = var_page_token, include_tabular_header = var_include_tabular_headerdata_file = "result.txt")
result <- api_instance$GenomeSequenceReport(var_accession, chromosomes = var_chromosomes, role_filters = var_role_filters, table_fields = var_table_fields, count_assembly_unplaced = var_count_assembly_unplaced, page_size = var_page_size, page_token = var_page_token, include_tabular_header = var_include_tabular_header)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession** | **character**|  | 
 **chromosomes** | list( **character** )|  | [optional] 
 **role_filters** | list( **character** )|  | [optional] 
 **table_fields** | list( **character** )|  | [optional] 
 **count_assembly_unplaced** | **character**|  | [optional] [default to FALSE]
 **page_size** | **integer**| The maximum number of genome assemblies to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from an &#x60;GetSequenceReports&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;AssemblyMetadataRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 
 **include_tabular_header** | [**V2IncludeTabularHeader**](.md)|  | [optional] 

### Return type

[**V2SequenceReportPage**](v2SequenceReportPage.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, text/tab-separated-values, application/x-ndjson

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **GenomeSequenceReportByPost**
> V2SequenceReportPage GenomeSequenceReportByPost(v2_assembly_sequence_reports_request)

Get sequence reports by accessions

Get a sequence report by accession.  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get sequence reports by accessions
#
# prepare function argument(s)
var_v2_assembly_sequence_reports_request <- v2AssemblySequenceReportsRequest$new("accession_example", c("chromosomes_example"), c("role_filters_example"), c("table_fields_example"), "count_assembly_unplaced_example", 123, "page_token_example", v2IncludeTabularHeader$new(), "table_format_example") # V2AssemblySequenceReportsRequest | 

api_instance <- GenomeApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomeSequenceReportByPost(var_v2_assembly_sequence_reports_requestdata_file = "result.txt")
result <- api_instance$GenomeSequenceReportByPost(var_v2_assembly_sequence_reports_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_assembly_sequence_reports_request** | [**V2AssemblySequenceReportsRequest**](V2AssemblySequenceReportsRequest.md)|  | 

### Return type

[**V2SequenceReportPage**](v2SequenceReportPage.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, text/tab-separated-values, application/x-ndjson

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

