# An abstract version of the instruction as C code using macros, without referencing where the data is feteched from, or even
# referring to types if it can.
class InstructionDefinition
  attr_accessor :name,
                :operations,
                :comment,
                :description,
                :flags,
                :protected,
                :operands,
                :branch,
                :signed

  def initialize(name)
    @name  = name
    @operations = Hash.new
    @operations[:word]  = []
    @operations[:byte]  = []
    @operations[:none]  = []
    @operand = []
    @comment = "Instruction for #{name}"
    @description = "Description Text"
    @flags = Hash.new
    @protected = true
    @branch = []
    @signed = false
  end
end

def FetchDefinitions(instructions)
  instructions.each do |k, ins|
    filename = "../../Documentation/CPU16/Instructions/#{ins.name}.yaml"
    if (File.file?(filename) == false)
      insfile = InstructionDefinition.new(ins.name)
      File.write(filename, YAML::dump(insfile))
      ins.definition = insfile
    else
      ins.definition = YAML.load_file(filename)
    end
  end
end
