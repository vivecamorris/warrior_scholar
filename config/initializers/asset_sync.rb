AssetSync.configure do |config|
  config.fog_provider = 'AWS'
  config.fog_directory = 'warriorscholar-assets'
  config.aws_access_key_id = 'AKIAI5KW273DBDVXDTAA'
  config.aws_secret_access_key = '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'

  # Don't delete files from the store
  # config.existing_remote_files = 'keep'
  #
  # Increase upload performance by configuring your region
  # config.fog_region = 'eu-west-1'
  #
  # Automatically replace files with their equivalent gzip compressed version
  # config.gzip_compression = true
  #
  # Use the Rails generated 'manifest.yml' file to produce the list of files to
  # upload instead of searching the assets directory.
  # config.manifest = true
  #
  # Fail silently.  Useful for environments such as Heroku
  # config.fail_silently = true
end