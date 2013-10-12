class CustomerFeedbacksController < ApplicationController
  # GET /customer_feedbacks
  # GET /customer_feedbacks.json
  def index
    @customer_feedbacks = CustomerFeedback.order(:id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_feedbacks }
    end
  end

  # GET /customer_feedbacks/1
  # GET /customer_feedbacks/1.json
  def show
    @customer_feedback = CustomerFeedback.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_feedback }
    end
  end

  # GET /customer_feedbacks/new
  # GET /customer_feedbacks/new.json
  def new
    @customer_feedback = CustomerFeedback.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_feedback }
    end
  end

  # GET /customer_feedbacks/1/edit
  def edit
    @customer_feedback = CustomerFeedback.find(params[:id])
  end

  # POST /customer_feedbacks
  # POST /customer_feedbacks.json
  def create
    @customer_feedback = CustomerFeedback.new(params[:customer_feedback])

    respond_to do |format|
      if @customer_feedback.save
        format.html { redirect_to new_customer_feedback_path, notice: 'Dear Customer your requirements are successfully submitted, vidhata cranes will soon get back to you, Thank you!.' }
        format.json { render json: @customer_feedback, status: :created, location: @customer_feedback }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_feedbacks/1
  # PUT /customer_feedbacks/1.json
  def update
    @customer_feedback = CustomerFeedback.find(params[:id])

    respond_to do |format|
      if @customer_feedback.update_attributes(params[:customer_feedback])
        format.html { redirect_to @customer_feedback, notice: 'Customer feedback was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_feedbacks/1
  # DELETE /customer_feedbacks/1.json
  def destroy
    @customer_feedback = CustomerFeedback.find(params[:id])
    @customer_feedback.destroy

    respond_to do |format|
      format.html { redirect_to customer_feedbacks_url }
      format.json { head :no_content }
    end
  end
end
