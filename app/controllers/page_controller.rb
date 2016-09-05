class PageController < ApplicationController
  def index
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def roadmap
    @title = "Roadmap"
  end

  def team
    @title = 'Team'
  end
end
