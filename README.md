# ncbiopenapi

R API client for the NCBI Datasets API v2

## ⚠️ Important Disclaimer

**This package is almost 100% auto-generated code with no guarantees of functionality.** 

This R package was automatically generated using [OpenAPI Generator](https://openapi-generator.tech) from the NCBI Datasets API specification. While the code follows standard patterns and conventions, it has not been extensively tested or validated. Users should:

- Test thoroughly before using in production environments
- Expect potential bugs, missing features, or breaking changes
- Consider this package experimental and use at your own risk

For a more stable experience, use the [official NCBI Datasets tools](https://www.ncbi.nlm.nih.gov/datasets).

## About NCBI Datasets API

NCBI Datasets is a resource that lets you easily gather data from NCBI. The Datasets version 2 API is still in alpha, and NCBI is updating it frequently to add new functionality, fix bugs, and enhance usability.

## Package Information

- **API version**: v2
- **Package version**: 1.0.0
- **Generated with**: OpenAPI Generator v7.14.0
- **Generator**: org.openapitools.codegen.languages.RClientCodegen
- **License**: Unlicense

## Installation

### Install from GitHub

```R
# Install devtools if you haven't already
install.packages("devtools")

# Install the package from GitHub
devtools::install_github("leightonpayne/ncbiopenapi")
```

### Manual Installation

If you prefer to build from source:

```bash
git clone https://github.com/leightonpayne/ncbiopenapi.git
cd ncbiopenapi
R CMD build .
R CMD INSTALL ncbiopenapi_1.0.0.tar.gz
```

## Available APIs

This package provides R bindings for the following NCBI Datasets API endpoints:

- **BioSample API** - Access BioSample dataset reports
- **Gene API** - Retrieve gene information, datasets, and reports
- **Genome API** - Access genome assemblies, annotations, and sequence data
- **Organelle API** - Download organelle data packages
- **Prokaryote API** - Access prokaryote gene datasets
- **Taxonomy API** - Retrieve taxonomic information and metadata
- **Virus API** - Access virus genome and protein datasets

**Base URL**: `https://api.ncbi.nlm.nih.gov/datasets/v2`

For detailed endpoint documentation, see the `docs/` directory in this package. Note that these docs are auto-generated and may not reflect the current API state.

## Authentication

The API supports two authentication methods:
- **Query parameter**: `api_key` in URL
- **HTTP header**: `api-key` header

---

## Documentation

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BioSampleApi* | [**BioSampleDatasetReport**](docs/BioSampleApi.md#BioSampleDatasetReport) | **GET** /biosample/accession/{accessions}/biosample_report | Get BioSample dataset reports by accession(s)
*GeneApi* | [**DownloadGenePackage**](docs/GeneApi.md#DownloadGenePackage) | **GET** /gene/id/{gene_ids}/download | Get a gene dataset by gene ID
*GeneApi* | [**DownloadGenePackagePost**](docs/GeneApi.md#DownloadGenePackagePost) | **POST** /gene/download | Get a gene dataset by POST
*GeneApi* | [**GeneChromosomeSummary**](docs/GeneApi.md#GeneChromosomeSummary) | **GET** /gene/taxon/{taxon}/annotation/{annotation_name}/chromosome_summary | Get summary of chromosomes for a particular taxon's annotation
*GeneApi* | [**GeneCountsForTaxon**](docs/GeneApi.md#GeneCountsForTaxon) | **GET** /gene/taxon/{taxon}/counts | Get gene counts by taxonomic identifier
*GeneApi* | [**GeneCountsForTaxonByPost**](docs/GeneApi.md#GeneCountsForTaxonByPost) | **POST** /gene/taxon/counts | Get gene counts by taxonomic identifier
*GeneApi* | [**GeneDatasetReport**](docs/GeneApi.md#GeneDatasetReport) | **POST** /gene/dataset_report | Get gene dataset report as JSON
*GeneApi* | [**GeneDatasetReportByAccession**](docs/GeneApi.md#GeneDatasetReportByAccession) | **GET** /gene/accession/{accessions}/dataset_report | Get dataset reports by accession IDs
*GeneApi* | [**GeneDatasetReportByTaxAndSymbol**](docs/GeneApi.md#GeneDatasetReportByTaxAndSymbol) | **GET** /gene/symbol/{symbols}/taxon/{taxon}/dataset_report | Get dataset reports by taxons.
*GeneApi* | [**GeneDatasetReportsById**](docs/GeneApi.md#GeneDatasetReportsById) | **GET** /gene/id/{gene_ids}/dataset_report | Get dataset reports by gene IDs.
*GeneApi* | [**GeneDatasetReportsByLocusTag**](docs/GeneApi.md#GeneDatasetReportsByLocusTag) | **GET** /gene/locus_tag/{locus_tags}/dataset_report | Get gene dataset reports by locus tag
*GeneApi* | [**GeneDatasetReportsByTaxon**](docs/GeneApi.md#GeneDatasetReportsByTaxon) | **GET** /gene/taxon/{taxon}/dataset_report | Get gene dataset reports by taxonomic identifier
*GeneApi* | [**GeneDownloadSummaryById**](docs/GeneApi.md#GeneDownloadSummaryById) | **GET** /gene/id/{gene_ids}/download_summary | Get gene download summary by GeneID
*GeneApi* | [**GeneDownloadSummaryByPost**](docs/GeneApi.md#GeneDownloadSummaryByPost) | **POST** /gene/download_summary | Get gene download summary
*GeneApi* | [**GeneLinksById**](docs/GeneApi.md#GeneLinksById) | **GET** /gene/id/{gene_ids}/links | Get gene links by gene ID
*GeneApi* | [**GeneLinksByIdByPost**](docs/GeneApi.md#GeneLinksByIdByPost) | **POST** /gene/links | Get gene links by gene ID
*GeneApi* | [**GeneMetadataByAccession**](docs/GeneApi.md#GeneMetadataByAccession) | **GET** /gene/accession/{accessions} | Get gene metadata by RefSeq Accession
*GeneApi* | [**GeneMetadataByPost**](docs/GeneApi.md#GeneMetadataByPost) | **POST** /gene | Get gene metadata as JSON
*GeneApi* | [**GeneMetadataByTaxAndSymbol**](docs/GeneApi.md#GeneMetadataByTaxAndSymbol) | **GET** /gene/symbol/{symbols}/taxon/{taxon} | Get gene metadata by gene symbol
*GeneApi* | [**GeneOrthologsById**](docs/GeneApi.md#GeneOrthologsById) | **GET** /gene/id/{gene_id}/orthologs | Get gene orthologs by gene ID
*GeneApi* | [**GeneOrthologsByPost**](docs/GeneApi.md#GeneOrthologsByPost) | **POST** /gene/orthologs | Get gene orthologs by gene ID
*GeneApi* | [**GeneProductReport**](docs/GeneApi.md#GeneProductReport) | **POST** /gene/product_report | Get gene product reports as JSON
*GeneApi* | [**GeneProductReportByAccession**](docs/GeneApi.md#GeneProductReportByAccession) | **GET** /gene/accession/{accessions}/product_report | Get gene product reports by accession IDs
*GeneApi* | [**GeneProductReportByTaxAndSymbol**](docs/GeneApi.md#GeneProductReportByTaxAndSymbol) | **GET** /gene/symbol/{symbols}/taxon/{taxon}/product_report | Get product reports by taxon.
*GeneApi* | [**GeneProductReportsById**](docs/GeneApi.md#GeneProductReportsById) | **GET** /gene/id/{gene_ids}/product_report | Get gene product reports by gene IDs.
*GeneApi* | [**GeneProductReportsByLocusTags**](docs/GeneApi.md#GeneProductReportsByLocusTags) | **GET** /gene/locus_tag/{locus_tags}/product_report | Get gene product reports by locus tags
*GeneApi* | [**GeneProductReportsByTaxon**](docs/GeneApi.md#GeneProductReportsByTaxon) | **GET** /gene/taxon/{taxon}/product_report | Get gene product reports by taxonomic identifier
*GeneApi* | [**GeneReportsById**](docs/GeneApi.md#GeneReportsById) | **GET** /gene/id/{gene_ids} | Get gene reports by GeneID
*GeneApi* | [**GeneReportsByTaxon**](docs/GeneApi.md#GeneReportsByTaxon) | **GET** /gene/taxon/{taxon} | Get gene reports by taxonomic identifier
*GenomeApi* | [**AnnotationReportFacetsByAccession**](docs/GenomeApi.md#AnnotationReportFacetsByAccession) | **GET** /genome/accession/{accession}/annotation_summary | Get genome annotation report summary information
*GenomeApi* | [**AnnotationReportFacetsByPost**](docs/GenomeApi.md#AnnotationReportFacetsByPost) | **POST** /genome/annotation_summary | Get genome annotation report summary information
*GenomeApi* | [**AssemblyAccessionsForSequenceAccession**](docs/GenomeApi.md#AssemblyAccessionsForSequenceAccession) | **GET** /genome/sequence_accession/{accession}/sequence_assemblies | Get assembly accessions for a sequence accession
*GenomeApi* | [**AssemblyAccessionsForSequenceAccessionByPost**](docs/GenomeApi.md#AssemblyAccessionsForSequenceAccessionByPost) | **POST** /genome/sequence_assemblies | Get assembly accessions for a sequence accession
*GenomeApi* | [**AssemblyRevisionHistoryByGet**](docs/GenomeApi.md#AssemblyRevisionHistoryByGet) | **GET** /genome/accession/{accession}/revision_history | Get revision history for assembly by accession
*GenomeApi* | [**AssemblyRevisionHistoryByPost**](docs/GenomeApi.md#AssemblyRevisionHistoryByPost) | **POST** /genome/revision_history | Get revision history for assembly by accession
*GenomeApi* | [**CheckAssemblyAvailability**](docs/GenomeApi.md#CheckAssemblyAvailability) | **GET** /genome/accession/{accessions}/check | Check the validity of genome accessions
*GenomeApi* | [**CheckAssemblyAvailabilityPost**](docs/GenomeApi.md#CheckAssemblyAvailabilityPost) | **POST** /genome/check | Check the validity of many genome accessions in a single request
*GenomeApi* | [**CheckmHistogramByTaxon**](docs/GenomeApi.md#CheckmHistogramByTaxon) | **GET** /genome/taxon/{species_taxon}/checkm_histogram | Get CheckM histogram by species taxon
*GenomeApi* | [**CheckmHistogramByTaxonByPost**](docs/GenomeApi.md#CheckmHistogramByTaxonByPost) | **POST** /genome/checkm_histogram | Get CheckM histogram by species taxon
*GenomeApi* | [**DownloadAssemblyPackage**](docs/GenomeApi.md#DownloadAssemblyPackage) | **GET** /genome/accession/{accessions}/download | Get a genome dataset by accession
*GenomeApi* | [**DownloadAssemblyPackagePost**](docs/GenomeApi.md#DownloadAssemblyPackagePost) | **POST** /genome/download | Get a genome dataset by post
*GenomeApi* | [**DownloadGenomeAnnotationPackage**](docs/GenomeApi.md#DownloadGenomeAnnotationPackage) | **GET** /genome/accession/{accession}/annotation_report/download | Get an annotation report dataset by accession
*GenomeApi* | [**DownloadGenomeAnnotationPackageByPost**](docs/GenomeApi.md#DownloadGenomeAnnotationPackageByPost) | **POST** /genome/annotation_report/download | Get an annotation report dataset by accession
*GenomeApi* | [**GenomeAnnotationDownloadSummary**](docs/GenomeApi.md#GenomeAnnotationDownloadSummary) | **GET** /genome/accession/{accession}/annotation_report/download_summary | Preview feature dataset download
*GenomeApi* | [**GenomeAnnotationDownloadSummaryByPost**](docs/GenomeApi.md#GenomeAnnotationDownloadSummaryByPost) | **POST** /genome/annotation_report/download_summary | Preview feature download by POST
*GenomeApi* | [**GenomeAnnotationReport**](docs/GenomeApi.md#GenomeAnnotationReport) | **GET** /genome/accession/{accession}/annotation_report | Get genome annotation reports by genome accession
*GenomeApi* | [**GenomeAnnotationReportByPost**](docs/GenomeApi.md#GenomeAnnotationReportByPost) | **POST** /genome/annotation_report | Get genome annotation reports by genome accession
*GenomeApi* | [**GenomeDatasetReport**](docs/GenomeApi.md#GenomeDatasetReport) | **GET** /genome/accession/{accessions}/dataset_report | Get dataset reports by accessions
*GenomeApi* | [**GenomeDatasetReportByPost**](docs/GenomeApi.md#GenomeDatasetReportByPost) | **POST** /genome/dataset_report | Get dataset reports by accessions
*GenomeApi* | [**GenomeDatasetReportsByAssemblyName**](docs/GenomeApi.md#GenomeDatasetReportsByAssemblyName) | **GET** /genome/assembly_name/{assembly_names}/dataset_report | Get dataset reports by assembly name (exact)
*GenomeApi* | [**GenomeDatasetReportsByBioproject**](docs/GenomeApi.md#GenomeDatasetReportsByBioproject) | **GET** /genome/bioproject/{bioprojects}/dataset_report | Get dataset reports by bioproject
*GenomeApi* | [**GenomeDatasetReportsByBiosampleId**](docs/GenomeApi.md#GenomeDatasetReportsByBiosampleId) | **GET** /genome/biosample/{biosample_ids}/dataset_report | Get dataset reports by biosample id
*GenomeApi* | [**GenomeDatasetReportsByTaxon**](docs/GenomeApi.md#GenomeDatasetReportsByTaxon) | **GET** /genome/taxon/{taxons}/dataset_report | Get dataset reports by taxons
*GenomeApi* | [**GenomeDatasetReportsByWgs**](docs/GenomeApi.md#GenomeDatasetReportsByWgs) | **GET** /genome/wgs/{wgs_accessions}/dataset_report | Get dataset reports by wgs accession
*GenomeApi* | [**GenomeDownloadSummary**](docs/GenomeApi.md#GenomeDownloadSummary) | **GET** /genome/accession/{accessions}/download_summary | Preview genome dataset download
*GenomeApi* | [**GenomeDownloadSummaryByPost**](docs/GenomeApi.md#GenomeDownloadSummaryByPost) | **POST** /genome/download_summary | Preview genome dataset download by POST
*GenomeApi* | [**GenomeLinksByAccession**](docs/GenomeApi.md#GenomeLinksByAccession) | **GET** /genome/accession/{accessions}/links | Get assembly links by accessions
*GenomeApi* | [**GenomeLinksByAccessionByPost**](docs/GenomeApi.md#GenomeLinksByAccessionByPost) | **POST** /genome/links | Get assembly links by accessions
*GenomeApi* | [**GenomeSequenceReport**](docs/GenomeApi.md#GenomeSequenceReport) | **GET** /genome/accession/{accession}/sequence_reports | Get sequence reports by accessions
*GenomeApi* | [**GenomeSequenceReportByPost**](docs/GenomeApi.md#GenomeSequenceReportByPost) | **POST** /genome/sequence_reports | Get sequence reports by accessions
*OrganelleApi* | [**DownloadOrganellePackage**](docs/OrganelleApi.md#DownloadOrganellePackage) | **GET** /organelle/accession/{accessions}/download | Get a organelle data package by accesions
*OrganelleApi* | [**DownloadOrganellePackageByPost**](docs/OrganelleApi.md#DownloadOrganellePackageByPost) | **POST** /organelle/download | Get a organelle data package by post
*OrganelleApi* | [**OrganelleDatareportByAccession**](docs/OrganelleApi.md#OrganelleDatareportByAccession) | **GET** /organelle/accessions/{accessions}/dataset_report | Get Organelle dataset report by accession
*OrganelleApi* | [**OrganelleDatareportByPost**](docs/OrganelleApi.md#OrganelleDatareportByPost) | **POST** /organelle/dataset_report | Get Organelle dataset report by http post
*OrganelleApi* | [**OrganelleDatareportByTaxon**](docs/OrganelleApi.md#OrganelleDatareportByTaxon) | **GET** /organelle/taxon/{taxons}/dataset_report | Get Organelle dataset report by taxons
*ProkaryoteApi* | [**DownloadProkaryoteGenePackage**](docs/ProkaryoteApi.md#DownloadProkaryoteGenePackage) | **GET** /protein/accession/{accessions}/download | Get a prokaryote gene dataset by RefSeq protein accession
*ProkaryoteApi* | [**DownloadProkaryoteGenePackagePost**](docs/ProkaryoteApi.md#DownloadProkaryoteGenePackagePost) | **POST** /protein/accession/download | Get a prokaryote gene dataset by RefSeq protein accession by POST
*TaxonomyApi* | [**DownloadTaxonomyPackage**](docs/TaxonomyApi.md#DownloadTaxonomyPackage) | **GET** /taxonomy/taxon/{tax_ids}/download | Get a taxonomy data package by tax ID
*TaxonomyApi* | [**DownloadTaxonomyPackageByPost**](docs/TaxonomyApi.md#DownloadTaxonomyPackageByPost) | **POST** /taxonomy/download | Get a taxonomy data package by tax_id
*TaxonomyApi* | [**TaxNameQuery**](docs/TaxonomyApi.md#TaxNameQuery) | **GET** /taxonomy/taxon_suggest/{taxon_query} | Get a list of taxonomy names and IDs given a partial taxonomic name
*TaxonomyApi* | [**TaxNameQueryByPost**](docs/TaxonomyApi.md#TaxNameQueryByPost) | **POST** /taxonomy/taxon_suggest | Get a list of taxonomy names and IDs given a partial taxonomic name
*TaxonomyApi* | [**TaxonomyDataReport**](docs/TaxonomyApi.md#TaxonomyDataReport) | **GET** /taxonomy/taxon/{taxons}/dataset_report | Use taxonomic identifiers to get taxonomic data report
*TaxonomyApi* | [**TaxonomyDataReportPost**](docs/TaxonomyApi.md#TaxonomyDataReportPost) | **POST** /taxonomy/dataset_report | Use taxonomic identifiers to get taxonomic names data report by post
*TaxonomyApi* | [**TaxonomyFilteredSubtree**](docs/TaxonomyApi.md#TaxonomyFilteredSubtree) | **GET** /taxonomy/taxon/{taxons}/filtered_subtree | Use taxonomic identifiers to get a filtered taxonomic subtree
*TaxonomyApi* | [**TaxonomyFilteredSubtreePost**](docs/TaxonomyApi.md#TaxonomyFilteredSubtreePost) | **POST** /taxonomy/filtered_subtree | Use taxonomic identifiers to get a filtered taxonomic subtree by post
*TaxonomyApi* | [**TaxonomyImage**](docs/TaxonomyApi.md#TaxonomyImage) | **GET** /taxonomy/taxon/{taxon}/image | Retrieve image associated with a taxonomic identifier
*TaxonomyApi* | [**TaxonomyImageMetadata**](docs/TaxonomyApi.md#TaxonomyImageMetadata) | **GET** /taxonomy/taxon/{taxon}/image/metadata | Retrieve image metadata associated with a taxonomic identifier
*TaxonomyApi* | [**TaxonomyImageMetadataPost**](docs/TaxonomyApi.md#TaxonomyImageMetadataPost) | **POST** /taxonomy/image/metadata | Retrieve image metadata associated with a taxonomic identifier by post
*TaxonomyApi* | [**TaxonomyImagePost**](docs/TaxonomyApi.md#TaxonomyImagePost) | **POST** /taxonomy/image | Retrieve image associated with a taxonomic identifier by post
*TaxonomyApi* | [**TaxonomyLinks**](docs/TaxonomyApi.md#TaxonomyLinks) | **GET** /taxonomy/taxon/{taxon}/links | Retrieve external links associated with a taxonomic identifier.
*TaxonomyApi* | [**TaxonomyLinksByPost**](docs/TaxonomyApi.md#TaxonomyLinksByPost) | **POST** /taxonomy/links | Retrieve external links associated with a taxonomic identifier.
*TaxonomyApi* | [**TaxonomyMetadata**](docs/TaxonomyApi.md#TaxonomyMetadata) | **GET** /taxonomy/taxon/{taxons} | Use taxonomic identifiers to get taxonomic metadata
*TaxonomyApi* | [**TaxonomyMetadataPost**](docs/TaxonomyApi.md#TaxonomyMetadataPost) | **POST** /taxonomy | Use taxonomic identifiers to get taxonomic metadata by post
*TaxonomyApi* | [**TaxonomyNames**](docs/TaxonomyApi.md#TaxonomyNames) | **GET** /taxonomy/taxon/{taxons}/name_report | Use taxonomic identifiers to get taxonomic names data report
*TaxonomyApi* | [**TaxonomyNamesPost**](docs/TaxonomyApi.md#TaxonomyNamesPost) | **POST** /taxonomy/name_report | Use taxonomic identifiers to get taxonomic names data report by post
*TaxonomyApi* | [**TaxonomyRelatedIds**](docs/TaxonomyApi.md#TaxonomyRelatedIds) | **GET** /taxonomy/taxon/{tax_id}/related_ids | Use taxonomic identifier to get related taxonomic identifiers, such as children
*TaxonomyApi* | [**TaxonomyRelatedIdsPost**](docs/TaxonomyApi.md#TaxonomyRelatedIdsPost) | **POST** /taxonomy/related_ids | Use taxonomic identifier to get related taxonomic identifiers, such as children
*VersionApi* | [**Version**](docs/VersionApi.md#Version) | **GET** /version | Retrieve service version
*VirusApi* | [**Sars2ProteinDownload**](docs/VirusApi.md#Sars2ProteinDownload) | **GET** /virus/taxon/sars2/protein/{proteins}/download | Download SARS-CoV-2 protein and CDS datasets by protein name
*VirusApi* | [**Sars2ProteinDownloadPost**](docs/VirusApi.md#Sars2ProteinDownloadPost) | **POST** /virus/taxon/sars2/protein/download | Download SARS-CoV-2 protein and CDS datasets by protein name by POST request
*VirusApi* | [**Sars2ProteinSummary**](docs/VirusApi.md#Sars2ProteinSummary) | **GET** /virus/taxon/sars2/protein/{proteins} | Summary of SARS-CoV-2 protein and CDS datasets by protein name
*VirusApi* | [**Sars2ProteinSummaryByPost**](docs/VirusApi.md#Sars2ProteinSummaryByPost) | **POST** /virus/taxon/sars2/protein | Summary of SARS-CoV-2 protein and CDS datasets by protein name
*VirusApi* | [**Sars2ProteinTable**](docs/VirusApi.md#Sars2ProteinTable) | **GET** /virus/taxon/sars2/protein/{proteins}/table | Get SARS-CoV-2 protein metadata in a tabular format.
*VirusApi* | [**VirusAccessionAvailability**](docs/VirusApi.md#VirusAccessionAvailability) | **GET** /virus/accession/{accessions}/check | Check available viruses by accession
*VirusApi* | [**VirusAccessionAvailabilityPost**](docs/VirusApi.md#VirusAccessionAvailabilityPost) | **POST** /virus/check | Check available viruses by accession
*VirusApi* | [**VirusAnnotationReportsByAcessions**](docs/VirusApi.md#VirusAnnotationReportsByAcessions) | **GET** /virus/accession/{accessions}/annotation_report | Get virus annotation report by accession
*VirusApi* | [**VirusAnnotationReportsByPost**](docs/VirusApi.md#VirusAnnotationReportsByPost) | **POST** /virus/annotation_report | Get virus annotation report by POST
*VirusApi* | [**VirusAnnotationReportsByTaxon**](docs/VirusApi.md#VirusAnnotationReportsByTaxon) | **GET** /virus/taxon/{taxon}/annotation_report | Get virus annotation report by taxon
*VirusApi* | [**VirusGenomeDownload**](docs/VirusApi.md#VirusGenomeDownload) | **GET** /virus/taxon/{taxon}/genome/download | Download a virus genome dataset by taxon
*VirusApi* | [**VirusGenomeDownloadAccession**](docs/VirusApi.md#VirusGenomeDownloadAccession) | **GET** /virus/accession/{accessions}/genome/download | Download a virus genome dataset by accession
*VirusApi* | [**VirusGenomeDownloadPost**](docs/VirusApi.md#VirusGenomeDownloadPost) | **POST** /virus/genome/download | Get a virus genome dataset by post
*VirusApi* | [**VirusGenomeSummary**](docs/VirusApi.md#VirusGenomeSummary) | **GET** /virus/taxon/{taxon}/genome | Get summary data for virus genomes by taxon
*VirusApi* | [**VirusGenomeSummaryByPost**](docs/VirusApi.md#VirusGenomeSummaryByPost) | **POST** /virus/genome | Get summary data for virus genomes by post
*VirusApi* | [**VirusGenomeTable**](docs/VirusApi.md#VirusGenomeTable) | **GET** /virus/taxon/{taxon}/genome/table | Get virus genome metadata in a tabular format.
*VirusApi* | [**VirusReportsByAcessions**](docs/VirusApi.md#VirusReportsByAcessions) | **GET** /virus/accession/{accessions}/dataset_report | Get virus metadata by accession
*VirusApi* | [**VirusReportsByPost**](docs/VirusApi.md#VirusReportsByPost) | **POST** /virus | Get virus metadata by POST
*VirusApi* | [**VirusReportsByTaxon**](docs/VirusApi.md#VirusReportsByTaxon) | **GET** /virus/taxon/{taxon}/dataset_report | Get virus metadata by taxon


## Documentation for Models

 - [ProtobufAny](docs/ProtobufAny.md)
 - [RpcStatus](docs/RpcStatus.md)
 - [V2AnnotationForAssemblyType](docs/V2AnnotationForAssemblyType.md)
 - [V2AnnotationForOrganelleType](docs/V2AnnotationForOrganelleType.md)
 - [V2AssemblyAccessions](docs/V2AssemblyAccessions.md)
 - [V2AssemblyCheckMHistogramReply](docs/V2AssemblyCheckMHistogramReply.md)
 - [V2AssemblyCheckMHistogramReplyHistogramInterval](docs/V2AssemblyCheckMHistogramReplyHistogramInterval.md)
 - [V2AssemblyCheckMHistogramRequest](docs/V2AssemblyCheckMHistogramRequest.md)
 - [V2AssemblyDataReportDraftRequest](docs/V2AssemblyDataReportDraftRequest.md)
 - [V2AssemblyDatasetAvailability](docs/V2AssemblyDatasetAvailability.md)
 - [V2AssemblyDatasetDescriptorsFilter](docs/V2AssemblyDatasetDescriptorsFilter.md)
 - [V2AssemblyDatasetDescriptorsFilterAssemblySource](docs/V2AssemblyDatasetDescriptorsFilterAssemblySource.md)
 - [V2AssemblyDatasetDescriptorsFilterAssemblyVersion](docs/V2AssemblyDatasetDescriptorsFilterAssemblyVersion.md)
 - [V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter](docs/V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter.md)
 - [V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory](docs/V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory.md)
 - [V2AssemblyDatasetReportsRequest](docs/V2AssemblyDatasetReportsRequest.md)
 - [V2AssemblyDatasetReportsRequestContentType](docs/V2AssemblyDatasetReportsRequestContentType.md)
 - [V2AssemblyDatasetRequest](docs/V2AssemblyDatasetRequest.md)
 - [V2AssemblyDatasetRequestResolution](docs/V2AssemblyDatasetRequestResolution.md)
 - [V2AssemblyLinksReply](docs/V2AssemblyLinksReply.md)
 - [V2AssemblyLinksReplyAssemblyLink](docs/V2AssemblyLinksReplyAssemblyLink.md)
 - [V2AssemblyLinksReplyAssemblyLinkType](docs/V2AssemblyLinksReplyAssemblyLinkType.md)
 - [V2AssemblyLinksRequest](docs/V2AssemblyLinksRequest.md)
 - [V2AssemblyRevisionHistory](docs/V2AssemblyRevisionHistory.md)
 - [V2AssemblyRevisionHistoryRequest](docs/V2AssemblyRevisionHistoryRequest.md)
 - [V2AssemblySequenceReportsRequest](docs/V2AssemblySequenceReportsRequest.md)
 - [V2BioSampleDatasetReportsRequest](docs/V2BioSampleDatasetReportsRequest.md)
 - [V2CatalogApiVersion](docs/V2CatalogApiVersion.md)
 - [V2DatasetRequest](docs/V2DatasetRequest.md)
 - [V2DownloadSummary](docs/V2DownloadSummary.md)
 - [V2DownloadSummaryAvailableFiles](docs/V2DownloadSummaryAvailableFiles.md)
 - [V2DownloadSummaryDehydrated](docs/V2DownloadSummaryDehydrated.md)
 - [V2DownloadSummaryFileSummary](docs/V2DownloadSummaryFileSummary.md)
 - [V2DownloadSummaryHydrated](docs/V2DownloadSummaryHydrated.md)
 - [V2ElementFlankConfig](docs/V2ElementFlankConfig.md)
 - [V2Fasta](docs/V2Fasta.md)
 - [V2FileFileType](docs/V2FileFileType.md)
 - [V2GeneChromosomeSummaryReply](docs/V2GeneChromosomeSummaryReply.md)
 - [V2GeneChromosomeSummaryReplyGeneChromosomeSummary](docs/V2GeneChromosomeSummaryReplyGeneChromosomeSummary.md)
 - [V2GeneChromosomeSummaryRequest](docs/V2GeneChromosomeSummaryRequest.md)
 - [V2GeneCountsByTaxonReply](docs/V2GeneCountsByTaxonReply.md)
 - [V2GeneCountsByTaxonReplyGeneTypeAndCount](docs/V2GeneCountsByTaxonReplyGeneTypeAndCount.md)
 - [V2GeneCountsByTaxonRequest](docs/V2GeneCountsByTaxonRequest.md)
 - [V2GeneDatasetReportsRequest](docs/V2GeneDatasetReportsRequest.md)
 - [V2GeneDatasetReportsRequestContentType](docs/V2GeneDatasetReportsRequestContentType.md)
 - [V2GeneDatasetReportsRequestSymbolsForTaxon](docs/V2GeneDatasetReportsRequestSymbolsForTaxon.md)
 - [V2GeneDatasetRequest](docs/V2GeneDatasetRequest.md)
 - [V2GeneDatasetRequestContentType](docs/V2GeneDatasetRequestContentType.md)
 - [V2GeneDatasetRequestGeneDatasetReportType](docs/V2GeneDatasetRequestGeneDatasetReportType.md)
 - [V2GeneLinksReply](docs/V2GeneLinksReply.md)
 - [V2GeneLinksReplyGeneLink](docs/V2GeneLinksReplyGeneLink.md)
 - [V2GeneLinksReplyGeneLinkType](docs/V2GeneLinksReplyGeneLinkType.md)
 - [V2GeneLinksRequest](docs/V2GeneLinksRequest.md)
 - [V2GenePubmedIdsRequest](docs/V2GenePubmedIdsRequest.md)
 - [V2GenePubmedIdsResponse](docs/V2GenePubmedIdsResponse.md)
 - [V2GeneType](docs/V2GeneType.md)
 - [V2GenomeAnnotationRequest](docs/V2GenomeAnnotationRequest.md)
 - [V2GenomeAnnotationRequestAnnotationType](docs/V2GenomeAnnotationRequestAnnotationType.md)
 - [V2GenomeAnnotationRequestGenomeAnnotationTableFormat](docs/V2GenomeAnnotationRequestGenomeAnnotationTableFormat.md)
 - [V2GenomeAnnotationTableSummaryReply](docs/V2GenomeAnnotationTableSummaryReply.md)
 - [V2HttpBody](docs/V2HttpBody.md)
 - [V2ImageSize](docs/V2ImageSize.md)
 - [V2IncludeTabularHeader](docs/V2IncludeTabularHeader.md)
 - [V2MicroBiggeDatasetRequest](docs/V2MicroBiggeDatasetRequest.md)
 - [V2MicroBiggeDatasetRequestFileType](docs/V2MicroBiggeDatasetRequestFileType.md)
 - [V2MolType](docs/V2MolType.md)
 - [V2OrganelleDownloadRequest](docs/V2OrganelleDownloadRequest.md)
 - [V2OrganelleMetadataRequest](docs/V2OrganelleMetadataRequest.md)
 - [V2OrganelleMetadataRequestContentType](docs/V2OrganelleMetadataRequestContentType.md)
 - [V2OrganelleMetadataRequestOrganelleTableFormat](docs/V2OrganelleMetadataRequestOrganelleTableFormat.md)
 - [V2OrganelleSort](docs/V2OrganelleSort.md)
 - [V2OrganismQueryRequest](docs/V2OrganismQueryRequest.md)
 - [V2OrganismQueryRequestTaxRankFilter](docs/V2OrganismQueryRequestTaxRankFilter.md)
 - [V2OrganismQueryRequestTaxonResourceFilter](docs/V2OrganismQueryRequestTaxonResourceFilter.md)
 - [V2OrthologRequest](docs/V2OrthologRequest.md)
 - [V2OrthologRequestContentType](docs/V2OrthologRequestContentType.md)
 - [V2ProkaryoteGeneRequest](docs/V2ProkaryoteGeneRequest.md)
 - [V2ProkaryoteGeneRequestGeneFlankConfig](docs/V2ProkaryoteGeneRequestGeneFlankConfig.md)
 - [V2RefGeneCatalogDatasetRequest](docs/V2RefGeneCatalogDatasetRequest.md)
 - [V2RefGeneCatalogDatasetRequestFileType](docs/V2RefGeneCatalogDatasetRequestFileType.md)
 - [V2Sars2ProteinDatasetRequest](docs/V2Sars2ProteinDatasetRequest.md)
 - [V2SciNameAndIds](docs/V2SciNameAndIds.md)
 - [V2SciNameAndIdsSciNameAndId](docs/V2SciNameAndIdsSciNameAndId.md)
 - [V2SeqRange](docs/V2SeqRange.md)
 - [V2SeqReply](docs/V2SeqReply.md)
 - [V2SequenceAccessionRequest](docs/V2SequenceAccessionRequest.md)
 - [V2SequenceReportPage](docs/V2SequenceReportPage.md)
 - [V2SleepReply](docs/V2SleepReply.md)
 - [V2SleepRequest](docs/V2SleepRequest.md)
 - [V2SortDirection](docs/V2SortDirection.md)
 - [V2SortField](docs/V2SortField.md)
 - [V2TableFormat](docs/V2TableFormat.md)
 - [V2TabularOutput](docs/V2TabularOutput.md)
 - [V2TaxonomyDatasetRequest](docs/V2TaxonomyDatasetRequest.md)
 - [V2TaxonomyDatasetRequestTaxonomyReportType](docs/V2TaxonomyDatasetRequestTaxonomyReportType.md)
 - [V2TaxonomyFilteredSubtreeRequest](docs/V2TaxonomyFilteredSubtreeRequest.md)
 - [V2TaxonomyFilteredSubtreeResponse](docs/V2TaxonomyFilteredSubtreeResponse.md)
 - [V2TaxonomyFilteredSubtreeResponseEdge](docs/V2TaxonomyFilteredSubtreeResponseEdge.md)
 - [V2TaxonomyFilteredSubtreeResponseEdgeChildStatus](docs/V2TaxonomyFilteredSubtreeResponseEdgeChildStatus.md)
 - [V2TaxonomyFilteredSubtreeResponseEdgesEntry](docs/V2TaxonomyFilteredSubtreeResponseEdgesEntry.md)
 - [V2TaxonomyImageMetadataRequest](docs/V2TaxonomyImageMetadataRequest.md)
 - [V2TaxonomyImageMetadataResponse](docs/V2TaxonomyImageMetadataResponse.md)
 - [V2TaxonomyImageRequest](docs/V2TaxonomyImageRequest.md)
 - [V2TaxonomyLinksRequest](docs/V2TaxonomyLinksRequest.md)
 - [V2TaxonomyLinksResponse](docs/V2TaxonomyLinksResponse.md)
 - [V2TaxonomyLinksResponseGenericLink](docs/V2TaxonomyLinksResponseGenericLink.md)
 - [V2TaxonomyMatch](docs/V2TaxonomyMatch.md)
 - [V2TaxonomyMetadataRequest](docs/V2TaxonomyMetadataRequest.md)
 - [V2TaxonomyMetadataRequestContentType](docs/V2TaxonomyMetadataRequestContentType.md)
 - [V2TaxonomyMetadataRequestTableFormat](docs/V2TaxonomyMetadataRequestTableFormat.md)
 - [V2TaxonomyMetadataResponse](docs/V2TaxonomyMetadataResponse.md)
 - [V2TaxonomyNode](docs/V2TaxonomyNode.md)
 - [V2TaxonomyNodeCountByType](docs/V2TaxonomyNodeCountByType.md)
 - [V2TaxonomyRelatedIdRequest](docs/V2TaxonomyRelatedIdRequest.md)
 - [V2TaxonomyTaxIdsPage](docs/V2TaxonomyTaxIdsPage.md)
 - [V2VersionReply](docs/V2VersionReply.md)
 - [V2ViralSequenceType](docs/V2ViralSequenceType.md)
 - [V2VirusAnnotationFilter](docs/V2VirusAnnotationFilter.md)
 - [V2VirusAnnotationReportRequest](docs/V2VirusAnnotationReportRequest.md)
 - [V2VirusAvailability](docs/V2VirusAvailability.md)
 - [V2VirusAvailabilityRequest](docs/V2VirusAvailabilityRequest.md)
 - [V2VirusDataReportRequest](docs/V2VirusDataReportRequest.md)
 - [V2VirusDataReportRequestContentType](docs/V2VirusDataReportRequestContentType.md)
 - [V2VirusDatasetFilter](docs/V2VirusDatasetFilter.md)
 - [V2VirusDatasetReportType](docs/V2VirusDatasetReportType.md)
 - [V2VirusDatasetRequest](docs/V2VirusDatasetRequest.md)
 - [V2VirusTableField](docs/V2VirusTableField.md)
 - [V2archiveAffiliation](docs/V2archiveAffiliation.md)
 - [V2archiveCatalog](docs/V2archiveCatalog.md)
 - [V2archiveLocation](docs/V2archiveLocation.md)
 - [V2archiveModifier](docs/V2archiveModifier.md)
 - [V2archiveMoleculeType](docs/V2archiveMoleculeType.md)
 - [V2archiveName](docs/V2archiveName.md)
 - [V2archiveNuccoreRequest](docs/V2archiveNuccoreRequest.md)
 - [V2archiveSequence](docs/V2archiveSequence.md)
 - [V2archiveSequenceLengthUnits](docs/V2archiveSequenceLengthUnits.md)
 - [V2archiveSubmitter](docs/V2archiveSubmitter.md)
 - [V2archiveTaxonomyNode](docs/V2archiveTaxonomyNode.md)
 - [V2archiveTaxonomySubtype](docs/V2archiveTaxonomySubtype.md)
 - [V2reportsANIMatch](docs/V2reportsANIMatch.md)
 - [V2reportsANITypeCategory](docs/V2reportsANITypeCategory.md)
 - [V2reportsAdditionalSubmitter](docs/V2reportsAdditionalSubmitter.md)
 - [V2reportsAnnotation](docs/V2reportsAnnotation.md)
 - [V2reportsAnnotationInfo](docs/V2reportsAnnotationInfo.md)
 - [V2reportsAssemblyDataReport](docs/V2reportsAssemblyDataReport.md)
 - [V2reportsAssemblyDataReportPage](docs/V2reportsAssemblyDataReportPage.md)
 - [V2reportsAssemblyInfo](docs/V2reportsAssemblyInfo.md)
 - [V2reportsAssemblyLevel](docs/V2reportsAssemblyLevel.md)
 - [V2reportsAssemblyRevision](docs/V2reportsAssemblyRevision.md)
 - [V2reportsAssemblyStats](docs/V2reportsAssemblyStats.md)
 - [V2reportsAssemblyStatus](docs/V2reportsAssemblyStatus.md)
 - [V2reportsAtypicalInfo](docs/V2reportsAtypicalInfo.md)
 - [V2reportsAverageNucleotideIdentity](docs/V2reportsAverageNucleotideIdentity.md)
 - [V2reportsAverageNucleotideIdentityMatchStatus](docs/V2reportsAverageNucleotideIdentityMatchStatus.md)
 - [V2reportsAverageNucleotideIdentityTaxonomyCheckStatus](docs/V2reportsAverageNucleotideIdentityTaxonomyCheckStatus.md)
 - [V2reportsBioProject](docs/V2reportsBioProject.md)
 - [V2reportsBioProjectLineage](docs/V2reportsBioProjectLineage.md)
 - [V2reportsBioSampleAttribute](docs/V2reportsBioSampleAttribute.md)
 - [V2reportsBioSampleContact](docs/V2reportsBioSampleContact.md)
 - [V2reportsBioSampleDataReport](docs/V2reportsBioSampleDataReport.md)
 - [V2reportsBioSampleDataReportPage](docs/V2reportsBioSampleDataReportPage.md)
 - [V2reportsBioSampleDescription](docs/V2reportsBioSampleDescription.md)
 - [V2reportsBioSampleDescriptor](docs/V2reportsBioSampleDescriptor.md)
 - [V2reportsBioSampleId](docs/V2reportsBioSampleId.md)
 - [V2reportsBioSampleOwner](docs/V2reportsBioSampleOwner.md)
 - [V2reportsBioSampleStatus](docs/V2reportsBioSampleStatus.md)
 - [V2reportsBuscoStat](docs/V2reportsBuscoStat.md)
 - [V2reportsCheckM](docs/V2reportsCheckM.md)
 - [V2reportsClassification](docs/V2reportsClassification.md)
 - [V2reportsCollectionType](docs/V2reportsCollectionType.md)
 - [V2reportsConservedDomain](docs/V2reportsConservedDomain.md)
 - [V2reportsContentType](docs/V2reportsContentType.md)
 - [V2reportsCountType](docs/V2reportsCountType.md)
 - [V2reportsError](docs/V2reportsError.md)
 - [V2reportsErrorAssemblyErrorCode](docs/V2reportsErrorAssemblyErrorCode.md)
 - [V2reportsErrorGeneErrorCode](docs/V2reportsErrorGeneErrorCode.md)
 - [V2reportsErrorOrganelleErrorCode](docs/V2reportsErrorOrganelleErrorCode.md)
 - [V2reportsErrorTaxonomyErrorCode](docs/V2reportsErrorTaxonomyErrorCode.md)
 - [V2reportsErrorVirusErrorCode](docs/V2reportsErrorVirusErrorCode.md)
 - [V2reportsFeatureCounts](docs/V2reportsFeatureCounts.md)
 - [V2reportsGeneCounts](docs/V2reportsGeneCounts.md)
 - [V2reportsGeneDataReportPage](docs/V2reportsGeneDataReportPage.md)
 - [V2reportsGeneDescriptor](docs/V2reportsGeneDescriptor.md)
 - [V2reportsGeneGroup](docs/V2reportsGeneGroup.md)
 - [V2reportsGeneOntology](docs/V2reportsGeneOntology.md)
 - [V2reportsGeneReportMatch](docs/V2reportsGeneReportMatch.md)
 - [V2reportsGeneSummary](docs/V2reportsGeneSummary.md)
 - [V2reportsGeneType](docs/V2reportsGeneType.md)
 - [V2reportsGenomeAnnotation](docs/V2reportsGenomeAnnotation.md)
 - [V2reportsGenomeAnnotationReportMatch](docs/V2reportsGenomeAnnotationReportMatch.md)
 - [V2reportsGenomeAnnotationReportPage](docs/V2reportsGenomeAnnotationReportPage.md)
 - [V2reportsGenomicLocation](docs/V2reportsGenomicLocation.md)
 - [V2reportsGenomicRegion](docs/V2reportsGenomicRegion.md)
 - [V2reportsGenomicRegionGenomicRegionType](docs/V2reportsGenomicRegionGenomicRegionType.md)
 - [V2reportsInfraspecificNames](docs/V2reportsInfraspecificNames.md)
 - [V2reportsIsolate](docs/V2reportsIsolate.md)
 - [V2reportsLineageOrganism](docs/V2reportsLineageOrganism.md)
 - [V2reportsLinkedAssembly](docs/V2reportsLinkedAssembly.md)
 - [V2reportsLinkedAssemblyType](docs/V2reportsLinkedAssemblyType.md)
 - [V2reportsMaturePeptide](docs/V2reportsMaturePeptide.md)
 - [V2reportsMessage](docs/V2reportsMessage.md)
 - [V2reportsNameAndAuthority](docs/V2reportsNameAndAuthority.md)
 - [V2reportsNameAndAuthorityNote](docs/V2reportsNameAndAuthorityNote.md)
 - [V2reportsNameAndAuthorityNoteClassifier](docs/V2reportsNameAndAuthorityNoteClassifier.md)
 - [V2reportsNameAndAuthorityPublication](docs/V2reportsNameAndAuthorityPublication.md)
 - [V2reportsNomenclatureAuthority](docs/V2reportsNomenclatureAuthority.md)
 - [V2reportsOrganelle](docs/V2reportsOrganelle.md)
 - [V2reportsOrganelleBiosample](docs/V2reportsOrganelleBiosample.md)
 - [V2reportsOrganelleDataReports](docs/V2reportsOrganelleDataReports.md)
 - [V2reportsOrganelleGeneCounts](docs/V2reportsOrganelleGeneCounts.md)
 - [V2reportsOrganelleInfo](docs/V2reportsOrganelleInfo.md)
 - [V2reportsOrganelleTopology](docs/V2reportsOrganelleTopology.md)
 - [V2reportsOrganelleType](docs/V2reportsOrganelleType.md)
 - [V2reportsOrganism](docs/V2reportsOrganism.md)
 - [V2reportsOrientation](docs/V2reportsOrientation.md)
 - [V2reportsPairedAssembly](docs/V2reportsPairedAssembly.md)
 - [V2reportsProcessMetadata](docs/V2reportsProcessMetadata.md)
 - [V2reportsProductDescriptor](docs/V2reportsProductDescriptor.md)
 - [V2reportsProkaryoteGeneLocationCompleteness](docs/V2reportsProkaryoteGeneLocationCompleteness.md)
 - [V2reportsProtein](docs/V2reportsProtein.md)
 - [V2reportsPurposeOfSampling](docs/V2reportsPurposeOfSampling.md)
 - [V2reportsRange](docs/V2reportsRange.md)
 - [V2reportsRankType](docs/V2reportsRankType.md)
 - [V2reportsReference](docs/V2reportsReference.md)
 - [V2reportsRnaType](docs/V2reportsRnaType.md)
 - [V2reportsSeqRangeSet](docs/V2reportsSeqRangeSet.md)
 - [V2reportsSeqRangeSetFasta](docs/V2reportsSeqRangeSetFasta.md)
 - [V2reportsSequenceInfo](docs/V2reportsSequenceInfo.md)
 - [V2reportsSequenceInformation](docs/V2reportsSequenceInformation.md)
 - [V2reportsSourceDatabase](docs/V2reportsSourceDatabase.md)
 - [V2reportsTaxData](docs/V2reportsTaxData.md)
 - [V2reportsTaxonomyDataReportPage](docs/V2reportsTaxonomyDataReportPage.md)
 - [V2reportsTaxonomyNamesDataReportPage](docs/V2reportsTaxonomyNamesDataReportPage.md)
 - [V2reportsTaxonomyNamesDescriptor](docs/V2reportsTaxonomyNamesDescriptor.md)
 - [V2reportsTaxonomyNamesDescriptorCitation](docs/V2reportsTaxonomyNamesDescriptorCitation.md)
 - [V2reportsTaxonomyNamesReportMatch](docs/V2reportsTaxonomyNamesReportMatch.md)
 - [V2reportsTaxonomyNode](docs/V2reportsTaxonomyNode.md)
 - [V2reportsTaxonomyNodeCountByType](docs/V2reportsTaxonomyNodeCountByType.md)
 - [V2reportsTaxonomyReportMatch](docs/V2reportsTaxonomyReportMatch.md)
 - [V2reportsTaxonomyTypeMaterial](docs/V2reportsTaxonomyTypeMaterial.md)
 - [V2reportsTranscript](docs/V2reportsTranscript.md)
 - [V2reportsTranscriptSelectCategory](docs/V2reportsTranscriptSelectCategory.md)
 - [V2reportsTranscriptTranscriptType](docs/V2reportsTranscriptTranscriptType.md)
 - [V2reportsTranscriptTypeCount](docs/V2reportsTranscriptTypeCount.md)
 - [V2reportsTypeMaterial](docs/V2reportsTypeMaterial.md)
 - [V2reportsVirusAnnotationReport](docs/V2reportsVirusAnnotationReport.md)
 - [V2reportsVirusAnnotationReportPage](docs/V2reportsVirusAnnotationReportPage.md)
 - [V2reportsVirusAssembly](docs/V2reportsVirusAssembly.md)
 - [V2reportsVirusAssemblyCollectionLocation](docs/V2reportsVirusAssemblyCollectionLocation.md)
 - [V2reportsVirusAssemblyCompleteness](docs/V2reportsVirusAssemblyCompleteness.md)
 - [V2reportsVirusAssemblySubmitterInfo](docs/V2reportsVirusAssemblySubmitterInfo.md)
 - [V2reportsVirusDataReportPage](docs/V2reportsVirusDataReportPage.md)
 - [V2reportsVirusGene](docs/V2reportsVirusGene.md)
 - [V2reportsVirusPeptide](docs/V2reportsVirusPeptide.md)
 - [V2reportsVirusPeptideUniProtId](docs/V2reportsVirusPeptideUniProtId.md)
 - [V2reportsVirusPeptideViralPeptideCompleteness](docs/V2reportsVirusPeptideViralPeptideCompleteness.md)
 - [V2reportsWGSInfo](docs/V2reportsWGSInfo.md)
 - [V2reportsWarning](docs/V2reportsWarning.md)
 - [V2reportsWarningGeneWarningCode](docs/V2reportsWarningGeneWarningCode.md)
 - [V2reportsWarningReplacedId](docs/V2reportsWarningReplacedId.md)


## License

This package is released under the [Unlicense](https://unlicense.org/), placing it in the public domain.
