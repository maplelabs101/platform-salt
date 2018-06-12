reactor-jupyter_user_login:
  local.state.apply:
    - tgt: 'G@roles:jupyter'
    - expr_form: compound
    - arg:
      - jupyter.user_login
    - kwarg:
        pillar:
          user: {{ data['data']['user'] }}
