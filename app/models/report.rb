class Report < ActiveRecord::Base

  validates :contract, :price, presence: true


  scope :corn, -> { where(contract: "Corn") } #sorts data set by contract name
  scope :organic, -> { where(contract: "Organic Corn") }

 #imports csv file into model first row is header and must be in contract, start_time, end_time, source, price format
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Report.create row.to_hash
    end
  end

end
