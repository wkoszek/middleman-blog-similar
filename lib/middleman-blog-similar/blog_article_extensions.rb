module Middleman
  module Blog
    module Similar
      module BlogArticleExtensions
        def similar_articles
          if engine = app.similarity_engine
            engine.new(self).similar_articles
          else
            []
          end
        end
      end
    end
  end
end