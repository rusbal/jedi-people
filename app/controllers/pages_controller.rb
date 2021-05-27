class PagesController < ApplicationController
  def don
  end

  def jedi
  end

  def raymond
  end

  def players
    @players = Person.all
  end
end
