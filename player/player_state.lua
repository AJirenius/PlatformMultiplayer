local M = {}

M.FALLING = 1
M.WALL_GLIDING = 2
M.STANDING = 3
M.ROOF_HANGING = 4

function M.set_state(self, new_state)
	if new_state > self.state then 
		self.state = new_state 
	end
end

function M.reset(self)
	self.state = 1
end

return M