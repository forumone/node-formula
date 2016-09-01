{% if salt['pillar.get']('node:global_npm', '') %}
install-globally-with-npm:
  npm.installed:
    - pkgs: {{ salt['pillar.get']('node:global_npm') }}
{% endif %}
