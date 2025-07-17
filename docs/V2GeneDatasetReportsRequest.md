# ncbiopenapi::V2GeneDatasetReportsRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**returned_content** | [**V2GeneDatasetReportsRequestContentType**](v2GeneDatasetReportsRequestContentType.md) |  | [optional] [Enum: ] 
**gene_ids** | **array[integer]** |  | [optional] 
**accessions** | **array[character]** |  | [optional] 
**symbols_for_taxon** | [**V2GeneDatasetReportsRequestSymbolsForTaxon**](v2GeneDatasetReportsRequestSymbolsForTaxon.md) |  | [optional] 
**taxon** | **character** |  | [optional] 
**locus_tags** | **array[character]** |  | [optional] 
**table_fields** | **array[character]** |  | [optional] 
**table_format** | **character** |  | [optional] 
**include_tabular_header** | [**V2IncludeTabularHeader**](v2IncludeTabularHeader.md) |  | [optional] [Enum: ] 
**page_size** | **integer** |  | [optional] 
**page_token** | **character** |  | [optional] 
**query** | **character** |  | [optional] 
**types** | [**array[V2GeneType]**](v2GeneType.md) |  | [optional] 
**accession_filter** | **array[character]** |  | [optional] 
**tax_search_subtree** | **character** |  | [optional] 
**sort** | [**array[V2SortField]**](v2SortField.md) |  | [optional] 


