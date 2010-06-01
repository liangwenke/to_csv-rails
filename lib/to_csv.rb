class Array

#  Example
#
#  class PostsController < ApplicationController
#    def index
#      @posts = Post.all
#      
#      respond_to do |format|
#        format.csv { send_data(@posts.to_csv) }
#        #format.csv {
#			  #  filename = "posts-#{Time.now.strftime("%Y%m%d%H%M%S")}.csv" 
#        #  send_data(@posts.to_csv, :type => "text/csv; charset=utf-8; header=present", :filename => filename)
#			}
#      end
#    end
#  end
  
  def to_csv
    if self.any?
      #columns = self.first.class.content_columns
      columns = self.first.class.columns
      header = columns.collect(&:human_name)
      contents = []
      self.each do |obj|
        contents << columns.collect{ |column| obj.send(column.name) }.join(', ')
      end
      header.join(', ') + "\n" + contents.join("\n")
    end
  end
end
