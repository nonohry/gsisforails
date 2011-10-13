module KrsHelper
  

  
  def total_sks
    @krs.inject { |memo, n| memo.teaching.sks + n.teaching.sks }
  end
end
