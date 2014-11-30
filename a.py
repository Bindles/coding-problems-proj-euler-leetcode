import random
from datetime import datetime, timedelta

def generate_random_date(start_date):
    # Generate a random number of days between 3 and 12
    random_days = random.randint(2, 8)
    
    # Generate a random future date within the range
    future_date = start_date + timedelta(days=random_days)
    
    # Set the time range for the second part of the date
    start_time = datetime.strptime("03:15:00", "%H:%M:%S").time()
    end_time = datetime.strptime("06:00:00", "%H:%M:%S").time()
    
    # Generate a random time between the specified range
    random_time = datetime.strptime("{:02d}:{:02d}:{:02d}".format(random.randint(0, 2), random.randint(0, 59), random.randint(0, 59)), "%H:%M:%S").time()
    while start_time <= random_time <= end_time:
        random_time = datetime.strptime("{:02d}:{:02d}:{:02d}".format(random.randint(0, 23), random.randint(0, 59), random.randint(0, 59)), "%H:%M:%S").time()
    
    # Combine the future date and random time
    future_date_with_time = datetime.combine(future_date, random_time)
    
    # Update the start_date to the future_date
    start_date = future_date
    
    return future_date_with_time

# Example usage
start_date = datetime(2014, 11, 15)  # Your start date
for _ in range(20):  # Generate 20 random dates
    start_date = generate_random_date(start_date)
    commit_date = start_date.strftime("%Y-%m-%d")
    print(f'git commit --date=\'{start_date}\' -m \'commit {commit_date}\'')
