class WelcomeController < ApplicationController

   def home
      @skills = Skill.all
   end

   private

end