class Book < ActiveRecord::Base
	self.per_page = 3
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :author, presence: true
	 validates :year, numericality: true
	 validates :name, length: { minimum: 3,message: "- please enter 3 chars"}
	 
	 before_save :merge_name
	 after_destroy :write_into_log
	 
	 def merge_name
		 self.name = self.name + " By s" + self.author
	 end
	 
	 def write_into_log
	   logger.error "Alas!...A book has been deleted..............."
	 end
end
