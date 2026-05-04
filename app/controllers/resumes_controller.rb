class ResumesController < ApplicationController
    require "pdf-reader"
  
    def new
    end
  
    def create
      file = params[:resume]
      return render plain: "No file uploaded" if file.nil?
  
      text = extract_text(file)
  
      text = text[0..3000]   # ✅ ADD THIS LINE HERE
  
      @result = OpenaiService.analyze_resume(text)
  
      render :result
    end
  
    private
  
    def extract_text(file)
      reader = PDF::Reader.new(file.path)
  
      text = reader.pages.map(&:text).join("\n")
  
      text.encode("UTF-8", invalid: :replace, undef: :replace, replace: "")
    end
  end