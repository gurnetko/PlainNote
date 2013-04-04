module Silly
  class OnlineFormatter
    
    def step_name(keyword, step_match, status, source_indent, background, file_colon_line)
      super( keyword, step_match, status, '', background )
    end
    
  end
end