require 'gosu'

class GameWindow < Gosu::Window
	def initialize
		super(640, 480, false)
		@background = make_background
		@player = make_player
		@duck = make_duck
	end

	def make_background
		Background.new
	end

	def make_player
		Entity.new
	end

	def make_duck
		Entity.new
	end

	def update
		update_updateables
	end
	
	def update_updateables
		@updateables.each do |updateable|
			updateable.update
		end
	end

	def draw
		draw_drawables
	end

	def draw_drawables
		@drawables.each do |drawable|
			drawable.draw
		end
	end
	
end