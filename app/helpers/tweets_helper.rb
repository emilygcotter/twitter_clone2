module TweetsHelper
  def get_tagged(tweet)
    message_array = tweet.content.split
      message_array.each_with_index do |word, index|
        if word[0] == '#'
          if Tag.pluck(:phrase).include?(word)
            tag = Tag.find_by(phrase: word)
          else
            tag = Tag.create(phrase: word)
          end
          TweetTag.create(tag_id: tag.id, tweet_id: tweet.id)
          message_array[index] = "<a href='/tags/#{tag.id}'>#{word}</a>"
        end
      end

      tweet.content = message_array.join(" ")
      return tweet 
  end
end
