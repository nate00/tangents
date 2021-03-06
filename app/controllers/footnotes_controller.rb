class FootnotesController < ApplicationController
  before_filter :load_post

  # GET /footnotes
  # GET /footnotes.json
  def index
    @footnotes = Footnote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @footnotes }
    end
  end

  # GET /footnotes/1
  # GET /footnotes/1.json
  def show
    @footnote = Footnote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @footnote }
    end
  end

  # GET /footnotes/new
  # GET /footnotes/new.json
  def new
    @footnote = Footnote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @footnote }
    end
  end

  # GET /footnotes/1/edit
  def edit
    @footnote = Footnote.find(params[:id])
  end

  # POST /footnotes
  # POST /footnotes.json
  def create
    @footnote = @post.footnotes.new(params[:footnote])

    if @footnote.save
      redirect_to edit_post_path(@post), notice: 'Tangent added successfully'
    else
      redirect_to @post, alert: 'Unable to add tangent'
    end
  end

  # PUT /footnotes/1
  # PUT /footnotes/1.json
  def update
    @footnote = Footnote.find(params[:id])

    respond_to do |format|
      if @footnote.update_attributes(params[:footnote])
        format.html { redirect_to @footnote, notice: 'Footnote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @footnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footnotes/1
  # DELETE /footnotes/1.json
  def destroy
    @footnote = Footnote.find(params[:id])
    @footnote.destroy

    respond_to do |format|
      format.html { redirect_to footnotes_url }
      format.json { head :no_content }
    end
  end

  private
    def load_post
      @post = Post.find(params[:post_id])
    end
end
