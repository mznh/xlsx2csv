#about
複数シートを持つxlsxファイルを複数のcsvファイルに変換します。

sheet1,sheet2,sheet3という名前のシートを持つhoge.xlsxに対して適応すると

	hoge_sheet1.csv, hoge_sheet2.csv, hoge_sheet3.csv

という名前のcsvファイルを生成します。

# how to install 
require bundle, roo.
	
	[hoge@fuga] $ git clone git@github.com:mznh/xlsx2csv.git
	[hoge@fuga] $ bundle install 

# how to use 
	[hoge@fuga] $ bundle exec ./conv.rb xlsx_file

