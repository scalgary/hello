from datetime import datetime
import pytz

calgary = pytz.timezone("America/Edmonton")
now = datetime.now(calgary)
print(f"✅ Script ran at {now.strftime('%Y-%m-%d %H:%M:%S')} Calgary time")