Sequel.migration do
  up do
    create_table :codes do
      primary_key :id
      Fixnum :user_id
      String :title, :size => 64
      String :heading, :size => 64
      String :content
      String :code_js
      String :code_html
      String :code_css
      String :why
      DateTime :created_at
      DateTime :updated_at
    end
  end

  down do
    drop_table :codes
  end
end
