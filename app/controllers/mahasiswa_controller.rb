class MahasiswaController < ApplicationController
  before_filter :confirm_admin, :mahasiswa
  layout 'mahasiswa'
  
  def biodata
  end
    
    def simpan_biodata
      if @mahasiswa.update_attributes(params[:mahasiswa])
        redirect_to biodata_path(@mahasiswa.id), notice: 'Data Mahasiswa berhasil di update'
      else
        render 'biodata'
      end
    end

  def password
   @password = @mahasiswa
  end

  def status
  end

  def krs
    @smtMhs = params[:smt]
    @krs = @mahasiswa.card_plans.where(smtMhs: @smtMhs)
  end
    
    def hapus_krs
      @krs = CardPlan.find(params[:krs_id])
      @krs.destroy
      redirect_to krs_path(@mahasiswa.id)
    end
    
    def print_krs
      @smtMhs = @mahasiswa.card_plans.maximum("smtMhs").to_i
      @krs = @mahasiswa.card_plans.where(smtMhs: @smtMhs)
      render layout: 'krs'
    end

  def khs
    @khs = @mahasiswa.card_plans
  end
    def print_khs
      @smtMhs = @mahasiswa.recaps.maximum("smtMhs").to_i + 1
      @krs = @mahasiswa.card_plans.where(smtMhs: @smtMhs)
      render layout: 'krs'
    end

  def nilai
    @khs = @mahasiswa.card_plans
    render layout: 'krs'
  end
  
    
  def simpan_status
    if @mahasiswa.active_id = params[:active_id]
      @mahasiswa.save
      redirect_to status_path
    else
      render 'status'
    end
  end
  
  def simpan_password
    if @mahasiswa.update_attributes(params[:student])
      redirect_to biodata_path, notice: 'Password berhasil dirubah'
    else
      render 'password'
    end
  end
  
  private
  
    def mahasiswa
      @mahasiswa = Student.find(params[:id])
    end
    
    
  
  

end
