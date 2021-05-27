module Posts
  class Persister < ApplicationService
    FIELDS = [:title, :body]

    def initialize(method, post, values)
      @post   = post
      @method = method
      @values = values
    end

    def exec
      ActiveRecord::Base.transaction do
        @values.present? ? @post.send(@method, post_values) : @post.send(@method)
        @post.tag_ids = set_tag_ids
        Tag.maintain
      end
    end

    def set_tag_ids
      param_tags.map { |x| Tag.find_or_create_by(name: x).id }
    end

    def param_tags
      @values[:tags_csv]
        .split(",")
        .map(&:strip)
    end

    def post_values
      @values.permit(FIELDS)
    end
  end
end
