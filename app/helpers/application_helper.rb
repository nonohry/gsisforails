module ApplicationHelper
  def nama_kampus
    college = College.first
    if college
      college.nama.upcase
    else
      "Akademik Gopang Rubyist"
    end
  end
  
  def hari_ini
    Time.now.strftime("%A, %d %B %Y")
  end
  
  def alamat_kampus
    college = College.first
    if college
      "#{college.alamat_1} #{college.kota}"
    else
      "Jl.Raya ............... ......... No. ........."
    end
  end
  
  def year_collect(year)
    year.collect { |y| ["#{y}/#{y+1}", "#{y}"] }
  end
end
