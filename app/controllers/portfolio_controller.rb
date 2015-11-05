class PortfolioController < ApplicationController
  def index
    @projects = [
      {name: "Project 1" , url: "googlygoogz", image: 'goggles.png' },
      {name: "Project 2" , url: "googlygoogz", image: 'dither.png' },
      {name: "Dogcat Hybrids" , url: "googlygoogz", image: 'sphere.png' },
      {name: "Universal Cats" , url: "googlygoogz", image: 'maze.png' },
      {name: "Blackhole Infinity" , url: "googlygoogz", image: 'block.png' }
    ]
  end
end
