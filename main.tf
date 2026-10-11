resource "cloudflare_zero_trust_access_application" "zero_trust_access_applications" {
  for_each = var.zero_trust_access_applications

  account_id                      = each.value.account_id
  allow_authenticate_via_warp     = each.value.allow_authenticate_via_warp
  allow_iframe                    = each.value.allow_iframe
  allowed_idps                    = each.value.allowed_idps
  app_launcher_logo_url           = each.value.app_launcher_logo_url
  app_launcher_visible            = each.value.app_launcher_visible
  auto_redirect_to_identity       = each.value.auto_redirect_to_identity
  bg_color                        = each.value.bg_color
  cors_headers                    = each.value.cors_headers
  custom_deny_message             = each.value.custom_deny_message
  custom_deny_url                 = each.value.custom_deny_url
  custom_non_identity_deny_url    = each.value.custom_non_identity_deny_url
  custom_pages                    = each.value.custom_pages
  destinations                    = each.value.destinations
  domain                          = each.value.domain
  enable_binding_cookie           = each.value.enable_binding_cookie
  footer_links                    = each.value.footer_links
  header_bg_color                 = each.value.header_bg_color
  http_only_cookie_attribute      = each.value.http_only_cookie_attribute
  landing_page_design             = each.value.landing_page_design
  logo_url                        = each.value.logo_url
  mfa_config                      = each.value.mfa_config
  name                            = each.value.name
  oauth_configuration             = each.value.oauth_configuration
  options_preflight_bypass        = each.value.options_preflight_bypass
  path_cookie_attribute           = each.value.path_cookie_attribute
  policies                        = each.value.policies
  read_service_tokens_from_header = each.value.read_service_tokens_from_header
  saas_app                        = each.value.saas_app
  same_site_cookie_attribute      = each.value.same_site_cookie_attribute
  scim_config                     = each.value.scim_config
  self_hosted_domains             = each.value.self_hosted_domains
  service_auth_401_redirect       = each.value.service_auth_401_redirect
  session_duration                = each.value.session_duration
  skip_app_launcher_login_page    = each.value.skip_app_launcher_login_page
  skip_interstitial               = each.value.skip_interstitial
  tags                            = each.value.tags
  target_criteria                 = each.value.target_criteria
  type                            = each.value.type
  zone_id                         = each.value.zone_id
}

