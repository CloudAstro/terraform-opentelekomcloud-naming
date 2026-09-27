<!-- BEGINNING OF PRE-COMMIT-OPENTOFU DOCS HOOK -->
# OpenTelekomCloud Naming Terraform Module

[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md)

This module generates names for 80 OpenTelekomCloud service types using CloudAstro's
naming conventions. It supports prefix, infix and suffix components, service
abbreviations, and an optional state-persisted random suffix. It creates no OTC
resources and requires no cloud credentials.

# Features

- **Service naming**: Generates names for VPCs, subnets, servers, storage and other OTC services.
- **Custom components**: Supports lists of prefix, infix and suffix components.
- **Unique suffixes**: Supports generated suffixes or a literal override with a configurable length.
- **Compatibility**: Preserves existing service output names and random resource addresses.

# Example Usage

The [default example](examples/default/main.tf) uses default suffix generation.
The [full example](examples/full/main.tf) demonstrates all inputs:

```hcl
module "naming" {
  source = "../.."

  prefix                 = ["ca"]
  infix                  = ["eu-nl", "dev"]
  suffix                 = ["application"]
  unique_seed            = "abcd1234"
  unique_length          = 6
  unique_include_numbers = false
}
```
<!-- markdownlint-disable MD033 -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.12.0, < 2.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.5.1, < 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.5.1, < 4.0.0 |

## Resources

