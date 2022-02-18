class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = current_user.notes.new
  end

  def create
    @note = current_user.notes.create(note_params)
    respond_to do |format|
      if @note.save
        format.html { redirect_to [current_user, @note], notice: "Note has successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      format.html { redirect_to @note }
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @note = current_user.notes.find(params[:id])
    if @note.destroy
      redirect_to root_path
    else
      redirect_to @note
    end
  end

  private
    def note_params
      params.permit(:body)
    end
end
