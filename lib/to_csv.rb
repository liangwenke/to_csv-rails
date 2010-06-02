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
#			  #}
#      end
#    end
#  end
  
  def to_csv(options = {})
    return '' if self.empty?

    #columns = self.first.class.content_columns # not include the ID column
    if options[:only]
      columns = Array(options[:only]).map(&:to_sym)
    else
      columns = self.first.class.columns - Array(options[:except]).map(&:to_sym)
    end
    
    return '' if columns.empty?
    
    data = []
    # header
    data << columns.collect(&:human_name).join(', ') unless options[:header] == false
    self.each do |obj|
      data << columns.collect{ |column| obj.send(column.name) }.join(', ')
    end
    data.join("\n")
  end
  
end
