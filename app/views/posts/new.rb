   class MyPage < ::Stache::Mustache::View
     def my_haml_sidebar
       @view.render partial: 'posts/new_post'
     end
   end