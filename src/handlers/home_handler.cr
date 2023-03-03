class HomeHandler < Marten::Handlers::Redirect
  route_name "auth:profile"
end
