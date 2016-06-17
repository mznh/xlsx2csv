#!/usr/bin/env ruby
# encoding : utf-8
require 'bundler/setup'

Bundler.require

full_file_name = ARGV[0]
file_name = ARGV[0].split(/\./)[0]
data = Roo::Spreadsheet.open(full_file_name)
data.sheets.each do |sheet_name|
	fp = open("#{file_name}_#{sheet_name}.csv","w") 
	data.sheet(sheet_name).each do |row|
		fp.puts row.join(",")
	end
	fp.close()
end
