class TeachersController < BaseController
  def index
    @teachers = Teacher.all
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.courses.destroy_all
    @teacher.destroy
  end
end
