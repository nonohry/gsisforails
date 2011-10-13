class StudentsController < ApplicationController
  before_filter :confirm_admin

  def index
    @search = Student.search(params[:search])
    @students = @search.order('tahun_masuk DESC').page(params[:page]).per(10)
    
    respond_to do |format|
      format.html
      format.xls { 
        send_data @students.all.to_xls(
            :columns => [:nama_depan, :nama_belakang, :tempat_lahir, :tanggal_lahir, :tahun_masuk], 
            :headers => ['Nama depan', 'Nama Belakang', 'tempat_lahir', 'tanggal_lahir', 'Angkatan']
            ), 
        :filename => 'mahasiswa.xls' }
    end
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params[:student])
    
    if @student.save
      redirect_to students_path, notice: 'Data Mahasiswa berhasil disimpan.'
    else
      render action: "new"
    end
  end

  def update
    @student = Student.find(params[:id])

    if @student.update_attributes(params[:student])
      redirect_to students_path, notice: 'Data Mahasiswa berhasil diperbaharui.'
    else
      render action: "edit"
    end
  end


  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to students_url
  end
  
  def home
  end
end
