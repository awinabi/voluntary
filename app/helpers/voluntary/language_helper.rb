module Voluntary
  module LanguageHelper
    def available_language_options
      options = []
      
      AVAILABLE_LANGUAGES.each do |locale, language|
        options << [language, locale]
      end
      
      options.sort_by { |o| o[0] }
    end
    
    def all_language_options
      User.languages.sort_by { |o| o[0] }
    end
  end
end