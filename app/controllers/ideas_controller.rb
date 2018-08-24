  class IdeasController < OpenReadController
    # before_action :set_idea, only: [:show, :update, :destroy]
    
    def index
      # @ideas = Idea.order("created_at DESC")
      @ideas = Idea.all
      render json: @ideas
    end

    def show
      render json: Idea.find(params[:id])
    end

    def create
      # @idea = Idea.create(idea_params)
      # render json: @idea

      @idea = current_user.ideas.build(idea_params)
      if @idea.save
        render json: @idea, status: :created, location: @idea
      else
        render json: @ideas.errors, status: :unprocessable_entity
      end
    end 

    def update
      @idea = Idea.find(params[:id])
      @idea.update_attributes(idea_params)
      render json: @idea
    end

    def destroy
      @idea = Idea.find(params[:id])
      if @idea.destroy
        head :no_content, status: :ok
      else
        render json: @idea.errors, status: :unprocessable_entity
      end
    end

    private

    def idea_params
      params.require(:idea).permit(:title, :body)
    end
	end

