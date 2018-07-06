class CommentsController < ApplicationController

def create
@comment = Comment.create
end
end
