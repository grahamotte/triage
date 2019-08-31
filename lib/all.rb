# sys reqs
# pdftotext
# sqlite

require 'active_support/all'
require 'benchmark'
require 'fileutils'
require 'csv'
require 'json'
require 'namae'
require 'nokogiri'
require 'pp'
require 'set'
require 'rest-client'
require 'street_address'
require 'tty-table'
require 'sqlite3'

require_relative 'utils/csvs'
require_relative 'utils/hashes'
require_relative 'utils/logging'
require_relative 'utils/strings'
require_relative 'utils/files'
require_relative 'utils/jsons'
require_relative 'utils/sqls'
require_relative 'utils/pdfs'
require_relative 'utils/xmls'
require_relative 'utils/benchmarking'

require_relative 'data_handling/addresses'
require_relative 'data_handling/names'

# other

def or_nil
  val = yield
  raise if val.blank? || val == 0
  val
rescue StandardError
end
