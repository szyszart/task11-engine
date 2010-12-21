module Postit
  class NotesController < ApplicationController
    def index
        @notes = Note.all
    end
    
    def new
        @note = Note.new
    end    
    
    def create
        @note = Note.new(params[:note])
        if @note.save
          flash[:notice] = "Your note has been added."
          redirect_to notes_path
        else
          render :action => 'new'
        end        
    end
    
    def edit
        @note = Note.find(params[:id])        
    end
   
    def update 
        @note = Note.find(params[:id])
        if @note.update_attributes(params[:note])
            flash[:notice] = "Your note has been updated."
            redirect_to notes_path
        else
            render :action => :edit
        end
    end
   
    def destroy    
  		@note = Note.destroy(params[:id])
		@note.destroy
        flash[:notice] = "Note has been removed."		
		redirect_to notes_path
    end
  end
end
