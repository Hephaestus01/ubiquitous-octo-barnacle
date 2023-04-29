module Api
    class QuestionsController < ApplicationController
        #skips CSRF protection
        #TO-DO: Check if needed
        # skip_before_action :verify_authenticity_token

        # define 'create' action for incoming questions
        def create
            # extract question
            question = params[:question]

            # TO-DO: Process question and send to answer logic (via fetch[?])
            embeddings_service = EmbeddingService.new
            relevant_info = embeddings_service.most_relevant_info(question)

            #TO-DO: Replace below with OpenAI or cache logic
            answer = 'Relevant Information: #{relevant_paragraph['text']}'

            # render response in JSON
            render json: {status: 'success', message: 'Question has been received', question:question}
        end
    end
end
