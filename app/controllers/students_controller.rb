class StudentsController < BaseController
  def show
    @student = Student.find(params[:id])
  end
end
