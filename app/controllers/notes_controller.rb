class NotesController < ApplicationController
  before_action :set_note, only: [:update, :destroy]
  # before_action :authenticate_user
  # authorization needs to be built as well

  # GET /notes
  def index
    if params[:user_id]
      @notes = Note.where(user_id: params[:user_id])
    else
      @notes = Note.all
    end

    render json: @notes
  end

  # POST /notes
  def create
    @note = Note.new(note_params)

    if @note.save
      render json: @note, status: :created, location: @note
    else
      render json: @note.errors, status: 422
    end
  end

  # PATCH/PUT /notes/1
  def update
    if @note.update(note_params)
      render json: @note
    else
      render json: @note.errors, status: 422
    end
  end

  # DELETE /notes/1
  def destroy
    @note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def note_params
      params.fetch(:note, {})
    end
end
