require 'gosu'

class GameWindow < Gosu::Window
	def initialize
		super(640, 480, false)
		@background = make_background
		@player = make_player
		@duck = make_duck
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