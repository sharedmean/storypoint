# frozen_string_literal: true

# books helper
module BooksHelper
  def authors_for_select
    Author.all.collect { |author| [author.first_name, author.id] }
  end

  def positions_for_select
    Position.joins('LEFT JOIN books ON positions.id = books.position_id')
            .where('books.id IS NULL')
            .order(:id).collect { |position| [generate_shelf(position.row, position.position), position.id] }
  end

  def generate_shelf(row, position)
    "Shelf #{row}, Position #{position}"
  end

  def author_fullanme(author)
    [author.first_name, author.last_name, author.patronymic].select(&:present?).join(' ')
  end
end
