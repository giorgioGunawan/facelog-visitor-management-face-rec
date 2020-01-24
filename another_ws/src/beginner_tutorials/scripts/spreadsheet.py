import gspread
from oauth2client.service_account import ServiceAccountCredentials
from pprint import pprint
def printThis(visitor, num):
    scope =  ["https://www.googleapis.com/auth/spreadsheets","https://www.googleapis.com/auth/drive"]
    creds = ServiceAccountCredentials.from_json_keyfile_name("gDrive.json",scope)

    client = gspread.authorize(creds)

    sheet = client.open("Bax Proj SpSheet").sheet1

    data = sheet.get_all_records()

    sheet.update_cell(2,2,visitor)


if __name__ == '__main__':
    visitor = "HELO"
    printThis(visitor, 5)