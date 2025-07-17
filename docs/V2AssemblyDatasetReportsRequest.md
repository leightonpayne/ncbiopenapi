# ncbiopenapi::V2AssemblyDatasetReportsRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**taxons** | **array[character]** |  | [optional] 
**bioprojects** | **array[character]** |  | [optional] 
**biosample_ids** | **array[character]** |  | [optional] 
**assembly_names** | **array[character]** |  | [optional] 
**wgs_accessions** | **array[character]** |  | [optional] 
**accessions** | **array[character]** |  | [optional] 
**filters** | [**V2AssemblyDatasetDescriptorsFilter**](v2AssemblyDatasetDescriptorsFilter.md) |  | [optional] 
**tax_exact_match** | **character** |  | [optional] 
**chromosomes** | **array[character]** |  | [optional] 
**table_fields** | **array[character]** |  | [optional] 
**returned_content** | [**V2AssemblyDatasetReportsRequestContentType**](v2AssemblyDatasetReportsRequestContentType.md) |  | [optional] [Enum: ] 
**page_size** | **integer** |  | [optional] 
**page_token** | **character** |  | [optional] 
**sort** | [**array[V2SortField]**](v2SortField.md) |  | [optional] 
**include_tabular_header** | [**V2IncludeTabularHeader**](v2IncludeTabularHeader.md) |  | [optional] [Enum: ] 
**table_format** | **character** |  | [optional] 


