
	
	require 'fileutils'
	require 'tempfile'

	class Exec1

		def start

			count = 0

			Dir.new('.').each {|file|
				
				next if File.directory? file

				if file=="coverage.csv"

					file2 = File.open("#{file}","r")
					
					file2.each_line do |line|

						count = count+1

						if count!=1

							string = line.slice(0..(line.index(',0')))

							puts string

						end

					end

					file2.close

				end

			}

		end

	end

	ex1 = Exec1.new

	ex1.start
