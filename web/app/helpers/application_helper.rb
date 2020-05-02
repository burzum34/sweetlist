module ApplicationHelper
  def bootstrap_form_for(name, *args, &block)
    merge_options!(args, :builder => BootstrapFormBuilder)
    form_for(name, *args, &block)
  end

  private

  def merge_options!(args, options)
    if args.last.kind_of? Hash
      args.last.merge!(options)
    else
      args << options
    end
  end
end
