module IndicatorsHelper
  def link_to_indicator(indicator)
    link_to raw(indicator), indicator_path(indicator)
  end
end
