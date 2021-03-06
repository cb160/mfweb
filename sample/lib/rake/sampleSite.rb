require 'mfweb/core'

class SampleSite < Mfweb::Core::Site
  def load_skeleton
    @header = "<div id = 'banner'></div>"
    @footer = "<div id = 'footer'></div>"
    @skeleton = Mfweb::Core::PageSkeleton.new(@header, @footer, 'global.css')    
  end
end

Mfweb::Core::Site.init(SampleSite.new)

markdown_task('index.md', '.', :home, "Sample Home Page",  
              Mfweb::Core::Site.skeleton.with_css('/home.css'))

sassTask 'css/home.scss', '.', :home


