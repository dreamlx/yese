::CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = "93vlzlK9UlO6UhZaVlrZ4RyVanIv5f1meAX_ofK2"
  config.qiniu_secret_key    = "7UGe9arh_jrxTQGa1WLba3D8xDZ-FbXOJSVYAJt7"
  config.qiniu_bucket        = "caster"
  config.qiniu_bucket_domain = "caster.qiniudn.com"
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocal      = "http"
end