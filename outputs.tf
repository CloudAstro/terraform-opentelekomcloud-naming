# General Outputs for all Services
output "api_gateway" {
  value       = local.otc.api_gateway
  description = <<-EOT
API Gateway

Example output:
```hcl
output "api_gateway_name" {
  value = module.naming.api_gateway.name
}
```
EOT
}
output "no_svc" {
  value       = local.otc.no_svc
  description = <<-EOT
Names without a service abbreviation, including the lowercase dash-free name_safe variant.

Example output:
```hcl
output "no_svc_name" {
  value = module.naming.no_svc.name
}
```
EOT
}

output "application_operations_management" {
  value       = local.otc.application_operations_management
  description = <<-EOT
Application Operations Management

Example output:
```hcl
output "application_operations_management_name" {
  value = module.naming.application_operations_management.name
}
```
EOT
}

output "application_performance_management" {
  value       = local.otc.application_performance_management
  description = <<-EOT
Application Performance Management

Example output:
```hcl
output "application_performance_management_name" {
  value = module.naming.application_performance_management.name
}
```
EOT
}

output "elastic_cloud_server" {
  value       = local.otc.elastic_cloud_server
  description = <<-EOT
Elastic Cloud Server

Example output:
```hcl
output "elastic_cloud_server_name" {
  value = module.naming.elastic_cloud_server.name
}
```
EOT

}

output "bare_metal_server" {
  value       = local.otc.bare_metal_server
  description = <<-EOT
Bare Metal Server

Example output:
```hcl
output "bare_metal_server_name" {
  value = module.naming.bare_metal_server.name
}
```
EOT
}

output "object_storage_bucket" {
  value       = local.otc.object_storage_bucket
  description = <<-EOT
object storage bucket

Example output:
```hcl
output "object_storage_bucket_name" {
  value = module.naming.object_storage_bucket.name
}
```
EOT
}

output "cloud_backup_and_recovery" {
  value       = local.otc.cloud_backup_and_recovery
  description = <<-EOT
Cloud Backup and Recovery

Example output:
```hcl
output "cloud_backup_and_recovery_name" {
  value = module.naming.cloud_backup_and_recovery.name
}
```
EOT
}

output "cloud_container_engine" {
  value       = local.otc.cloud_container_engine
  description = <<-EOT
Cloud Container Engine

Example output:
```hcl
output "cloud_container_engine_name" {
  value = module.naming.cloud_container_engine.name
}
```
EOT
}

output "cloud_container_instance" {
  value       = local.otc.cloud_container_instance
  description = <<-EOT
Cloud Container Instance

Example output:
```hcl
output "cloud_container_instance_name" {
  value = module.naming.cloud_container_instance.name
}
```
EOT
}

output "cloud_firewall" {
  value       = local.otc.cloud_firewall
  description = <<-EOT
Cloud Firewall

Example output:
```hcl
output "cloud_firewall_name" {
  value = module.naming.cloud_firewall.name
}
```
EOT
}

output "cloud_search_client_node" {
  value       = local.otc.cloud_search_client_node
  description = <<-EOT
Cloud Search Client Node

Example output:
```hcl
output "cloud_search_client_node_name" {
  value = module.naming.cloud_search_client_node.name
}
```
EOT
}

output "cloud_search_cold_node" {
  value       = local.otc.cloud_search_cold_node
  description = <<-EOT
Cloud Search Cold Node

Example output:
```hcl
output "cloud_search_cold_node_name" {
  value = module.naming.cloud_search_cold_node.name
}
```
EOT
}

output "cloud_search_master_node" {
  value       = local.otc.cloud_search_master_node
  description = <<-EOT
Cloud Search Master Node

Example output:
```hcl
output "cloud_search_master_node_name" {
  value = module.naming.cloud_search_master_node.name
}
```
EOT
}

output "cloud_search_service" {
  value       = local.otc.cloud_search_service
  description = <<-EOT
Cloud Search Service

Example output:
```hcl
output "cloud_search_service_name" {
  value = module.naming.cloud_search_service.name
}
```
EOT
}

