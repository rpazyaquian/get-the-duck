require 'gosu'

class GameWindow < Gosu::Window
	def initialize
		super(640, 480, false)
		# declare background
		@background = make_background
		# declare player
		@player = make_player
		# declare duck
		@duck = make_duck
	end

	def update
		update_updateables
	end
	
	def draw
		draw_drawables
	end
	
end