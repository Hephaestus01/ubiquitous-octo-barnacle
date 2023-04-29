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

            # render response in JSON
            render json: {status: 'success', message: 'Question has been received', question:question}
        end
    end
end
