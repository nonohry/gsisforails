module ParametersHelper
  
  
  def status_krs(parameter)
    if Time.now > parameter.tanggal_mulai  && Time.now < parameter.tanggal_selesai
			"<b class='buka'>Buka</b>"
		else
			"<span class='tutup'>Tutup</span>"
		end
	end
end
