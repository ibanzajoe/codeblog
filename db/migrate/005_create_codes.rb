Sequel.migration do
  up do
    create_table :code_blogs do
      primary_key :id
      Fixnum :user_id
      String :title, :size => 64
      String :heading, :size => 64
      String :content
      String :code
      String :why
      DateTime :created_at
      DateTime :updated_at
    end
  end

  down do
    drop_table :code_blogs
  end
end
