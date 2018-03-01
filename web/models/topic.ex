defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
    field :title, :string
    belongs_to :user, Discuss.User
    has_many :comments, Discuss.Comment
  end

  def changeset(struct, params \\ %{}) do #\\ means default value for argument
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
