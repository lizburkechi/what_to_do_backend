class NotesController < ApplicationController

    def index
        @notes = Note.all
        render json: @notes
    end

    def create
       @note = Note.create(note_params)
        render json: @note
    end

    def show
        @note = Note.find_by(id: params[:id])
        render json: @note
    end

    def update
        @note = Note.find_by(id: params[:id])
        @note.update(note_params)
        render json: @note      
    end

    def destroy
        @note = Note.find_by(id: params[:id])
        @note.destroy
        render json: @note
    end

    private 

    def note_params
    params.require(:note).permit(:content, :user_id, :activity_id)
    end
end
