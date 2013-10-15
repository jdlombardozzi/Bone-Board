class PagesController < ApplicationController
  def index
    redmine_config = YAML.load_file(File.open('config/redmine.yml'))

    response = HTTParty.get("#{redmine_config['api']['endpoint']}/issues.json?project_id=#{redmine_config['projects']['websites']}&offset=0&limit=100&query_id=119", :headers => {'content-type' => "application/xml", 'X-Redmine-API-Key' => redmine_config['api']['key']})

    raise 'failed' unless response.success?

    @tickets = JSON::parse(response.body)['issues']
  end
end