output "cloud_server_backup_service" {
  value       = local.otc.cloud_server_backup_service
  description = <<-EOT
Cloud Server Backup Service

Example output:
```hcl
output "cloud_server_backup_service_name" {
  value = module.naming.cloud_server_backup_service.name
}
```
EOT
}

output "cloud_service_engine" {
  value       = local.otc.cloud_service_engine
  description = <<-EOT
Cloud Service Engine

Example output:
```hcl
output "cloud_service_engine_name" {
  value = module.naming.cloud_service_engine.name
}
```
EOT
}

output "dedicated_web_application_firewall" {
  value       = local.otc.dedicated_web_application_firewall
  description = <<-EOT
Dedicated Web Application Firewall

Example output:
```hcl
output "dedicated_web_application_firewall_name" {
  value = module.naming.dedicated_web_application_firewall.name
}
```
EOT
}

output "web_application_firewall" {
  value       = local.otc.web_application_firewall
  description = <<-EOT
Web Application Firewall

Example output:
```hcl
output "web_application_firewall_name" {
  value = module.naming.web_application_firewall.name
}
```
EOT
}

output "cold_object_storage" {
  value       = local.otc.cold_object_storage
  description = <<-EOT
Cold Object Storage

Example output:
```hcl
output "cold_object_storage_name" {
  value = module.naming.cold_object_storage.name
}
```
EOT
}

output "data_admin_service" {
  value       = local.otc.data_admin_service
  description = <<-EOT
Data Admin Service

Example output:
```hcl
output "data_admin_service_name" {
  value = module.naming.data_admin_service.name
}
```
EOT
}

output "data_ingestion_service" {
  value       = local.otc.data_ingestion_service
  description = <<-EOT
Data Ingestion Service

Example output:
```hcl
output "data_ingestion_service_name" {
  value = module.naming.data_ingestion_service.name
}
```
EOT
}

output "data_replication_service" {
  value       = local.otc.data_replication_service
  description = <<-EOT
Data Replication Service

Example output:
```hcl
output "data_replication_service_name" {
  value = module.naming.data_replication_service.name
}
```
EOT
}

output "data_warehouse_service" {
  value       = local.otc.data_warehouse_service
  description = <<-EOT
Data Warehouse Service

Example output:
```hcl
output "data_warehouse_service_name" {
  value = module.naming.data_warehouse_service.name
}
```
EOT
}

output "data_arts_studio" {
  value       = local.otc.data_arts_studio
  description = <<-EOT
DataArts Studio

Example output:
```hcl
output "data_arts_studio_name" {
  value = module.naming.data_arts_studio.name
}
```
EOT
}

output "database_security_service" {
  value       = local.otc.database_security_service
  description = <<-EOT
Database Security Service

Example output:
```hcl
output "database_security_service_name" {
  value = module.naming.database_security_service.name
}
```
EOT
}

output "dedicated_host" {
  value       = local.otc.dedicated_host
  description = <<-EOT
Dedicated Host

Example output:
```hcl
output "dedicated_host_name" {
  value = module.naming.dedicated_host.name
}
```
EOT
}

output "dedicated_host_lizenzen" {
  value       = local.otc.dedicated_host_lizenzen
  description = <<-EOT
Dedicated Host Lizenzen

Example output:
```hcl
output "dedicated_host_lizenzen_name" {
  value = module.naming.dedicated_host_lizenzen.name
}
```
EOT
}

output "direct_connect" {
  value       = local.otc.direct_connect
  description = <<-EOT
Direct Connect

Example output:
```hcl
output "direct_connect_name" {
  value = module.naming.direct_connect.name
}
```
EOT
}

output "anti_ddos" {
  value       = local.otc.anti_ddos
  description = <<-EOT
Anti-DDoS

Example output:
```hcl
output "anti_ddos_name" {
  value = module.naming.anti_ddos.name
}
```
EOT
}

