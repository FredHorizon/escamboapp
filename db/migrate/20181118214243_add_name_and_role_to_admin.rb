class AddNameAndRoleToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string # Adiciona coluna (campo) na tabela 'admin' (criada pelo devise) com o nome 'name'
    add_column :admins, :role, :integer # Adiciona campo na tabela 'admin' (criada pelo devise) com o nome 'role'
  end
end
