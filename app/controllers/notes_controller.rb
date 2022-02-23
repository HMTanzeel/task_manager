class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_note, only: [:show, :edit, :destroy, :update]

  def index
    @notes = current_user.notes
  end

  def new
    @note = current_user.notes.new
  end

  def create
    @note = current_user.notes.create(note_params)
    if @note.save
      redirect_to user_note_path(current_user, @note), notice: 'Note has successfully created.'
    else
      redirect_to new_notes_path, alert: @note.errors.full_messages
    end
  end

  def show; end

  def edit; end

  def update
    if @note.update(note_params)
      redirect_to user_note_path(current_user, @note)
    else
      redirect_to edit_user_note_path(current_user, @note), alert: @note.errors.full_messages
    end
  end

  def destroy
    if @note.destroy
      redirect_to user_notes_path, notice: 'Note has been deleted succesfully.'
    else
      redirect_to user_note_path(current_user, @note), alert: @note.errors.full_messages
    end
  end

  private
    def note_params
      params.require(:note).permit(:title, :body)
    end

    def find_note
      @note = current_user.notes.find(params[:id])
    end
end
