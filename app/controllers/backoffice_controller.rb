class BackofficeController < ApplicationController
    before_action :authenticate_admin! # 'before_action' antes de qualquer ação abaixo.
    layout "backoffice" # Busca o backoffice no layout da views
end
