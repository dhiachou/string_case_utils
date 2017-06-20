class String
  def underscore
    self.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("- ", "__").
    gsub(/_+/, '_').
    downcase
  end

  def camel_case
    self.gsub(/ /, '_').gsub(/_+/, '_').split('_').map{|e| e.downcase.capitalize} .join
  end
end
