class NotesController < ApplicationController
  before_action :set_note, only: [:update, :destroy]
  before_action :authenticate_user

  # GET /notes
  def index
    @notes = Note.where(user: current_user)
    render json: @notes, status: 200
  end

  # POST /notes
  def create
    @note = Note.new(note_params.merge(user: current_user))

    if @note.save
      render json: @note, status: :created, location: @note
    else
      render json: @note.errors, status: 422
    end
  end

  # PATCH/PUT /notes/1
  def update
    if @note.update_attributes(note_params)
      render json: @note.updated_at.strftime("%F %T"), status: 200
    else
      render json: @note.errors, status: 422
    end
  end

  # DELETE /notes/1
  def destroy
    if @note.user == current_user && @note.destroy
      render json: {head: :no_content}
    else
      render json: {head: :no_content}, status: 422
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def note_params
      params.permit(:title, :starred, :text)
    end
end
