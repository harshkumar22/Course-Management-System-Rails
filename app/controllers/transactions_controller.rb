class TransactionsController < ApplicationController
    def index
    end
    
    def new
        @transaction = Transaction.new
        @course_enrollment = CourseEnrollment.new
    end

    def create
        if CourseEnrollment.find_by(user_id: params[:user_id], course_id: params[:course_id]) == nil
            @transaction = Transaction.new(user_id: params[:user_id], course_id: params[:course_id], total_amount: params[:total_amount], payment_status: params[:payment_status])
            if @transaction.save
                flash[:notice] = "Payment Succesfull, With Transaction ID: #{@transaction.id}"
                if @transaction.payment_status == true
                    user_session_id = session[:user_id]
                    user = User.find(user_session_id)
                    @course_enrollment = CourseEnrollment.create(user_id: user.id, course_id: @transaction.course_id, valid_till: DateTime.now().next_day(30))
                    @course_enrollment.save
                    redirect_to user
                else
                    render 'new'
                end
            end
        else
            flash[:notice] = "Your are already enrolled in this course."
            render 'new'
        end
    end

    private

    # def transaction_params
    #     params.require(:transaction).permit(:user_id, :course_id, :total_amount, :payment_status)
    # end
end
