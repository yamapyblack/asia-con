if defined?(Rails::Console)
  require 'pry'
  env = if Rails.env.production?
          Pry::Helpers::Text.red(Rails.env)
        end
  Pry.config.prompt = [
    proc {|target_self, nest_level, pry|
      nested = (nest_level.zero?) ? '' : ":#{nest_level}"
      "[#{pry.input_array.size}] #{env} #{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}(#{Pry.view_clip(target_self)})#{nested}> "
    },
    proc {|target_self, nest_level, pry|
      nested = (nest_level.zero?) ?  '' : ":#{nest_level}"
      "[#{pry.input_array.size}] #{env} #{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}(#{Pry.view_clip(target_self)})#{nested}* "
    }
  ]
end

