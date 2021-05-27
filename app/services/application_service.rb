class ApplicationService
  class << self
    def call(*args, &block)
      new(*args, &block).exec
    end
  end
end
