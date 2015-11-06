class LaboratoryController < ApplicationController
  def index
    @labs = [
      {name: 'Wobblygog' , url: 'http://codepen.io/zeroeth/full/gpXRex/ ', image: 'spinner.png'},
      {name: 'Palette Pie' , url: 'http://codepen.io/zeroeth/full/qKlBI/' , image: 'pie.png'},
      {name: 'Mon a moire' , url: 'http://codepen.io/zeroeth/full/baHzj/', image: 'shader.png'},
    ]
  end
end
