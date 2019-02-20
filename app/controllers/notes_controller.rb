class NotesController < ApplicationController
    before_action :find_note, only: [:show, :edit, :update, :destroy]
    
    def index
        @notes = Note.where(user_id: current_user)
    end

    def show
    end

    def new # only responsible for view
        @note = current_user.notes.build
    end

    def create
        @note = current_user.notes.build(note_params)

        if @note.save
            redirect_to @note
        else
            render 'new'
        end
    end
    
    def edit # the noteument is edited in the view file
    end
    
    def update
        if @note.update(note_params) # if note is updated, save changes and go back to note
            redirect_to @note
        else
            render 'edit'
        end
    end

    def destroy
        @note.destroy
    end
    
    private

        def find_note
            @note = Note.find(params[:id])
        end

        def note_params
            params.require(:note).permit(:title, :content)
        end
end
