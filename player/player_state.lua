local M = {}

M.FALLING = 1
M.WALL_GLIDING = 2
M.STANDING = 3
M.ROOF_HANGING = 4
M.DASHING = 5
M.DEAD = 6

M.names = {"Falling","Wall Gliding","Standing","Roof hanging","Dashing","Dead"}

function M.tostring(self)
	return M.names[self.state]
end

function M.set_state(self, new_state, forced)
	if new_state == nil then print("ERROR: STATE DOESNT EXIST") return end
	if new_state > self.state or forced == true then 
		self.state = new_state 
	end
end

function M.reset(self)
	self.last_state = self.state
	if self.state == M.DEAD then return end
	self.state = M.FALLING
end

return M