output "auto_scaling" {
  value       = local.otc.auto_scaling
  description = <<-EOT
Auto Scaling

Example output:
```hcl
output "auto_scaling_name" {
  value = module.naming.auto_scaling.name
}
```
EOT
}

output "cloud_eye" {
  value       = local.otc.cloud_eye
  description = <<-EOT
Cloud Eye

Example output:
```hcl
output "cloud_eye_name" {
  value = module.naming.cloud_eye.name
}
```
EOT
}

output "cloud_trace_service" {
  value       = local.otc.cloud_trace_service
  description = <<-EOT
Cloud Trace Service

Example output:
```hcl
output "cloud_trace_service_name" {
  value = module.naming.cloud_trace_service.name
}
```
EOT
}

output "distributed_cache_service" {
  value       = local.otc.distributed_cache_service
  description = <<-EOT
Distributed Cache Service

Example output:
```hcl
output "distributed_cache_service_name" {
  value = module.naming.distributed_cache_service.name
}
```
EOT
}

output "distributed_database_middleware" {
  value       = local.otc.distributed_database_middleware
  description = <<-EOT
Distributed Database Middleware

Example output:
```hcl
output "distributed_database_middleware_name" {
  value = module.naming.distributed_database_middleware.name
}
```
EOT
}

output "document_database_service" {
  value       = local.otc.document_database_service
  description = <<-EOT
Document Database Service

Example output:
```hcl
output "document_database_service_name" {
  value = module.naming.document_database_service.name
}
```
EOT
}

output "data_lake_insight" {
  value       = local.otc.data_lake_insight
  description = <<-EOT
Data Lake Insight

Example output:
```hcl
output "data_lake_insight_name" {
  value = module.naming.data_lake_insight.name
}
```
EOT
}

output "dataarts_studio_dlf" {
  value       = local.otc.dataarts_studio_dlf
  description = <<-EOT
DataArts Studio DLF

Example output:
```hcl
output "dataarts_studio_dlf_name" {
  value = module.naming.dataarts_studio_dlf.name
}
```
EOT
}

output "dataarts_studio_cdm" {
  value       = local.otc.dataarts_studio_cdm
  description = <<-EOT
DataArts Studio CDM

Example output:
```hcl
output "dataarts_studio_cdm_name" {
  value = module.naming.dataarts_studio_cdm.name
}
```
EOT
}

output "distributed_message_service" {
  value       = local.otc.distributed_message_service
  description = <<-EOT
Distributed Message Service

Example output:
```hcl
output "distributed_message_service_name" {
  value = module.naming.distributed_message_service.name
}
```
EOT
}

output "domain_name_service" {
  value       = local.otc.domain_name_service
  description = <<-EOT
Domain Name Service

Example output:
```hcl
output "domain_name_service_name" {
  value = module.naming.domain_name_service.name
}
```
EOT
}

output "enterprise_router" {
  value       = local.otc.enterprise_router
  description = <<-EOT
Enterprise Router

Example output:
```hcl
output "enterprise_router_name" {
  value = module.naming.enterprise_router.name
}
```
EOT
}

output "functiongraph" {
  value       = local.otc.functiongraph
  description = <<-EOT
FunctionGraph

Example output:
```hcl
output "functiongraph_name" {
  value = module.naming.functiongraph.name
}
```
EOT
}

output "gaussdb_mysql" {
  value       = local.otc.gaussdb_mysql
  description = <<-EOT
GaussDB (for MySQL)

Example output:
```hcl
output "gaussdb_mysql_name" {
  value = module.naming.gaussdb_mysql.name
}
```
EOT
}

output "geminidb" {
  value       = local.otc.geminidb
  description = <<-EOT
GeminiDB

Example output:
```hcl
output "geminidb_name" {
  value = module.naming.geminidb.name
}
```
EOT
}

output "host_security_service" {
  value       = local.otc.host_security_service
  description = <<-EOT
Host Security Service

Example output:
```hcl
output "host_security_service_name" {
  value = module.naming.host_security_service.name
}
```
EOT
}

