class HelloController < ApplicationController
    protect_from_forgery with: :null_session

    def index
        if params['request'] != nil then
            @result = 'Request'
        else
            @result = ''
        end
        
        if request.post? then
            @title = 'Result'
            @msg = 'you typed: ' + params['input1'] + '.'
            @value = params['input1']
        else
            @title = 'Index'
            @msg = 'type text...'
            @value = ''
        end
    end
end
