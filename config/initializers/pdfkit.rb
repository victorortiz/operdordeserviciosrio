# config/initializers/pdfkit.rb
PDFKit.configure do |config|
  config.wkhtmltopdf = 'c:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/wkhtmltopdf-binary-0.9.9.1/bin/wkhtmltopdf'
  config.default_options = {
    :page_size => 'A4',
    :print_media_type => true
  }
  # Use only if your external hostname is unavailable on the server.
  config.root_url = "http://localhost:3000"
  config.verbose = false
end