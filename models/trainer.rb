require_relative( '../db/sql_runner' )

class Trainer

  attr_reader :id, :first_name, :last_name, :alias, :image_url


  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @alias = options['alias']
    @image_url = options['image_url']
  end

  def save()
    sql = "INSERT INTO trainers
      (
      first_name,
      last_name,
      alias,
      image_url
      )
      VALUES
      (
        $1, $2, $3, $4
      )
      RETURNING id"
    values = [@first_name, @last_name, @alias, @image_url]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM trainers"
    SqlRunner.run( sql )
  end

end