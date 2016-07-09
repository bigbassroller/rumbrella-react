defmodule RumblReact.AnnotationView do
	use RumblReact.Web, :view

	def render("annotation.json", %{annotation: ann}) do
		%{
			id: ann.id,
			body: ann.body,
			at: ann.at,
			user: render_one(ann.user, RumblReact.UserView, "user.json")
		}
	end
end