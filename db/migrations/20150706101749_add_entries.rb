Lotus::Model.migration do
  change do
    create_table :entries do
      primary_key :id
      column :title, String
      column :body, String
    end
  end
end
