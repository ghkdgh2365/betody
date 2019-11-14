class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index, :board, :share, :introduction]
  def index
  end

  def new
  end

  def create
    @post = Post.new
    @post.my_name = params[:my_name]
    @post.category = params[:category]
    @post.title = params[:title]
    @post.content = params[:content]
    @post.need_day = params[:need_day]
    unless @post.need_day == "on"
      @post.start_day = params[:start_day]
      @post.end_day = params[:end_day]
    end
    @post.need_penalty = params[:need_penalty]
    unless @post.need_penalty == "on"
      @post.menu_id = params[:menu_id]
    end
    @post.receiver_name = params[:receiver_name]
    @post.receiver_number = params[:receiver_number]
    @post.info_agree = params[:info_agree]
    @post.user = current_user
    @post.save
    redirect_to '/home/list'
  end

  def show
    @post = Post.find(params[:id])
  end
  
  def share
    @post = Post.find(params[:id])
  end
  
  def list
    @posts = Post.where(is_success: nil)
    @success_posts = Post.where(is_success: "success")
    @fail_posts = Post.where(is_success: "fail")
  end

  def contact
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    authorize_action_for @post
    @post.destroy
    
    redirect_to :back
  end

  def create_contact
    @contact = Contact.new
    @contact.user = current_user
    @contact.tel_number = params[:tel_number]
    @contact.writer_email = params[:username]
    @contact.post_id = params[:id]
    
    @contact.save
    
    @post = Post.find(params[:id])
  end

  def create_message
  end

  def create_comment
    @comment = Comment.new
    @comment.content = params[:content]
    @comment.post_id = params[:post_id]
    @comment.user = current_user
    @comment.save
    
    redirect_to :back
  end

  def destroy_comment
    @comment = Comment.find(params[:comment_id])
    @comment.destroy
    
    redirect_to :back
  end
  
  def board
    @boards = Board.all
  end
  
  def show_board
    @board = Board.find(params[:board_id])
  end
  
  def new_board
  end
  
  def create_board
    @board = Board.new
    @board.title = params[:title]
    @board.content = params[:content]
    @board.user = current_user
    @board.save
    
    redirect_to '/home/board'
  end
  
  def destroy_board
    @board = Board.find(params[:id])
    @board.destroy
    
    redirect_to :back
  end
  def post_success
    @post = Post.find(params[:id])
    @post.is_success = "success"
    @post.save
    
    redirect_to :back
  end
  
  def post_fail
    @post = Post.find(params[:id])
    @post.is_success = "fail"
    @post.save
    
    redirect_to :back
  end
  
  def pay
  end
  
  def introduction
  end
  
  def admin
    @post = Post.new
    authorize_action_for @post
    @contact = Contact.all
    
    @users = User.all.order('id ASC')
  end
  
  def check_pay
    @post = Post.new
    authorize_action_for @post
    @contact = Contact.find(params[:contact_id])
    @contact.title = params[:title]
    @contact.save
    
    redirect_to :back
  end
end