output "identity_access_management" {
  value       = local.otc.identity_access_management
  description = <<-EOT
Identity and Access Management

Example output:
```hcl
output "identity_access_management_name" {
  value = module.naming.identity_access_management.name
}
```
EOT
}

output "image_management_service" {
  value       = local.otc.image_management_service
  description = <<-EOT
Image Management Service

Example output:
```hcl
output "image_management_service_name" {
  value = module.naming.image_management_service.name
}
```
EOT
}

output "key_management_service" {
  value       = local.otc.key_management_service
  description = <<-EOT
Key Management Service

Example output:
```hcl
output "key_management_service_name" {
  value = module.naming.key_management_service.name
}
```
EOT
}

output "kms_key" {
  value       = local.otc.kms_key
  description = <<-EOT
Key Management Service key

Example output:
```hcl
output "kms_key_name" {
  value = module.naming.kms_key.name
}
```
EOT
}


output "keypair" {
  value       = local.otc.keypair
  description = <<-EOT
Keypair

Example output:
```hcl
output "keypair_name" {
  value = module.naming.keypair.name
}
```
EOT
}

output "log_tank_service" {
  value       = local.otc.log_tank_service
  description = <<-EOT
Log Tank Service

Example output:
```hcl
output "log_tank_service_name" {
  value = module.naming.log_tank_service.name
}
```
EOT
}

output "modelarts" {
  value       = local.otc.modelarts
  description = <<-EOT
ModelArts

Example output:
```hcl
output "modelarts_name" {
  value = module.naming.modelarts.name
}
```
EOT
}

output "mapreduce_service" {
  value       = local.otc.mapreduce_service
  description = <<-EOT
MapReduce Service

Example output:
```hcl
output "mapreduce_service_name" {
  value = module.naming.mapreduce_service.name
}
```
EOT
}

output "nat_gateway" {
  value       = local.otc.nat_gateway
  description = <<-EOT
NAT Gateway

Example output:
```hcl
output "nat_gateway_name" {
  value = module.naming.nat_gateway.name
}
```
EOT
}

output "elastic_ip" {
  value       = local.otc.elastic_ip
  description = <<-EOT
Elastic IP

Example output:
```hcl
output "elastic_ip_name" {
  value = module.naming.elastic_ip.name
}
```
EOT
}

output "bandwidth" {
  value       = local.otc.bandwidth
  description = <<-EOT
bandwidth

Example output:
```hcl
output "bandwidth_name" {
  value = module.naming.bandwidth.name
}
```
EOT
}

output "optical_character_recognition" {
  value       = local.otc.optical_character_recognition
  description = <<-EOT
Optical Character Recognition

Example output:
```hcl
output "optical_character_recognition_name" {
  value = module.naming.optical_character_recognition.name
}
```
EOT
}

output "object_storage_service" {
  value       = local.otc.object_storage_service
  description = <<-EOT
Object Storage Service

Example output:
```hcl
output "object_storage_service_name" {
  value = module.naming.object_storage_service.name
}
```
EOT
}

output "private_link_access_service" {
  value       = local.otc.private_link_access_service
  description = <<-EOT
Private Link Access Service

Example output:
```hcl
output "private_link_access_service_name" {
  value = module.naming.private_link_access_service.name
}
```
EOT
}

output "relational_database_service" {
  value       = local.otc.relational_database_service
  description = <<-EOT
Relational Database Service

Example output:
```hcl
output "relational_database_service_name" {
  value = module.naming.relational_database_service.name
}
```
EOT
}

output "resource_management_service" {
  value       = local.otc.resource_management_service
  description = <<-EOT
Resource Management Service

Example output:
```hcl
output "resource_management_service_name" {
  value = module.naming.resource_management_service.name
}
```
EOT
}

output "resource_template_service" {
  value       = local.otc.resource_template_service
  description = <<-EOT
Resource Template Service

Example output:
```hcl
output "resource_template_service_name" {
  value = module.naming.resource_template_service.name
}
```
EOT
}

