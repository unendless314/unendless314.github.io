#!/usr/bin/env ruby
#
# Check for changed posts using git, robust to edge-case paths

require 'open3'

Jekyll::Hooks.register :posts, :post_init do |post|
  path = post.path.to_s

  begin
    commit_num_str, status = Open3.capture2('git', 'rev-list', '--count', 'HEAD', path)
    commit_num = commit_num_str.to_i

    if status.success? && commit_num > 1
      lastmod_str, status2 = Open3.capture2('git', 'log', '-1', '--pretty=%ad', '--date=iso', path)
      post.data['last_modified_at'] = lastmod_str.strip if status2.success?
    end
  rescue StandardError
    # Ignore errors to avoid breaking the build when git is unavailable
  end
end
