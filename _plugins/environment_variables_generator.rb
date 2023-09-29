# Plugin to add environment variables to the `site` object in Liquid templates
require 'dotenv'

module Jekyll
  class EnvironmentVariablesGenerator < Generator
    priority :highest
    
    def generate(site)
      Dotenv.overload
      site.config['env'] = Dotenv.overload

      site.config['AIRTABLE_API_KEY']   = ENV['AIRTABLE_API_KEY']
    end
  end
end
