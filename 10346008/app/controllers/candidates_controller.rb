class CandidatesController < ApplicationController
  
    def index
      @candidates = Candidate.all
    end
    #新增書籍
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
    #編輯書籍
    def edit
      @candidate = Candidate.find_by(id: params[:id])
    end
    def update
      @candidate = Candidate.find_by(id: params[:id])

      if @candidate.update(candidate_params)
        # 成功
        redirect_to candidates_path, notice: "資料更新成功!"
      else
        # 失敗
        render :edit
      end
    end
  
    private
    def candidate_params
      params.require(:candidate).permit(:bookname, :introduction, :name, :price)
    end
end
