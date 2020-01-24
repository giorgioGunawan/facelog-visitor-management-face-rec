import gspread
import time
import os
from oauth2client.service_account import ServiceAccountCredentials
from pprint import pprint

def checkStatus():
    scope =  ["https://www.googleapis.com/auth/spreadsheets","https://www.googleapis.com/auth/drive"]
    creds = ServiceAccountCredentials.from_json_keyfile_name("gDriveVincent.json",scope)
    client = gspread.authorize(creds)
    sheet = client.open("JFC Project Flags").sheet1

    # To Update Cell
    #sheet.update_cell(2,2,"INSERTABLE")

    # Getting Flag Value
    flag = sheet.acell('A2').value

    while True:
        
        print("Working")
        time.sleep(5) # Every 5 seconds
        flag = sheet.acell('A2').value # Flag Value

        # Start of loop
        if flag == "1":
            
            sheet.update_cell(2,1,"0") # col, row, content

            typeFlag = sheet.acell('B2').value

            if typeFlag == "new":
                print("New visitor, never seen before")
                newPersonCmd = 'rostopic pub -1 /fr_order face_recognition/FRClientGoal -- 2 ' + '"' + sheet.acell('C2').value + '"' 
                print(newPersonCmd)
                os.system(newPersonCmd) #debugging

                time.sleep(5)
                retrainCmd = 'rostopic pub -1 /fr_order face_recognition/FRClientGoal -- 3 "none" '
                print(retrainCmd)
                os.system(retrainCmd)
                time.sleep(5)
                os.system('killall -9 Fserver')
                os.system('killall -9 Fclient')
                time.sleep(1)
                print("Gonna delete facedata")
                time.sleep(1)
                #os.remove("/home/giorgio/another_ws/src/procrob_functional/facedata.xml")
                time.sleep(1)
                print("DELETED FACEDATA")
                os.system('cd /home/giorgio/another_ws/src/beginner_tutorials/scripts/')
                os.system('python emailToClient.py')


            elif typeFlag == "old":
                print("Old visitor, Ive seen u before!!")
                os.system('rostopic pub -1 /fr_order face_recognition/FRClientGoal -- 1 "none" ')
                print("Gonna cd")
                os.system('cd /home/giorgio/another_ws/src/beginner_tutorials/scripts/')
                print("Gonna listener")
                os.system('python listener.py')
                os.system("rosrun face_recognition Fserver && rosrun face_recognition Fclient")

if __name__ == '__main__':
    checkStatus()
