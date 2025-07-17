# BioSampleApi

All URIs are relative to *https://api.ncbi.nlm.nih.gov/datasets/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BioSampleDatasetReport**](BioSampleApi.md#BioSampleDatasetReport) | **GET** /biosample/accession/{accessions}/biosample_report | Get BioSample dataset reports by accession(s)


# **BioSampleDatasetReport**
> V2reportsBioSampleDataReportPage BioSampleDatasetReport(accessions)

Get BioSample dataset reports by accession(s)

Get BioSample dataset reports by accession(s).  By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get BioSample dataset reports by accession(s)
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | 

api_instance <- BioSampleApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$BioSampleDatasetReport(var_accessionsdata_file = "result.txt")
result <- api_instance$BioSampleDatasetReport(var_accessions)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )|  | 

### Return type

[**V2reportsBioSampleDataReportPage**](v2reportsBioSampleDataReportPage.md)

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

