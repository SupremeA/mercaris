class Report < ActiveRecord::Base

  validates :contract, :price, presence: true :message => "CSV must have a contract and price."

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Report.create row.to_hash
    end
  end

end
