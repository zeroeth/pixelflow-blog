class PortfolioController < ApplicationController
  def index
    @projects = [
      {name: 'Pixeltastic' , url: 'https://github.com/zeroeth/pixeltastic', image: 'goggles.png'},
      {name: 'Ebauche' , url: 'https://github.com/zeroeth/ebauche', image: 'clock.png'},
      {name: 'Square Blox' , url: 'https://github.com/zeroeth/squareblox', image: 'block.png'},
      {name: 'Brain.json' , url: 'https://github.com/zeroeth/brain.json', image: 'brain.png'},
      {name: 'Gratuitous Raytracing' , url: 'https://github.com/zeroeth/gratuitous_raytracing', image: 'sphere.png'},
      {name: 'dae.rb' , url: 'https://github.com/zeroeth/daerb', image: 'magic.png'},
      {name: 'Maze Dungeon' , url: 'https://github.com/zeroeth/maze_dungeon', image: 'maze.png'},
      {name: 'Shiver me Dithers' , url: 'https://github.com/zeroeth/shiver_me_dithers', image: 'dither.png'}
    ]
  end
end
