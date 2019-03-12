class HighScoreTable
  def initialize(table_length)
    @table_length = table_length
    @highscore_table = []
    @highscore
  end
  
  def scores
    @highscore_table
  end
  
  def update(num)
    if @highscore_table.count == 0
      @highscore = num
      @highscore_table << @highscore
    else
      if num >= @highscore
        @highscore = num
        @highscore_table.unshift(@highscore)
      else
        @highscore_table = @highscore_table.take(@table_length)
        #aca me falta algo
        @highscore_table << num
      end
    end
    
    if @highscore_table.length > @table_length
      @highscore_table = @highscore_table.take(@table_length)
    end    
  end  
end