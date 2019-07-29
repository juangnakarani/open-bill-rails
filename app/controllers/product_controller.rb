class ProductController < ApplicationController
  include AnotherModule
  def index
    #@products = Product.paginate(page: params[:page])
    page = params[:page]
    if page == nil
      page = 1
    end
    puts "page-> #{page}"
    limit = Product.per_page
    puts "limit-> #{limit}"
    offset = limit * (page.to_i-1)
    puts "offset-> #{offset}"
    @products = Product.limit(limit).offset(offset)

    puts "@products-> #{@products}"
    last = (Product.count / limit).ceil
    puts "last #{last}"
    will_do_pagination(page, last)
  end
end