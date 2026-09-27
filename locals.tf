locals {
  random_safe_generation = join("", [random_string.first_letter.result, random_string.main.result])
  random                 = substr(coalesce(var.unique_seed, local.random_safe_generation), 0, var.unique_length)
  prefix                 = join("-", var.prefix)
  prefix_safe            = lower(join("", var.prefix))
  infix                  = join("-", var.infix)
  infix_safe             = lower(join("", var.infix))
  suffix                 = join("-", var.suffix)
  suffix_unique          = join("-", concat(var.suffix, [local.random]))
  suffix_safe            = lower(join("", var.suffix))
  suffix_unique_safe     = lower(join("", concat(var.suffix, [local.random])))

  # Shared format; special cases below retain the existing public output contract.
  service_slugs = {
    anti_ddos                          = "ddos"
    api_gateway                        = "apig"
    application_operations_management  = "aom"
    application_performance_management = "apm"
    auto_scaling                       = "as"
    bandwidth                          = "bandwidth"
    bare_metal_server                  = "bms"
    cgw                                = "cgw"
    cloud_backup_and_recovery          = "cbr"
    cloud_container_engine             = "cce"
    cloud_container_instance           = "cci"
    cloud_eye                          = "ce"
    cloud_firewall                     = "cf"
    cloud_search_client_node           = "csscln"
    cloud_search_cold_node             = "csscon"
    cloud_search_master_node           = "cssman"
    cloud_search_service               = "css"
    cloud_server_backup_service        = "csbs"
    cloud_service_engine               = "cse"
    cloud_trace_service                = "cts"
    con                                = "con"
    data_admin_service                 = "das"
    data_arts_studio                   = "da"
    data_ingestion_service             = "dis"
    data_lake_insight                  = "dli"
    data_replication_service           = "drs"
    data_warehouse_service             = "dws"
    dataarts_studio_cdm                = "cdm"
    dataarts_studio_dlf                = "dayu-dlf"
    database_security_service          = "dss"
    dedicated_host                     = "deh"
    dedicated_host_lizenzen            = "dehl"
    dedicated_web_application_firewall = "dwaf"
    direct_connect                     = "dc"
    disk                               = "disk"
    distributed_cache_service          = "dcs"
    distributed_database_middleware    = "ddm"
    distributed_message_service        = "dms"
    document_database_service          = "dds"
    domain_name_service                = "dns"
    elastic_cloud_server               = "ecs"
    elastic_ip                         = "eip"
    enterprise_router                  = "er"
    functiongraph                      = "fg"
    gaussdb_mysql                      = "gaussdb-mysql"
    geminidb                           = "gdb"
    host_security_service              = "hss"
    identity_access_management         = "iam"
    image_management_service           = "ims"
    key_management_service             = "kms"
    keypair                            = "keypair"
    kms_key                            = "key"
    log_tank_service                   = "lts"
    mapreduce_service                  = "mrs"
    modelarts                          = "ma"
    nat_gateway                        = "nat"
    optical_character_recognition      = "ocr"
    peering                            = "peering"
    port                               = "port"
    private_link_access_service        = "plas"
    relational_database_service        = "rds"
    resource_management_service        = "rms"
    resource_template_service          = "rts"
    route_table                        = "rtb"
    scalable_file_service              = "sfs"
    security_group                     = "sg"
    simple_message_notification        = "smn"
    software_repository_for_container  = "swr"
    storage_disaster_recovery_service  = "sdrs"
    subnet                             = "snet"
    tag_management_service             = "tms"
    vgw                                = "vgw"
    virtual_private_cloud              = "vpc"
    volume_backup_service              = "vbs"
  }

  otc = merge({
    for service, slug in local.service_slugs : service => {
      name        = substr(join("-", compact([local.prefix, slug, local.infix, local.suffix])), 0, 64)
      name_unique = substr(join("-", compact([local.prefix, slug, local.infix, local.suffix_unique])), 0, 64)
      dashes      = true
      slug        = slug
      min_length  = 1
      max_length  = 64
      regex       = "^[a-z0-9][a-z0-9-]+[a-z0-9]$"
    }
    }, {
    no_svc = {
      name        = substr(join("-", compact([local.prefix, "", local.infix, local.suffix])), 0, 40)
      name_safe   = substr(join("", compact([replace(local.prefix_safe, "-", ""), "", replace(local.infix_safe, "-", ""), replace(local.suffix_safe, "-", "")])), 0, 40)
      name_unique = substr(join("-", compact([local.prefix, "", local.infix, local.suffix_unique])), 0, 40)
      dashes      = true
      slug        = ""
      min_length  = 1
      max_length  = 64
      regex       = "^[a-z0-9][a-z0-9-]+[a-z0-9]$"
    }
    object_storage_bucket = {
      name        = substr(join("", compact([local.prefix_safe, "osb", local.infix_safe, local.suffix_safe])), 0, 64)
      name_unique = substr(join("", compact([local.prefix_safe, "osb", local.infix_safe, local.suffix_unique_safe])), 0, 64)
      dashes      = true
      slug        = "osb"
      min_length  = 1
      max_length  = 64
      regex       = "^[a-z0-9][a-z0-9-]+[a-z0-9]$"
    }
    web_application_firewall = {
      name        = substr(join("-", compact([local.prefix, "waf", local.infix, local.suffix])), 0, 64)
      name_unique = substr(join("-", compact([local.prefix, "waf", local.infix, local.suffix_unique])), 0, 64)
      dashes      = true
      slug        = "cwaf"
      min_length  = 1
      max_length  = 64
      regex       = "^[a-z0-9][a-z0-9-]+[a-z0-9]$"
    }
    cold_object_storage = {
      name        = substr(join("-", compact([local.prefix, "coss", local.infix, local.suffix])), 0, 63)
      name_unique = substr(join("-", compact([local.prefix, "coss", local.infix, local.suffix_unique])), 0, 63)
      dashes      = false
      slug        = "coss"
      min_length  = 1
      max_length  = 63
      regex       = "^[a-z0-9][a-z0-9-]+[a-z0-9]$"
    }
    object_storage_service = {
      name        = substr(join(".", compact([local.prefix, "obs", local.infix, local.suffix])), 0, 63)
      name_unique = substr(join(".", compact([local.prefix, "obs", local.infix, local.suffix_unique])), 0, 63)
      dashes      = false
      slug        = "obs"
      min_length  = 3
      max_length  = 63
      regex       = "^[a-z0-9]+$"
    }
    vpc_endpoint = {
      name        = substr(join("-", compact([local.prefix, "vpcep", local.infix, local.suffix])), 0, 64)
      name_unique = substr(join("-", compact([local.prefix, "vpcep", local.infix, local.suffix_unique])), 0, 64)
      dashes      = true
      slug        = "vpcep"
      min_length  = 5
      max_length  = 64
      regex       = "^[a-z0-9][a-z0-9-]+[a-z0-9]$"
    }
  })
}
