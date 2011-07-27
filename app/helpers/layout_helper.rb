module LayoutHelper
  
  def title(str)
    content_for(:title) { str+" | " }
    str
  end
  
  def meta_keywords(str)
    content_for(:keywords) { str }
  end
  
  def meta_description(str)
    content_for(:description) { str }
  end
  
  def google_analaytics_code()
    return "" if Setting[:ga_web_property_id].nil?
    %Q{
      <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', '#{Setting[:ga_web_property_id]}']);
        _gaq.push(['_trackPageview']);

        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

      </script>
    }.html_safe
  end
  
end