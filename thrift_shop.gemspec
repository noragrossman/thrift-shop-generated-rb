Gem::Specification.new do |s|
  s.name        = 'thrift_shop'
  s.version     = '0.0.1'
  s.date        = '2015-05-19'
  s.summary     = 'Thrift compiler-generated classes for thrift-shop.'
  s.description = s.summary
  s.authors     = ['Matteo Banerjee']
  s.email       = 'matteo@brigade.com'
  s.licenses      = ['Proprietary']
  s.require_paths = ['lib']
  s.files         = `git ls-files lib`.split("\n")
  s.add_dependency 'thrift'
end
