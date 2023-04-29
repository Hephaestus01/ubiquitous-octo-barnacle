require 'json'

class EmbeddingService
    def initialize
        @data_file_path = Rails.root.join('app','data','embeddings.json')
        @embeddings_data = JSON.parse(File.read(@data_file_path))
        @paragraphs = @embeddings_data['paragraphs']
    end

    def most_relevant_info(question)
        # TO-DO: Write logic for finding relevant info based on question

        #For now, using this:
        @paragraphs.first
    end
end
