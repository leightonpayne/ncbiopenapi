# ncbiopenapi::V2TaxonomyNode


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tax_id** | **integer** |  | [optional] 
**organism_name** | **character** |  | [optional] 
**common_name** | **character** |  | [optional] 
**genbank_common_name** | **character** |  | [optional] 
**acronyms** | **array[character]** |  | [optional] 
**genbank_acronym** | **character** |  | [optional] 
**blast_name** | **character** |  | [optional] 
**lineage** | **array[integer]** |  | [optional] 
**children** | **array[integer]** |  | [optional] 
**descendent_with_described_species_names_count** | **integer** |  | [optional] 
**rank** | [**V2reportsRankType**](v2reportsRankType.md) |  | [optional] [Enum: ] 
**has_described_species_name** | **character** |  | [optional] 
**counts** | [**array[V2TaxonomyNodeCountByType]**](v2TaxonomyNodeCountByType.md) |  | [optional] 
**min_ord** | **integer** |  | [optional] 
**max_ord** | **integer** |  | [optional] 
**extinct** | **character** |  | [optional] 
**genomic_moltype** | **character** |  | [optional] 