output "storage_disaster_recovery_service" {
  value       = local.otc.storage_disaster_recovery_service
  description = <<-EOT
Storage Disaster Recovery Service

Example output:
```hcl
output "storage_disaster_recovery_service_name" {
  value = module.naming.storage_disaster_recovery_service.name
}
```
EOT
}

output "scalable_file_service" {
  value       = local.otc.scalable_file_service
  description = <<-EOT
Scalable File Service

Example output:
```hcl
output "scalable_file_service_name" {
  value = module.naming.scalable_file_service.name
}
```
EOT
}

output "simple_message_notification" {
  value       = local.otc.simple_message_notification
  description = <<-EOT
Simple Message Notification

Example output:
```hcl
output "simple_message_notification_name" {
  value = module.naming.simple_message_notification.name
}
```
EOT
}

output "software_repository_for_container" {
  value       = local.otc.software_repository_for_container
  description = <<-EOT
Software Repository for Container

Example output:
```hcl
output "software_repository_for_container_name" {
  value = module.naming.software_repository_for_container.name
}
```
EOT
}

output "tag_management_service" {
  value       = local.otc.tag_management_service
  description = <<-EOT
Tag Management Service

Example output:
```hcl
output "tag_management_service_name" {
  value = module.naming.tag_management_service.name
}
```
EOT
}

output "volume_backup_service" {
  value       = local.otc.volume_backup_service
  description = <<-EOT
Volume Backup Service

Example output:
```hcl
output "volume_backup_service_name" {
  value = module.naming.volume_backup_service.name
}
```
EOT
}

output "disk" {
  value       = local.otc.disk
  description = <<-EOT
Elastic Volume Service

Example output:
```hcl
output "disk_name" {
  value = module.naming.disk.name
}
```
EOT
}

output "virtual_private_cloud" {
  value       = local.otc.virtual_private_cloud
  description = <<-EOT
Virtual Private Cloud

Example output:
```hcl
output "virtual_private_cloud_name" {
  value = module.naming.virtual_private_cloud.name
}
```
EOT
}

output "subnet" {
  value       = local.otc.subnet
  description = <<-EOT
Virtual Private Cloud Subnet

Example output:
```hcl
output "subnet_name" {
  value = module.naming.subnet.name
}
```
EOT
}

output "route_table" {
  value       = local.otc.route_table
  description = <<-EOT
route table

Example output:
```hcl
output "route_table_name" {
  value = module.naming.route_table.name
}
```
EOT
}

output "security_group" {
  value       = local.otc.security_group
  description = <<-EOT
Security Group

Example output:
```hcl
output "security_group_name" {
  value = module.naming.security_group.name
}
```
EOT
}

output "port" {
  value       = local.otc.port
  description = <<-EOT
networking port

Example output:
```hcl
output "port_name" {
  value = module.naming.port.name
}
```
EOT
}

output "vpc_endpoint" {
  value       = local.otc.vpc_endpoint
  description = <<-EOT
VPC Endpoint

Example output:
```hcl
output "vpc_endpoint_name" {
  value = module.naming.vpc_endpoint.name
}
```
EOT
}

output "vgw" {
  value       = local.otc.vgw
  description = <<-EOT
VPN Gateway

Example output:
```hcl
output "vgw_name" {
  value = module.naming.vgw.name
}
```
EOT
}

output "con" {
  value       = local.otc.con
  description = <<-EOT
VPN Gateway connection

Example output:
```hcl
output "con_name" {
  value = module.naming.con.name
}
```
EOT
}

output "cgw" {
  value       = local.otc.cgw
  description = <<-EOT
Customer Gateway

Example output:
```hcl
output "cgw_name" {
  value = module.naming.cgw.name
}
```
EOT
}

output "peering" {
  value       = local.otc.peering
  description = <<-EOT
VPC Peering Connection

Example output:
```hcl
output "peering_name" {
  value = module.naming.peering.name
}
```
EOT
}
