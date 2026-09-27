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
