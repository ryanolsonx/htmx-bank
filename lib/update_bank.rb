class UpdateBank
    def self.call(cmd, bank)
        if cmd == "reset"
            return 0
        elsif cmd == "doubles"
            return bank * 2
        else
            value = cmd.to_i
            return bank + value
        end
    end
end