| Name | Type |
|------|------|
| [random_string.first_letter](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [random_string.main](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

<!-- markdownlint-disable MD013 -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_infix"></a> [infix](#input\_infix) | * `infix` - (Optional) Name components between the service abbreviation and suffix. Case and embedded separators are preserved except for documented safe outputs.<br/><br/>Example input:<pre>hcl<br/>infix = ["eu-nl", "dev"]</pre> | `list(string)` | `[]` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | * `prefix` - (Optional) Name components before the service abbreviation. Case and embedded separators are preserved except for documented safe outputs.<br/><br/>Example input:<pre>hcl<br/>prefix = ["ca"]</pre> | `list(string)` | `[]` | no |
| <a name="input_suffix"></a> [suffix](#input\_suffix) | * `suffix` - (Optional) Name components after the service abbreviation. Case and embedded separators are preserved except for documented safe outputs.<br/><br/>Example input:<pre>hcl<br/>suffix = ["application"]</pre> | `list(string)` | `[]` | no |
| <a name="input_unique_include_numbers"></a> [unique\_include\_numbers](#input\_unique\_include\_numbers) | * `unique_include_numbers` - (Optional) Allow digits after the first letter of the generated suffix. Does not constrain unique\_seed. Changing this replaces the generated random string.<br/><br/>Example input:<pre>hcl<br/>unique_include_numbers = false</pre> | `bool` | `true` | no |
| <a name="input_unique_length"></a> [unique\_length](#input\_unique\_length) | * `unique_length` - (Optional) Maximum characters taken from the override or generated suffix (an integer from 1 to 61). Long names can still truncate this suffix; see README.<br/><br/>Example input:<pre>hcl<br/>unique_length = 6</pre> | `number` | `4` | no |
| <a name="input_unique_seed"></a> [unique\_seed](#input\_unique\_seed) | * `unique_seed` - (Optional) Literal suffix override, truncated to unique\_length; not a random-generator seed. Empty uses a state-persisted random suffix. A shorter override is not padded.<br/><br/>Example input:<pre>hcl<br/>unique_seed = "abcd1234"</pre> | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_anti_ddos"></a> [anti\_ddos](#output\_anti\_ddos) | Anti-DDoS<br/><br/>Example output:<pre>hcl<br/>output "anti_ddos_name" {<br/>  value = module.naming.anti_ddos.name<br/>}</pre> |
| <a name="output_api_gateway"></a> [api\_gateway](#output\_api\_gateway) | API Gateway<br/><br/>Example output:<pre>hcl<br/>output "api_gateway_name" {<br/>  value = module.naming.api_gateway.name<br/>}</pre> |
| <a name="output_application_operations_management"></a> [application\_operations\_management](#output\_application\_operations\_management) | Application Operations Management<br/><br/>Example output:<pre>hcl<br/>output "application_operations_management_name" {<br/>  value = module.naming.application_operations_management.name<br/>}</pre> |
| <a name="output_application_performance_management"></a> [application\_performance\_management](#output\_application\_performance\_management) | Application Performance Management<br/><br/>Example output:<pre>hcl<br/>output "application_performance_management_name" {<br/>  value = module.naming.application_performance_management.name<br/>}</pre> |
| <a name="output_auto_scaling"></a> [auto\_scaling](#output\_auto\_scaling) | Auto Scaling<br/><br/>Example output:<pre>hcl<br/>output "auto_scaling_name" {<br/>  value = module.naming.auto_scaling.name<br/>}</pre> |
| <a name="output_bandwidth"></a> [bandwidth](#output\_bandwidth) | bandwidth<br/><br/>Example output:<pre>hcl<br/>output "bandwidth_name" {<br/>  value = module.naming.bandwidth.name<br/>}</pre> |
| <a name="output_bare_metal_server"></a> [bare\_metal\_server](#output\_bare\_metal\_server) | Bare Metal Server<br/><br/>Example output:<pre>hcl<br/>output "bare_metal_server_name" {<br/>  value = module.naming.bare_metal_server.name<br/>}</pre> |
| <a name="output_cgw"></a> [cgw](#output\_cgw) | Customer Gateway<br/><br/>Example output:<pre>hcl<br/>output "cgw_name" {<br/>  value = module.naming.cgw.name<br/>}</pre> |
| <a name="output_cloud_backup_and_recovery"></a> [cloud\_backup\_and\_recovery](#output\_cloud\_backup\_and\_recovery) | Cloud Backup and Recovery<br/><br/>Example output:<pre>hcl<br/>output "cloud_backup_and_recovery_name" {<br/>  value = module.naming.cloud_backup_and_recovery.name<br/>}</pre> |
| <a name="output_cloud_container_engine"></a> [cloud\_container\_engine](#output\_cloud\_container\_engine) | Cloud Container Engine<br/><br/>Example output:<pre>hcl<br/>output "cloud_container_engine_name" {<br/>  value = module.naming.cloud_container_engine.name<br/>}</pre> |
| <a name="output_cloud_container_instance"></a> [cloud\_container\_instance](#output\_cloud\_container\_instance) | Cloud Container Instance<br/><br/>Example output:<pre>hcl<br/>output "cloud_container_instance_name" {<br/>  value = module.naming.cloud_container_instance.name<br/>}</pre> |
| <a name="output_cloud_eye"></a> [cloud\_eye](#output\_cloud\_eye) | Cloud Eye<br/><br/>Example output:<pre>hcl<br/>output "cloud_eye_name" {<br/>  value = module.naming.cloud_eye.name<br/>}</pre> |
| <a name="output_cloud_firewall"></a> [cloud\_firewall](#output\_cloud\_firewall) | Cloud Firewall<br/><br/>Example output:<pre>hcl<br/>output "cloud_firewall_name" {<br/>  value = module.naming.cloud_firewall.name<br/>}</pre> |
| <a name="output_cloud_search_client_node"></a> [cloud\_search\_client\_node](#output\_cloud\_search\_client\_node) | Cloud Search Client Node<br/><br/>Example output:<pre>hcl<br/>output "cloud_search_client_node_name" {<br/>  value = module.naming.cloud_search_client_node.name<br/>}</pre> |
| <a name="output_cloud_search_cold_node"></a> [cloud\_search\_cold\_node](#output\_cloud\_search\_cold\_node) | Cloud Search Cold Node<br/><br/>Example output:<pre>hcl<br/>output "cloud_search_cold_node_name" {<br/>  value = module.naming.cloud_search_cold_node.name<br/>}</pre> |
| <a name="output_cloud_search_master_node"></a> [cloud\_search\_master\_node](#output\_cloud\_search\_master\_node) | Cloud Search Master Node<br/><br/>Example output:<pre>hcl<br/>output "cloud_search_master_node_name" {<br/>  value = module.naming.cloud_search_master_node.name<br/>}</pre> |
| <a name="output_cloud_search_service"></a> [cloud\_search\_service](#output\_cloud\_search\_service) | Cloud Search Service<br/><br/>Example output:<pre>hcl<br/>output "cloud_search_service_name" {<br/>  value = module.naming.cloud_search_service.name<br/>}</pre> |
| <a name="output_cloud_server_backup_service"></a> [cloud\_server\_backup\_service](#output\_cloud\_server\_backup\_service) | Cloud Server Backup Service<br/><br/>Example output:<pre>hcl<br/>output "cloud_server_backup_service_name" {<br/>  value = module.naming.cloud_server_backup_service.name<br/>}</pre> |
| <a name="output_cloud_service_engine"></a> [cloud\_service\_engine](#output\_cloud\_service\_engine) | Cloud Service Engine<br/><br/>Example output:<pre>hcl<br/>output "cloud_service_engine_name" {<br/>  value = module.naming.cloud_service_engine.name<br/>}</pre> |
| <a name="output_cloud_trace_service"></a> [cloud\_trace\_service](#output\_cloud\_trace\_service) | Cloud Trace Service<br/><br/>Example output:<pre>hcl<br/>output "cloud_trace_service_name" {<br/>  value = module.naming.cloud_trace_service.name<br/>}</pre> |
| <a name="output_cold_object_storage"></a> [cold\_object\_storage](#output\_cold\_object\_storage) | Cold Object Storage<br/><br/>Example output:<pre>hcl<br/>output "cold_object_storage_name" {<br/>  value = module.naming.cold_object_storage.name<br/>}</pre> |
| <a name="output_con"></a> [con](#output\_con) | VPN Gateway connection<br/><br/>Example output:<pre>hcl<br/>output "con_name" {<br/>  value = module.naming.con.name<br/>}</pre> |
| <a name="output_data_admin_service"></a> [data\_admin\_service](#output\_data\_admin\_service) | Data Admin Service<br/><br/>Example output:<pre>hcl<br/>output "data_admin_service_name" {<br/>  value = module.naming.data_admin_service.name<br/>}</pre> |
| <a name="output_data_arts_studio"></a> [data\_arts\_studio](#output\_data\_arts\_studio) | DataArts Studio<br/><br/>Example output:<pre>hcl<br/>output "data_arts_studio_name" {<br/>  value = module.naming.data_arts_studio.name<br/>}</pre> |
| <a name="output_data_ingestion_service"></a> [data\_ingestion\_service](#output\_data\_ingestion\_service) | Data Ingestion Service<br/><br/>Example output:<pre>hcl<br/>output "data_ingestion_service_name" {<br/>  value = module.naming.data_ingestion_service.name<br/>}</pre> |
| <a name="output_data_lake_insight"></a> [data\_lake\_insight](#output\_data\_lake\_insight) | Data Lake Insight<br/><br/>Example output:<pre>hcl<br/>output "data_lake_insight_name" {<br/>  value = module.naming.data_lake_insight.name<br/>}</pre> |
| <a name="output_data_replication_service"></a> [data\_replication\_service](#output\_data\_replication\_service) | Data Replication Service<br/><br/>Example output:<pre>hcl<br/>output "data_replication_service_name" {<br/>  value = module.naming.data_replication_service.name<br/>}</pre> |
| <a name="output_data_warehouse_service"></a> [data\_warehouse\_service](#output\_data\_warehouse\_service) | Data Warehouse Service<br/><br/>Example output:<pre>hcl<br/>output "data_warehouse_service_name" {<br/>  value = module.naming.data_warehouse_service.name<br/>}</pre> |
| <a name="output_dataarts_studio_cdm"></a> [dataarts\_studio\_cdm](#output\_dataarts\_studio\_cdm) | DataArts Studio CDM<br/><br/>Example output:<pre>hcl<br/>output "dataarts_studio_cdm_name" {<br/>  value = module.naming.dataarts_studio_cdm.name<br/>}</pre> |
| <a name="output_dataarts_studio_dlf"></a> [dataarts\_studio\_dlf](#output\_dataarts\_studio\_dlf) | DataArts Studio DLF<br/><br/>Example output:<pre>hcl<br/>output "dataarts_studio_dlf_name" {<br/>  value = module.naming.dataarts_studio_dlf.name<br/>}</pre> |
| <a name="output_database_security_service"></a> [database\_security\_service](#output\_database\_security\_service) | Database Security Service<br/><br/>Example output:<pre>hcl<br/>output "database_security_service_name" {<br/>  value = module.naming.database_security_service.name<br/>}</pre> |
| <a name="output_dedicated_host"></a> [dedicated\_host](#output\_dedicated\_host) | Dedicated Host<br/><br/>Example output:<pre>hcl<br/>output "dedicated_host_name" {<br/>  value = module.naming.dedicated_host.name<br/>}</pre> |
| <a name="output_dedicated_host_lizenzen"></a> [dedicated\_host\_lizenzen](#output\_dedicated\_host\_lizenzen) | Dedicated Host Lizenzen<br/><br/>Example output:<pre>hcl<br/>output "dedicated_host_lizenzen_name" {<br/>  value = module.naming.dedicated_host_lizenzen.name<br/>}</pre> |
| <a name="output_dedicated_web_application_firewall"></a> [dedicated\_web\_application\_firewall](#output\_dedicated\_web\_application\_firewall) | Dedicated Web Application Firewall<br/><br/>Example output:<pre>hcl<br/>output "dedicated_web_application_firewall_name" {<br/>  value = module.naming.dedicated_web_application_firewall.name<br/>}</pre> |
| <a name="output_direct_connect"></a> [direct\_connect](#output\_direct\_connect) | Direct Connect<br/><br/>Example output:<pre>hcl<br/>output "direct_connect_name" {<br/>  value = module.naming.direct_connect.name<br/>}</pre> |
| <a name="output_disk"></a> [disk](#output\_disk) | Elastic Volume Service<br/><br/>Example output:<pre>hcl<br/>output "disk_name" {<br/>  value = module.naming.disk.name<br/>}</pre> |
| <a name="output_distributed_cache_service"></a> [distributed\_cache\_service](#output\_distributed\_cache\_service) | Distributed Cache Service<br/><br/>Example output:<pre>hcl<br/>output "distributed_cache_service_name" {<br/>  value = module.naming.distributed_cache_service.name<br/>}</pre> |
| <a name="output_distributed_database_middleware"></a> [distributed\_database\_middleware](#output\_distributed\_database\_middleware) | Distributed Database Middleware<br/><br/>Example output:<pre>hcl<br/>output "distributed_database_middleware_name" {<br/>  value = module.naming.distributed_database_middleware.name<br/>}</pre> |
| <a name="output_distributed_message_service"></a> [distributed\_message\_service](#output\_distributed\_message\_service) | Distributed Message Service<br/><br/>Example output:<pre>hcl<br/>output "distributed_message_service_name" {<br/>  value = module.naming.distributed_message_service.name<br/>}</pre> |
| <a name="output_document_database_service"></a> [document\_database\_service](#output\_document\_database\_service) | Document Database Service<br/><br/>Example output:<pre>hcl<br/>output "document_database_service_name" {<br/>  value = module.naming.document_database_service.name<br/>}</pre> |
| <a name="output_domain_name_service"></a> [domain\_name\_service](#output\_domain\_name\_service) | Domain Name Service<br/><br/>Example output:<pre>hcl<br/>output "domain_name_service_name" {<br/>  value = module.naming.domain_name_service.name<br/>}</pre> |
| <a name="output_elastic_cloud_server"></a> [elastic\_cloud\_server](#output\_elastic\_cloud\_server) | Elastic Cloud Server<br/><br/>Example output:<pre>hcl<br/>output "elastic_cloud_server_name" {<br/>  value = module.naming.elastic_cloud_server.name<br/>}</pre> |
| <a name="output_elastic_ip"></a> [elastic\_ip](#output\_elastic\_ip) | Elastic IP<br/><br/>Example output:<pre>hcl<br/>output "elastic_ip_name" {<br/>  value = module.naming.elastic_ip.name<br/>}</pre> |
| <a name="output_enterprise_router"></a> [enterprise\_router](#output\_enterprise\_router) | Enterprise Router<br/><br/>Example output:<pre>hcl<br/>output "enterprise_router_name" {<br/>  value = module.naming.enterprise_router.name<br/>}</pre> |
| <a name="output_functiongraph"></a> [functiongraph](#output\_functiongraph) | FunctionGraph<br/><br/>Example output:<pre>hcl<br/>output "functiongraph_name" {<br/>  value = module.naming.functiongraph.name<br/>}</pre> |
| <a name="output_gaussdb_mysql"></a> [gaussdb\_mysql](#output\_gaussdb\_mysql) | GaussDB (for MySQL)<br/><br/>Example output:<pre>hcl<br/>output "gaussdb_mysql_name" {<br/>  value = module.naming.gaussdb_mysql.name<br/>}</pre> |
| <a name="output_geminidb"></a> [geminidb](#output\_geminidb) | GeminiDB<br/><br/>Example output:<pre>hcl<br/>output "geminidb_name" {<br/>  value = module.naming.geminidb.name<br/>}</pre> |
| <a name="output_host_security_service"></a> [host\_security\_service](#output\_host\_security\_service) | Host Security Service<br/><br/>Example output:<pre>hcl<br/>output "host_security_service_name" {<br/>  value = module.naming.host_security_service.name<br/>}</pre> |
| <a name="output_identity_access_management"></a> [identity\_access\_management](#output\_identity\_access\_management) | Identity and Access Management<br/><br/>Example output:<pre>hcl<br/>output "identity_access_management_name" {<br/>  value = module.naming.identity_access_management.name<br/>}</pre> |
| <a name="output_image_management_service"></a> [image\_management\_service](#output\_image\_management\_service) | Image Management Service<br/><br/>Example output:<pre>hcl<br/>output "image_management_service_name" {<br/>  value = module.naming.image_management_service.name<br/>}</pre> |
| <a name="output_key_management_service"></a> [key\_management\_service](#output\_key\_management\_service) | Key Management Service<br/><br/>Example output:<pre>hcl<br/>output "key_management_service_name" {<br/>  value = module.naming.key_management_service.name<br/>}</pre> |
| <a name="output_keypair"></a> [keypair](#output\_keypair) | Keypair<br/><br/>Example output:<pre>hcl<br/>output "keypair_name" {<br/>  value = module.naming.keypair.name<br/>}</pre> |
| <a name="output_kms_key"></a> [kms\_key](#output\_kms\_key) | Key Management Service key<br/><br/>Example output:<pre>hcl<br/>output "kms_key_name" {<br/>  value = module.naming.kms_key.name<br/>}</pre> |
| <a name="output_log_tank_service"></a> [log\_tank\_service](#output\_log\_tank\_service) | Log Tank Service<br/><br/>Example output:<pre>hcl<br/>output "log_tank_service_name" {<br/>  value = module.naming.log_tank_service.name<br/>}</pre> |
| <a name="output_mapreduce_service"></a> [mapreduce\_service](#output\_mapreduce\_service) | MapReduce Service<br/><br/>Example output:<pre>hcl<br/>output "mapreduce_service_name" {<br/>  value = module.naming.mapreduce_service.name<br/>}</pre> |
| <a name="output_modelarts"></a> [modelarts](#output\_modelarts) | ModelArts<br/><br/>Example output:<pre>hcl<br/>output "modelarts_name" {<br/>  value = module.naming.modelarts.name<br/>}</pre> |
| <a name="output_nat_gateway"></a> [nat\_gateway](#output\_nat\_gateway) | NAT Gateway<br/><br/>Example output:<pre>hcl<br/>output "nat_gateway_name" {<br/>  value = module.naming.nat_gateway.name<br/>}</pre> |
| <a name="output_no_svc"></a> [no\_svc](#output\_no\_svc) | Names without a service abbreviation, including the lowercase dash-free name\_safe variant.<br/><br/>Example output:<pre>hcl<br/>output "no_svc_name" {<br/>  value = module.naming.no_svc.name<br/>}</pre> |
| <a name="output_object_storage_bucket"></a> [object\_storage\_bucket](#output\_object\_storage\_bucket) | object storage bucket<br/><br/>Example output:<pre>hcl<br/>output "object_storage_bucket_name" {<br/>  value = module.naming.object_storage_bucket.name<br/>}</pre> |
| <a name="output_object_storage_service"></a> [object\_storage\_service](#output\_object\_storage\_service) | Object Storage Service<br/><br/>Example output:<pre>hcl<br/>output "object_storage_service_name" {<br/>  value = module.naming.object_storage_service.name<br/>}</pre> |
| <a name="output_optical_character_recognition"></a> [optical\_character\_recognition](#output\_optical\_character\_recognition) | Optical Character Recognition<br/><br/>Example output:<pre>hcl<br/>output "optical_character_recognition_name" {<br/>  value = module.naming.optical_character_recognition.name<br/>}</pre> |
| <a name="output_peering"></a> [peering](#output\_peering) | VPC Peering Connection<br/><br/>Example output:<pre>hcl<br/>output "peering_name" {<br/>  value = module.naming.peering.name<br/>}</pre> |
| <a name="output_port"></a> [port](#output\_port) | networking port<br/><br/>Example output:<pre>hcl<br/>output "port_name" {<br/>  value = module.naming.port.name<br/>}</pre> |
| <a name="output_private_link_access_service"></a> [private\_link\_access\_service](#output\_private\_link\_access\_service) | Private Link Access Service<br/><br/>Example output:<pre>hcl<br/>output "private_link_access_service_name" {<br/>  value = module.naming.private_link_access_service.name<br/>}</pre> |
| <a name="output_relational_database_service"></a> [relational\_database\_service](#output\_relational\_database\_service) | Relational Database Service<br/><br/>Example output:<pre>hcl<br/>output "relational_database_service_name" {<br/>  value = module.naming.relational_database_service.name<br/>}</pre> |
| <a name="output_resource_management_service"></a> [resource\_management\_service](#output\_resource\_management\_service) | Resource Management Service<br/><br/>Example output:<pre>hcl<br/>output "resource_management_service_name" {<br/>  value = module.naming.resource_management_service.name<br/>}</pre> |
| <a name="output_resource_template_service"></a> [resource\_template\_service](#output\_resource\_template\_service) | Resource Template Service<br/><br/>Example output:<pre>hcl<br/>output "resource_template_service_name" {<br/>  value = module.naming.resource_template_service.name<br/>}</pre> |
| <a name="output_route_table"></a> [route\_table](#output\_route\_table) | route table<br/><br/>Example output:<pre>hcl<br/>output "route_table_name" {<br/>  value = module.naming.route_table.name<br/>}</pre> |
| <a name="output_scalable_file_service"></a> [scalable\_file\_service](#output\_scalable\_file\_service) | Scalable File Service<br/><br/>Example output:<pre>hcl<br/>output "scalable_file_service_name" {<br/>  value = module.naming.scalable_file_service.name<br/>}</pre> |
| <a name="output_security_group"></a> [security\_group](#output\_security\_group) | Security Group<br/><br/>Example output:<pre>hcl<br/>output "security_group_name" {<br/>  value = module.naming.security_group.name<br/>}</pre> |
| <a name="output_simple_message_notification"></a> [simple\_message\_notification](#output\_simple\_message\_notification) | Simple Message Notification<br/><br/>Example output:<pre>hcl<br/>output "simple_message_notification_name" {<br/>  value = module.naming.simple_message_notification.name<br/>}</pre> |
| <a name="output_software_repository_for_container"></a> [software\_repository\_for\_container](#output\_software\_repository\_for\_container) | Software Repository for Container<br/><br/>Example output:<pre>hcl<br/>output "software_repository_for_container_name" {<br/>  value = module.naming.software_repository_for_container.name<br/>}</pre> |
| <a name="output_storage_disaster_recovery_service"></a> [storage\_disaster\_recovery\_service](#output\_storage\_disaster\_recovery\_service) | Storage Disaster Recovery Service<br/><br/>Example output:<pre>hcl<br/>output "storage_disaster_recovery_service_name" {<br/>  value = module.naming.storage_disaster_recovery_service.name<br/>}</pre> |
| <a name="output_subnet"></a> [subnet](#output\_subnet) | Virtual Private Cloud Subnet<br/><br/>Example output:<pre>hcl<br/>output "subnet_name" {<br/>  value = module.naming.subnet.name<br/>}</pre> |
| <a name="output_tag_management_service"></a> [tag\_management\_service](#output\_tag\_management\_service) | Tag Management Service<br/><br/>Example output:<pre>hcl<br/>output "tag_management_service_name" {<br/>  value = module.naming.tag_management_service.name<br/>}</pre> |
| <a name="output_vgw"></a> [vgw](#output\_vgw) | VPN Gateway<br/><br/>Example output:<pre>hcl<br/>output "vgw_name" {<br/>  value = module.naming.vgw.name<br/>}</pre> |
| <a name="output_virtual_private_cloud"></a> [virtual\_private\_cloud](#output\_virtual\_private\_cloud) | Virtual Private Cloud<br/><br/>Example output:<pre>hcl<br/>output "virtual_private_cloud_name" {<br/>  value = module.naming.virtual_private_cloud.name<br/>}</pre> |
| <a name="output_volume_backup_service"></a> [volume\_backup\_service](#output\_volume\_backup\_service) | Volume Backup Service<br/><br/>Example output:<pre>hcl<br/>output "volume_backup_service_name" {<br/>  value = module.naming.volume_backup_service.name<br/>}</pre> |
| <a name="output_vpc_endpoint"></a> [vpc\_endpoint](#output\_vpc\_endpoint) | VPC Endpoint<br/><br/>Example output:<pre>hcl<br/>output "vpc_endpoint_name" {<br/>  value = module.naming.vpc_endpoint.name<br/>}</pre> |
| <a name="output_web_application_firewall"></a> [web\_application\_firewall](#output\_web\_application\_firewall) | Web Application Firewall<br/><br/>Example output:<pre>hcl<br/>output "web_application_firewall_name" {<br/>  value = module.naming.web_application_firewall.name<br/>}</pre> |

## Modules

No modules.

## 🌐 Additional Information

Most names follow `prefix-service-infix-suffix`. Access an output with
`module.naming.virtual_private_cloud.name` or use `.name_unique` to include the
unique suffix. Each service output also contains legacy naming metadata.

The module uses only the HashiCorp Random provider. The examples use the local
module source `../..` and can be run with `terraform init` and `terraform plan`
from their respective directories.

## 📚 Resources

- [Terraform Random Provider](https://registry.terraform.io/providers/hashicorp/random/latest/docs)
- [Terraform Random String Resource](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string)
- [Contributing](CONTRIBUTING.md)

## ⚠️ Notes

- Keep Terraform state to preserve generated names. Recreating state or replacing random resources changes generated suffixes. Global uniqueness is not guaranteed.
- `unique_seed` is a literal override, not a random-generator seed. It is truncated to `unique_length`, not padded, and is unaffected by `unique_include_numbers`.
- Most names preserve case and truncate to 64 characters. Long components can truncate the unique suffix and cause collisions.
- `no_svc` truncates to 40 characters; its `name_safe` additionally lowercases and removes hyphens. Other punctuation is not sanitized.
- `object_storage_bucket` lowercases and joins components without adding separators, preserving embedded hyphens. It truncates to 64 characters.
- `object_storage_service` joins component groups with dots and truncates to 63 characters. `cold_object_storage` uses hyphens and also truncates to 63 characters.
- Returned `regex`, `dashes`, `min_length` and `max_length` fields are historical metadata, not validated OTC API constraints. For example, `no_svc.max_length` is 64 despite its 40-character truncation, and `web_application_firewall.slug` is `cwaf` while its names use `waf`. Check the target resource's actual naming rules.
- Existing output objects and random resource addresses are preserved. The added validation rejects null list elements and suffix lengths outside whole numbers from 1 to 61. Review the plan when updating a consumer's module source.
- Generate this README with `terraform-docs .`; edit `_header.md`, `_footer.md` and Terraform descriptions rather than the generated file. See [CONTRIBUTING.md](CONTRIBUTING.md) for the shared pre-commit workflow.
- GitHub workflows apply when this directory becomes the root of the standalone module repository. No registry version has been published yet.

## 🧾 License

Confirm the existing module's ownership and Apache-2.0 licensing before publishing.
The public VPC reference uses Apache-2.0; no license has been assigned to this module yet.
<!-- END OF PRE-COMMIT-OPENTOFU DOCS HOOK -->