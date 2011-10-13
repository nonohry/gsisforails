class KrsController < ApplicationController
  before_filter :confirm_student
  
  layout 'pupil'
    
  def daftar
    @mahasiswa = current_student
    if ((@mahasiswa.course.parameter.tahun_ajaran != @mahasiswa.card_plans.maximum('tahun_akademik')) || (@mahasiswa.course.parameter.semester != @mahasiswa.card_plans.maximum('semester')))
      @smtMhs = @mahasiswa.card_plans.maximum("smtMhs").to_i + 1
      @teachings = Teaching.where(semester:  @smtMhs)
    else
      render nothing: true
    end
  end

  def print
    @mahasiswa = current_student
    @smtMhs = @mahasiswa.card_plans.maximum("smtMhs").to_i
    @card_plans = @mahasiswa.card_plans.where(smtMhs: @smtMhs)
  end
  
  def print_krs
    @mahasiswa = current_student
    @smtMhs = @mahasiswa.card_plans.maximum("smtMhs").to_i
    @krs = @mahasiswa.card_plans.where(smtMhs: @smtMhs)
    render layout: 'krs'
  end
  
  def print_khs
    @mahasiswa = current_student
    @smtMhs = @mahasiswa.card_plans.maximum("smtMhs").to_i
    @krs = @mahasiswa.card_plans.where(smtMhs: @smtMhs)
    render layout: 'krs'
  end
  
  def simpan_krs
    @mahasiswa = current_student
    @smtMhs = @mahasiswa.card_plans.maximum("smtMhs").to_i + 1
    @tahun_akademik = Parameter.last.tahun_ajaran
    @teaching_ids = params[:teaching_ids]
    @teaching_ids.each do |n|
      CardPlan.create(student_id: @mahasiswa.id, teaching_id: n, semester: Parameter.first.semester, smtMhs: @smtMhs, tahun_akademik: @tahun_akademik) 
    end
    
    redirect_to krs_print_path
  end
  
  def transkrip
    @mahasiswa = current_student
    @khs = @mahasiswa.card_plans
    render layout: 'krs'
  end

end
