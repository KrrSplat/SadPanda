import Cocoa

// find the number of times the first day of the month is a sunday between 1901 and 2000

var count = 0

for year in 1901...2000 {
    for month in 1...12 {
        
        // The type of the calendar. ie: gregorian
        // This isn't strictly necessary, we could just pass in .current to DateComponents.
        let calendar = Calendar.current
        
        // Build a date components object, used to feed into calendar.date().
        // Specifically looking for the first of the month.
        let dateComponents = DateComponents(calendar: calendar, year: year, month: month, day: 1)
        
        // Form a date from the user's calendar type and date component object
        let date = calendar.date(from: dateComponents)!
        
        // Extract the weekday from the given date
        let weekday = calendar.component(.weekday, from: date)
        
        // Check to see if the weekday is Sunday
        if weekday == 1 {
            count += 1
        }
    }
}

print(count)
