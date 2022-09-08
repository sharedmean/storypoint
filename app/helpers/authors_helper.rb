# frozen_string_literal: true

# authors helper
module AuthorsHelper
  def author_fullanme(author)
    [author.first_name, author.last_name, author.patronymic].select(&:present?).join(' ')
  end
end
