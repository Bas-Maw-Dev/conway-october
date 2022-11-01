describe "viewing the next generation in conway's game of life" do
  it 'stays the same for an empty grid' do
    empty_grid = [
      [:empty, :empty, :empty],
      [:empty, :empty, :empty],
      [:empty, :empty, :empty]
    ]

    expect(view_next_conway_generation(empty_grid)).to eq(empty_grid)
  end

  it 'returns an empty grid given one alive cell in the center' do
    one_cell_grid = [
      [:empty, :empty, :empty],
      [:empty, :alive, :empty],
      [:empty, :empty, :empty]
    ]

    empty_grid = [
      [:empty, :empty, :empty],
      [:empty, :empty, :empty],
      [:empty, :empty, :empty]
    ]

    expect(view_next_conway_generation(one_cell_grid)).to eq(empty_grid)
  end


  xit 'should return a non-empty grid when we implement a viable first generation' do
    viable_grid = [
      [:empty, :empty, :empty,:empty],
      [:empty, :alive, :alive,:empty],
      [:empty, :alive, :alive,:empty],
      [:empty, :empty, :empty,:empty]
    ]
    expect(view_next_conway_generation(viable_grid)).to eq viable_grid
  end
end

describe "how to calculate number of live neighbours in a conway grid" do
  it "should tell me there is one live neighbour if one alive in a 2x1 grid" do
    two_by_one_grid = [:empty, :alive]
    number_of_neighbours = number_of_living_neigbours(two_by_one_grid,row: 0,column: 0)
    expect(number_of_neighbours).to eq 1
  end

  it 'should tell me there is one live neighbour if one alive in a 3x1 grid' do
    three_by_one_grid = [:empty, :alive, :empty]
    number_of_neighbours = number_of_living_neigbours(three_by_one_grid,row: 0,column: 0)
    expect(number_of_neighbours).to eq 1
  end
end

def view_next_conway_generation(generation)
  next_generation = []
  generation.each do |row|
    future_row = []
    row.each do |cell|
      future_row << conway_rule(cell,number_of_living_neigbours(cell,row:0,column:0))
    end
    next_generation << future_row
  end
  next_generation
end

def conway_rule(cell,number_of_living_neigbours)
  :empty
end

def number_of_living_neigbours(grid,row:,column:)
  number_of_neighbours = 0
  two_by_one_grid = [:empty, :alive]
  
  two_by_one_grid === :alive
  number_of_neighbours += 1
   
  number_of_neighbours
  
elsif 
  
end  
   
end
