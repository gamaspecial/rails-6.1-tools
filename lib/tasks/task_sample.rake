desc 'rake task sample with csv download'
namespace :task_sample do
    task create_csv: :environment do
        require 'csv'

        samples = [
            HogeCsv123.new('¢', '例', '例'),
            HogeCsv123.new('祐', '例', '例'),
            HogeCsv123.new('祐', '例', '例'),
            HogeCsv123.new('祐', '例', '例'),
            HogeCsv123.new('祐', '例', '例'),
            HogeCsv123.new('祐', '例', '例'),
        ]

        csv = CSV.generate(encoding: Encoding::CP932) do |csv|
            column_names = ["h1", "h2", "h3"]
            csv << column_names

            samples.each do |sample|
                csv << [sample.hoge_1, sample.hoge_2, sample.hoge_3]
            end
        end
        p csv
    end
end
