Puppet::Type::newtype(:PUPPET_TYPE_SYMBOL) do
    @doc = "Description of type"

    ensurable

    newparam(:name) do
        desc "Description of name param"

        isnamevar

        validate do |value|
            true
        end
    end
end
