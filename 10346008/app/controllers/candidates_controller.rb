class CandidatesController < ApplicationController
    def index
      @candidates = Candidate.all
    end
    def new
      @candidate = Candidate.new
    end
    def create
      @candidate = Candidate.new(candidate_params)

      if @candidate.save
        # 成功
        redirect_to candidates_path, notice: "新增書籍成功!"
      else
        # 失敗
        render :new
      end
    end
    private
    def candidate_params
      params.require(:candidate).permit(:bookname, :introduction, :name, :price)
    end
end
