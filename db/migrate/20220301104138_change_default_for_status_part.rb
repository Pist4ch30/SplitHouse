class ChangeDefaultForStatusPart < ActiveRecord::Migration[6.1]
  def change
    change_column_default :parts, :status, from: nil, to: 0
  end
end
