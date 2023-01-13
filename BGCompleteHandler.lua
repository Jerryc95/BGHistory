local handler = BGHistory.BGCHandler

function handler:handleBGComplete(winner, duration)
    print(winner)
    print(duration)
    if (winner == 0) then
        print("The Horde have won!")
        print(duration)
    elseif (winner == 1) then
        print("The Alliance have won!")
        print(duration)
    end
end