require 'yaml'
require_relative '../models/participant'

class Utils

  def self.load_participants
    participants_dados = load_yaml('../../data/participantes.yml')
    participants_dados.map do |participante|
      Participant.new(participante["name"], participante["email"], participante["black_list"])
    end
  end


  def self.load_email_config
    load_yaml('../../config/email.yml')
  end

  private

  def  self.load_yaml(file_path)
    file = File.join(File.dirname(__FILE__), file_path)
    YAML.load_file(file)
  end


end