class ListsController < ApplicationController
  def new
    @list = List.new

    def create
      # １.&2. データを受け取り新規登録するためのインスタンス作成
      list = List.new(list_params)
      # 3. データをデータベースに保存するためのsaveメソッド実行
      list.save
      # 4. トップ画面へリダイレクト
      redirect_to '/lists'
    end
  end

  def index
    @lists = List.all
  end

  def show
  end

  def edit
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end

end
