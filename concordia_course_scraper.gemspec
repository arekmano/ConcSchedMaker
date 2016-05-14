Gem::Specification.new do |spec|
  spec.name        = 'Concordia Course Scraper'
  spec.version     = '0.0.3'
  spec.date        = '2016-05-14'
  spec.summary     = 'Class scraper made specifically for Concordia University'
  spec.description = 'A simple hello world gem'
  spec.author      = 'Arek Manoukian'
  spec.email       = 'manoukian.arek@gmail.com'
  spec.homepage    = 'https://github.com/arekmano/ConcordiaCourseScraper'
  spec.license     = 'MIT'
  spec.files       = Dir[
    'lib/concordia_class_scraper.rb',
    'lib/models/*.rb',
    'lib/scrapers/*.rb'
  ]
end