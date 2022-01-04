This example throws the following error

```
❯ be irb
irb(main):001:0> require 'grape'
=> true
irb(main):002:0> require_relative 'api'
/Users/ll/code/grape-ruby3/api.rb:4:in `block in <module:BaseHelper>': missing keyword: :type (ArgumentError)
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/dsl/parameters.rb:67:in `instance_exec'
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/dsl/parameters.rb:67:in `block in use'
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/dsl/parameters.rb:63:in `each'
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/dsl/parameters.rb:63:in `use'
	from /Users/ll/code/grape-ruby3/api.rb:17:in `block in <class:API>'
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/validations/params_scope.rb:39:in `instance_eval'
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/validations/params_scope.rb:39:in `initialize'
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/dsl/validations.rb:42:in `new'
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/dsl/validations.rb:42:in `params'
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/api.rb:160:in `replay_step_on'
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/api.rb:151:in `block in add_setup'
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/api.rb:150:in `each'
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/api.rb:150:in `add_setup'
	from /Users/ll/code/grape-ruby3/vendor/bundle/ruby/3.0.0/gems/grape-1.6.2/lib/grape/api.rb:55:in `block (2 levels) in override_all_methods!'
	from /Users/ll/code/grape-ruby3/api.rb:16:in `<class:API>'
	from /Users/ll/code/grape-ruby3/api.rb:12:in `<top (required)>'
	... 20 levels...
irb(main):003:0>
```

It is run with this setup:
* `grape` 1.6.2
* `ruby` 3.0.3
