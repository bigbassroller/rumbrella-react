defmodule RumblReact.Repo do
  use Ecto.Repo, otp_app: :rumbl_react
end
# defmodule RumblReact.Repo do
	
# 	@moduledoc """
# 	In memory repository
# 	"""

# 	def all(RumblReact.User) do
# 		[%RumblReact.User{id: "1", name: "Jose'", username: "josevalim", password: "elixir"},
# 		 %RumblReact.User{id: "2", name: "Bruce", username: "redrapids", password: "7langs"},
# 	   %RumblReact.User{id: "3", name: "Chris", username: "chrismccord", password: "phx"}]
# 	end

# 	def get(module, id) do
# 		Enum.find all(module), fn map -> map.id == id end
# 	end

# 	def get_by(module, params) do
# 		Enum.find all(module), fn map ->
# 			Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
# 		end
# 	end
# end