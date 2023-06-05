# README

Demonstrates cache CDN bug

1. `rails db:setup` to give yourelf a schema and a seed user
2. `docker run  -p 6379:6379 redis` in another tab (need Redis for Sidekiq Web)
3. `rails s`
4. Visit http://127.0.0.1:3000/sidekiq/
5. Login
6. Check the response headers for an uncached load of http://127.0.0.1:3000/sidekiq/javascripts/application.js (you may need to hard refresh to ensure you don't get the cached copy which will have no response headers at all)

You will see its `Cache-Control: public, max-age=86400` and `Set-Cookie: _sidekiqbug_session=...`

