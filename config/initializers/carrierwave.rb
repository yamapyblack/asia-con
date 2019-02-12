CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws' 
  config.fog_credentials = {
   provider: 'AWS',
    aws_access_key_id: Settings.aws.aws_access_key_id,
    aws_secret_access_key: Settings.aws.aws_secret_access_key,
    region: 'ap-northeast-1'
  }

  config.fog_directory  = Settings.aws.aws_bucket_name
  config.cache_storage = :fog
end
