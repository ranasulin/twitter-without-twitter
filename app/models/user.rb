class User < ActiveRecord::Base
  has_and_belongs_to_many :followers,
    class_name: "User",
    join_table: "user_connections",
    foreign_key: "follower_id",
    association_foreign_key: "followee_id"
end
