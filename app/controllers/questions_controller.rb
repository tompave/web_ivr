class QuestionsController < ApplicationController

	# GET /questions - questions_path
	def index
		@questions = Question.all
	
		respond_to do |format|
			format.html
			# format.xml { render :xml => @foobar } #.to_xml }
			# format.json { render :json => @foobar } #.to_json }
		end
	end
	

	# GET /question/:id - question_path(:id)
	def show
		@question = Question.find_by_id(params[:id])
	
		respond_to do |format|
			format.html
			# format.xml { render :xml => @foobar } #.to_xml }
			# format.json { render :json => @foobar } #.to_json }
		end
	end
	

	# GET /question/new - new_question_path
	def new
		@question = Question.new
	
		respond_to do |format|
			format.html
			# format.xml { render :xml => @foobar } #.to_xml }
			# format.json { render :json => @foobar } #.to_json }
		end
	end
	
	
	# POST /questions - questions_path
	def create
		@question = Question.new(params[:question])

		if @question.save
			flash[:success] = "Domanda salvata"
		else
			flash[:error] = "Domanda non salvata"
		end
	
	end
	
	
	# GET /question/:id/edit - edit_question_path(:id)
	def edit
		@question = Question.find_by_id(params[:id])
	
		respond_to do |format|
			format.html
			# format.xml { render :xml => @foobar } #.to_xml }
			# format.json { render :json => @foobar } #.to_json }
		end
	end
	
	
	# PUT /question/:id - question_path(:id)
	def update
		@question = Question.find_by_id(params[:id])

		if @question.update_attributes(params[:question])
			flash[:success] = "Domanda modificata"
		else
			flash[:error] = "Domanda non modificata"
		end
	
		
	end
	
	
	# DELETE /question/:id - questions_path(:id)
	def destroy
		Question.find_by_id(params[:id]).destroy
		flash[:success] = "Domanda eliminata"
		redirect_to questions_path
	end
	
	

end
