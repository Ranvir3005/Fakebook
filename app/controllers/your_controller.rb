def search
    @results = YourModel.where("column LIKE ?", "%#{params[:query]}%")
  end
  