
import pandas as pd
from sqlalchemy import create_engine

conn_string = 'postgresql://postgres:admin123@localhost/Telanganagrowth'
db = create_engine(conn_string)

conn = db.connect()

files = ['stamps','date','districts','tspass','transport']


for file in files:
    df = pd.read_csv(f'C:\\Users\\HP\\Desktop\\Telangana\\dataset\\{file}.csv')
    df.to_sql(file,con=conn , if_exists='replace',index=False)