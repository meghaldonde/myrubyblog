ActiveAdmin.register_page "Dashboard" do
	content do
		columns do
			column do
				panel "Recent Posts" do
					table_for Post.order("id desc").limit(15) do
						column :id
						column "Post Title", :title do |post|
						link_to post.title,[:admin,post]
						end
						column :category, :sortable => :category
						column :created_at
					end
					strong(link_to "Show All Posts", :admin_posts)
				end
			end
			
			column do
				panel "Category" do
					table_for Category.order("id desc").limit(15) do
						column :id
						column "Category Name", :name do |category|
						link_to category.name,[:admin,category]
						end						
						column :created_at
					end
					strong(link_to "Show All Categories", :admin_categories)
				end
			end
		end
	end
end
	

#ActiveAdmin.register_page "Dashboard" do


    # Here is an example of a simple dashboard with columns and panels.
    #
     # columns do
       # column do
         # panel "Recent Posts" do
           # ul do
             # Post.recent(5).map do |post|
               # li link_to(post.title, admin_post_path(post))
             # end
           # end
         # end
       # end

       # column do
         # panel "Info" do
           # para "Welcome to ActiveAdmin."
         # end
       # end
     # end
#   end # content
