# Given a list of n elements, I need a function that returns a new list of the 
# percentage change throughout the list --> Yt+1 - Yt / Yt

daily_prices = [10, 20, 25, 50, 0]

def get_percentage_change(vals) :
    index = 0
    p_changes = []
    for val in vals :
        if index != 0 :
            p_changes.append((vals[index] - vals[index - 1]) / float(vals[index-1]))
        index += 1
    return p_changes

print get_percentage_change(daily_prices)

