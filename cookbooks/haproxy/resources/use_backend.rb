property :use_backend, [String, Array], name_property: true
property :section, String, required: true, equal_to: %w(frontend listen backend)
property :section_name, String, required: true
property :config_dir, String, default: '/etc/haproxy'
property :config_file, String, default: lazy { ::File.join(config_dir, 'haproxy.cfg') }

action :create do
  # As we're using the accumulator pattern we need to shove everything
  # into the root run context so each of the sections can find the parent
  with_run_context :root do
    edit_resource(:template, config_file) do |new_resource|
      cookbook 'haproxy'
      variables[new_resource.section] ||= {}
      variables[new_resource.section][new_resource.section_name]['use_backend'] ||= []
      variables[new_resource.section][new_resource.section_name]['use_backend'] += Array(new_resource.use_backend)

      action :nothing
      delayed_action :create
    end
  end
end
