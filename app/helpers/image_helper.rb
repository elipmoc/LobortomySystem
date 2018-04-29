module ImageHelper
  def select_chara
    Chara.all.map { |x| [x.chara_name, x.id] }
  end
end
