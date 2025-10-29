class UpdateTurns
    def self.call(cmd, turns_occurred)
        if cmd == "reset"
            return 0
        else
            return turns_occurred + 1
        end
    end
end