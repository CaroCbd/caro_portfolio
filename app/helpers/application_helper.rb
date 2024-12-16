module ApplicationHelper

  def svg_tag(svg_path, options = {})
    svg = File.open("app/assets/images/#{svg_path}", "rb") { |file| raw file.read }
    doc = Nokogiri::HTML::DocumentFragment.parse svg
    svg = doc.at_css "svg"
    svg["class"] = options[:class] if options[:class].present?
    if options[:color].present?
      svg.css("path").each do |path|
        path["fill"] = options[:color]
      end
    end
    options[:data].each { |key, value| svg["data-#{key.to_s.gsub('_', '-')}"] = value } if options[:data].present?
    raw svg
  end
end
