# This is very similar to ETL #3, but you must now accomplish the task in linear time (O(N)).

# Given an array of Youtube videos, for example:

# [
# {title: 'How to Make Wood', author_id: 4, views: 6},
# {title: 'How to Seem Perfect', author_id: 4, views: 111},
# {title: 'Review of the New "Unbreakable Mug"', author_id: 2, views: 202},
# {title: 'Why Pigs Stink', author_id: 1, views: 12}
# ]

# and an array of authors, for example:

# [
# {id: 1, first_name: 'Jazz', last_name: 'Callahan'},
# {id: 2, first_name: 'Ichabod', last_name: 'Loadbearer'},
# {id: 3, first_name: 'Saron', last_name: 'Kim'},
# {id: 4, first_name: 'Teena', last_name: 'Burgess'},
# ]

# Return a new array of videos in the following format, and only include videos that have at least 100 views:

# [
# {title: 'How to Seem Perfect', views: 111, author_name: 'Teena Burgess' }
# {title: 'Review of the New "Unbreakable Mug"', views: 202, author_name: 'Ichabod Loadbearer' },
# ]

def etl(videos, authors)
  output = []
  authors_hash = {}
  authors.each do |author|
    authors_hash[author[:id]] = author[:first_name] + " " + author[:last_name]
  end
  # p authors_hash
  videos.each do |video|
    output << { title: video[:title], views: video[:views], author_name: authors_hash[video[:author_id]] } if video[:views] >= 100
  end
  return output
end

p etl([
    { title: "How to Make Wood", author_id: 4, views: 6 },
    { title: "How to Seem Perfect", author_id: 4, views: 111 },
    { title: 'Review of the New "Unbreakable Mug"', author_id: 2, views: 202 },
    { title: "Why Pigs Stink", author_id: 1, views: 12 },
  ], [
    { id: 1, first_name: "Jazz", last_name: "Callahan" },
    { id: 2, first_name: "Ichabod", last_name: "Loadbearer" },
    { id: 3, first_name: "Saron", last_name: "Kim" },
    { id: 4, first_name: "Teena", last_name: "Burgess" },
  ])
