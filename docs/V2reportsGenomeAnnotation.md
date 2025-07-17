# ncbiopenapi::V2reportsGenomeAnnotation


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gene_id** | **character** |  | [optional] 
**symbol** | **character** |  | [optional] 
**description** | **character** |  | [optional] 
**name** | **character** |  | [optional] 
**tax_id** | **character** |  | [optional] 
**taxname** | **character** |  | [optional] 
**common_name** | **character** |  | [optional] 
**type** | [**V2reportsGeneType**](v2reportsGeneType.md) |  | [optional] [Enum: ] 
**gene_type** | **character** |  | [optional] 
**rna_type** | [**V2reportsRnaType**](v2reportsRnaType.md) |  | [optional] [Enum: ] 
**orientation** | [**V2reportsOrientation**](v2reportsOrientation.md) |  | [optional] [Enum: ] 
**locus_tag** | **character** |  | [optional] 
**reference_standards** | [**array[V2reportsGenomicRegion]**](v2reportsGenomicRegion.md) |  | [optional] 
**genomic_regions** | [**array[V2reportsGenomicRegion]**](v2reportsGenomicRegion.md) |  | [optional] 
**transcripts** | [**array[V2reportsTranscript]**](v2reportsTranscript.md) |  | [optional] 
**proteins** | [**array[V2reportsProtein]**](v2reportsProtein.md) |  | [optional] 
**chromosomes** | **array[character]** |  | [optional] 
**swiss_prot_accessions** | **array[character]** |  | [optional] 
**ensembl_gene_ids** | **array[character]** |  | [optional] 
**omim_ids** | **array[character]** |  | [optional] 
**synonyms** | **array[character]** |  | [optional] 
**annotations** | [**array[V2reportsAnnotation]**](v2reportsAnnotation.md) |  | [optional] 


