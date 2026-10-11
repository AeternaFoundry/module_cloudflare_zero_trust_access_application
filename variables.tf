variable "zero_trust_access_applications" {
  description = <<EOT
Map of zero_trust_access_applications, attributes below
Optional:
    - account_id
    - allow_authenticate_via_warp
    - allow_iframe
    - allowed_idps
    - app_launcher_logo_url
    - app_launcher_visible
    - auto_redirect_to_identity
    - bg_color
    - cors_headers
    - custom_deny_message
    - custom_deny_url
    - custom_non_identity_deny_url
    - custom_pages
    - destinations
    - domain
    - enable_binding_cookie
    - footer_links
    - header_bg_color
    - http_only_cookie_attribute
    - landing_page_design
    - logo_url
    - mfa_config
    - name
    - oauth_configuration
    - options_preflight_bypass
    - path_cookie_attribute
    - policies
    - read_service_tokens_from_header
    - saas_app
    - same_site_cookie_attribute
    - scim_config
    - self_hosted_domains
    - service_auth_401_redirect
    - session_duration
    - skip_app_launcher_login_page
    - skip_interstitial
    - tags
    - target_criteria
    - type
    - zone_id
EOT

  type = map(object({
    account_id                  = optional(string)
    allow_authenticate_via_warp = optional(bool)
    allow_iframe                = optional(bool)
    allowed_idps                = optional(set(string))
    app_launcher_logo_url       = optional(string)
    app_launcher_visible        = optional(bool)
    auto_redirect_to_identity   = optional(bool)
    bg_color                    = optional(string)
    cors_headers = optional(object({
      allow_all_headers = optional(bool)
      allow_all_methods = optional(bool)
      allow_all_origins = optional(bool)
      allow_credentials = optional(bool)
      allowed_headers   = optional(set(string))
      allowed_methods   = optional(set(string))
      allowed_origins   = optional(set(string))
      max_age           = optional(number)
    }))
    custom_deny_message          = optional(string)
    custom_deny_url              = optional(string)
    custom_non_identity_deny_url = optional(string)
    custom_pages                 = optional(list(string))
    destinations = optional(list(object({
      cidr          = optional(string)
      hostname      = optional(string)
      l4_protocol   = optional(string)
      mcp_server_id = optional(string)
      port_range    = optional(string)
      type          = optional(string)
      uri           = optional(string)
      vnet_id       = optional(string)
      worker_id     = optional(string)
    })))
    domain                = optional(string)
    enable_binding_cookie = optional(bool)
    footer_links = optional(list(object({
      name = string
      url  = string
    })))
    header_bg_color            = optional(string)
    http_only_cookie_attribute = optional(bool)
    landing_page_design = optional(object({
      button_color      = optional(string)
      button_text_color = optional(string)
      image_url         = optional(string)
      message           = optional(string)
      title             = optional(string)
    }))
    logo_url = optional(string)
    mfa_config = optional(object({
      allowed_authenticators = optional(list(string))
      mfa_disabled           = optional(bool)
      session_duration       = optional(string)
    }))
    name = optional(string)
    oauth_configuration = optional(object({
      dynamic_client_registration = optional(object({
        allow_any_on_localhost = optional(bool)
        allow_any_on_loopback  = optional(bool)
        allowed_uris           = optional(list(string))
        enabled                = optional(bool)
      }))
      enabled = optional(bool)
      grant = optional(object({
        access_token_lifetime = optional(string)
        session_duration      = optional(string)
      }))
    }))
    options_preflight_bypass = optional(bool)
    path_cookie_attribute    = optional(bool)
    policies = optional(list(object({
      connection_rules = optional(object({
        rdp = optional(object({
          allowed_clipboard_local_to_remote_formats = optional(list(string))
          allowed_clipboard_remote_to_local_formats = optional(list(string))
        }))
        ssh = optional(object({
          allow_email_alias = optional(bool)
          usernames         = list(string)
        }))
      }))
      decision = optional(string)
      exclude = optional(set(object({
        any_valid_service_token = optional(object({
        }))
        auth_context = optional(object({
          ac_id                = string
          id                   = string
          identity_provider_id = string
        }))
        auth_method = optional(object({
          auth_method = string
        }))
        azure_ad = optional(object({
          id                   = string
          identity_provider_id = string
        }))
        certificate = optional(object({
        }))
        common_name = optional(object({
          common_name = string
        }))
        device_posture = optional(object({
          integration_uid = string
        }))
        email = optional(object({
          email = string
        }))
        email_domain = optional(object({
          domain = string
        }))
        email_list = optional(object({
          id = string
        }))
        everyone = optional(object({
        }))
        external_evaluation = optional(object({
          evaluate_url = string
          keys_url     = string
        }))
        geo = optional(object({
          country_code = string
        }))
        github_organization = optional(object({
          identity_provider_id = string
          name                 = string
          team                 = optional(string)
        }))
        group = optional(object({
          id = string
        }))
        gsuite = optional(object({
          email                = string
          identity_provider_id = string
        }))
        ip = optional(object({
          ip = string
        }))
        ip_list = optional(object({
          id = string
        }))
        linked_app_token = optional(object({
          app_uid = string
        }))
        login_method = optional(object({
          id = string
        }))
        oidc = optional(object({
          claim_name           = string
          claim_value          = string
          identity_provider_id = string
        }))
        okta = optional(object({
          identity_provider_id = string
          name                 = string
        }))
        saml = optional(object({
          attribute_name       = string
          attribute_value      = string
          identity_provider_id = string
        }))
        service_token = optional(object({
          token_id = string
        }))
      })))
      id = optional(string)
      include = optional(set(object({
        any_valid_service_token = optional(object({
        }))
        auth_context = optional(object({
          ac_id                = string
          id                   = string
          identity_provider_id = string
        }))
        auth_method = optional(object({
          auth_method = string
        }))
        azure_ad = optional(object({
          id                   = string
          identity_provider_id = string
        }))
        certificate = optional(object({
        }))
        common_name = optional(object({
          common_name = string
        }))
        device_posture = optional(object({
          integration_uid = string
        }))
        email = optional(object({
          email = string
        }))
        email_domain = optional(object({
          domain = string
        }))
        email_list = optional(object({
          id = string
        }))
        everyone = optional(object({
        }))
        external_evaluation = optional(object({
          evaluate_url = string
          keys_url     = string
        }))
        geo = optional(object({
          country_code = string
        }))
        github_organization = optional(object({
          identity_provider_id = string
          name                 = string
          team                 = optional(string)
        }))
        group = optional(object({
          id = string
        }))
        gsuite = optional(object({
          email                = string
          identity_provider_id = string
        }))
        ip = optional(object({
          ip = string
        }))
        ip_list = optional(object({
          id = string
        }))
        linked_app_token = optional(object({
          app_uid = string
        }))
        login_method = optional(object({
          id = string
        }))
        oidc = optional(object({
          claim_name           = string
          claim_value          = string
          identity_provider_id = string
        }))
        okta = optional(object({
          identity_provider_id = string
          name                 = string
        }))
        saml = optional(object({
          attribute_name       = string
          attribute_value      = string
          identity_provider_id = string
        }))
        service_token = optional(object({
          token_id = string
        }))
      })))
      mfa_config = optional(object({
        allowed_authenticators = optional(list(string))
        mfa_disabled           = optional(bool)
        session_duration       = optional(string)
      }))
      name       = optional(string)
      precedence = optional(number)
      require = optional(set(object({
        any_valid_service_token = optional(object({
        }))
        auth_context = optional(object({
          ac_id                = string
          id                   = string
          identity_provider_id = string
        }))
        auth_method = optional(object({
          auth_method = string
        }))
        azure_ad = optional(object({
          id                   = string
          identity_provider_id = string
        }))
        certificate = optional(object({
        }))
        common_name = optional(object({
          common_name = string
        }))
        device_posture = optional(object({
          integration_uid = string
        }))
        email = optional(object({
          email = string
        }))
        email_domain = optional(object({
          domain = string
        }))
        email_list = optional(object({
          id = string
        }))
        everyone = optional(object({
        }))
        external_evaluation = optional(object({
          evaluate_url = string
          keys_url     = string
        }))
        geo = optional(object({
          country_code = string
        }))
        github_organization = optional(object({
          identity_provider_id = string
          name                 = string
          team                 = optional(string)
        }))
        group = optional(object({
          id = string
        }))
        gsuite = optional(object({
          email                = string
          identity_provider_id = string
        }))
        ip = optional(object({
          ip = string
        }))
        ip_list = optional(object({
          id = string
        }))
        linked_app_token = optional(object({
          app_uid = string
        }))
        login_method = optional(object({
          id = string
        }))
        oidc = optional(object({
          claim_name           = string
          claim_value          = string
          identity_provider_id = string
        }))
        okta = optional(object({
          identity_provider_id = string
          name                 = string
        }))
        saml = optional(object({
          attribute_name       = string
          attribute_value      = string
          identity_provider_id = string
        }))
        service_token = optional(object({
          token_id = string
        }))
      })))
    })))
    read_service_tokens_from_header = optional(string)
    saas_app = optional(object({
      access_token_lifetime            = optional(string)
      allow_pkce_without_client_secret = optional(bool)
      app_launcher_url                 = optional(string)
      auth_type                        = optional(string)
      consumer_service_url             = optional(string)
      custom_attributes = optional(list(object({
        friendly_name = optional(string)
        name          = optional(string)
        name_format   = optional(string)
        required      = optional(bool)
        source = optional(object({
          name = optional(string)
          name_by_idp = optional(list(object({
            idp_id      = optional(string)
            source_name = optional(string)
          })))
        }))
      })))
      custom_claims = optional(list(object({
        name     = optional(string)
        required = optional(bool)
        scope    = optional(string)
        source = optional(object({
          name        = optional(string)
          name_by_idp = optional(map(string))
        }))
      })))
      default_relay_state = optional(string)
      grant_types         = optional(list(string))
      group_filter_regex  = optional(string)
      hybrid_and_implicit_options = optional(object({
        return_access_token_from_authorization_endpoint = optional(bool)
        return_id_token_from_authorization_endpoint     = optional(bool)
      }))
      idp_entity_id             = optional(string)
      name_id_format            = optional(string)
      name_id_transform_jsonata = optional(string)
      redirect_uris             = optional(list(string))
      refresh_token_options = optional(object({
        lifetime = optional(string)
      }))
      saml_attribute_transform_jsonata = optional(string)
      scopes                           = optional(list(string))
      sp_entity_id                     = optional(string)
      sso_endpoint                     = optional(string)
    }))
    same_site_cookie_attribute = optional(string)
    scim_config = optional(object({
      authentication = optional(object({
        authorization_url = optional(string)
        client_id         = optional(string)
        client_secret     = optional(string)
        password          = optional(string)
        scheme            = string
        scopes            = optional(list(string))
        token             = optional(string)
        token_url         = optional(string)
        user              = optional(string)
      }))
      deactivate_on_delete = optional(bool)
      enabled              = optional(bool)
      idp_uid              = string
      mappings = optional(list(object({
        enabled = optional(bool)
        filter  = optional(string)
        operations = optional(object({
          create = optional(bool)
          delete = optional(bool)
          update = optional(bool)
        }))
        schema            = string
        strictness        = optional(string)
        transform_jsonata = optional(string)
      })))
      remote_uri = string
    }))
    self_hosted_domains          = optional(set(string))
    service_auth_401_redirect    = optional(bool)
    session_duration             = optional(string)
    skip_app_launcher_login_page = optional(bool)
    skip_interstitial            = optional(bool)
    tags                         = optional(set(string))
    target_criteria = optional(list(object({
      port              = number
      protocol          = string
      target_attributes = map(any)
    })))
    type    = optional(string)
    zone_id = optional(string)
  }))
}

