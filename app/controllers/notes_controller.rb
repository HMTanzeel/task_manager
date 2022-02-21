class NotesController < ApplicationController
  before_action :authenticate_user!

  def index
    @notes = current_user.notes
  end

  def new
    @note = current_user.notes.new
  end

  def create
    @note = current_user.notes.create(note_params)
    if @note.save
      redirect_to [current_user, @note], notice: "Note has successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = current_user.notes.find(params[:id])
  end

  def update
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
      params.require(:note).permit(:title, :body)
    end
end
