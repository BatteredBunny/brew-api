def strip: del(
  .tap_git_head, .tap, .installed_time, .installed,
  .ruby_source_path, .ruby_source_checksum,
  .auto_updates, .autobump, .bundle_short_version, .bundle_version,
  .caveats, .caveats_rosetta, .conflicts_with, .container,
  .deprecate_args, .deprecated, .deprecation_date, .deprecation_reason,
  .deprecation_replacement_cask, .deprecation_replacement_formula,
  .disable_args, .disable_date, .disable_reason,
  .disable_replacement_cask, .disable_replacement_formula, .disabled,
  .full_token, .language_variations, .languages, .no_autobump_message,
  .old_tokens, .outdated, .pinned, .pinned_version, .rename,
  .skip_livecheck, .supported_platforms, .url_specs
);

map(strip | if has("variations") then .variations |= map_values(strip) else . end)[]
