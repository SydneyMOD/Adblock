if RequiredScript then
	local requiredScript = RequiredScript:lower()
	if requiredScript == 'lib/managers/menumanager' then
		function MenuCallbackHandler:is_dlc_latest_locked(...)
			return false
		end
	elseif requiredScript == 'lib/managers/menu/menucomponentmanager' then
		function MenuComponentManager:create_new_heists_gui(...)
			self:close_new_heists_gui()
		end

	elseif requiredScript == 'lib/managers/menu/menunodegui' then
		local _add_version_string_original = MenuNodeMainGui._add_version_string
		function MenuNodeMainGui:_add_version_string()
			_add_version_string_original(self)
			self._version_string:set_align("right")
		end
	end
end