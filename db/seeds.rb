# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
posts = [
    {title: "First Post!", body: "Lorem ipsum doolum boolum bum", dream_time: "morning", dream_type: "neutral"},
    {title: "Second Post!", body: "Lorem ipsum doolum boolum bum", dream_time: "night", dream_type: "good"},
    {title: "Third Post!", body: "Lorem ipsum doolum boolum bum", dream_time: "midday", dream_type: "good"},
    {title: "Fourth Post!", body: "Lorem ipsum doolum boolum bum", dream_time: "morning", dream_type: "neutral"},
    {title: "FIfth Post!", body: "Lorem ipsum doolum boolum bum", dream_time: "night", dream_type: "bad"},
    {title: "Sixth Post!", body: "Lorem ipsum doolum boolum bum", dream_time: "morning", dream_type: "neutral"}
]

Post.delete_all
Post.create(posts)