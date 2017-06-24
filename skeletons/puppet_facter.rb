Facter.add(:FACTER_NAME) do
  confine :kernel => "Linux"
  setcode do
    #output = Facter::Core::Execution.exec('COMMAND')
    #ENV['HOME']
  end
end
