import rospy
import os
import gspread
from oauth2client.service_account import ServiceAccountCredentials
from std_msgs.msg import String
from pprint import pprint

def printThis(visitor, row):
    scope =  ["https://www.googleapis.com/auth/spreadsheets","https://www.googleapis.com/auth/drive"]
    creds = ServiceAccountCredentials.from_json_keyfile_name("gDriveVincent.json",scope)

    client = gspread.authorize(creds)
    sheet = client.open("JFC Project Web App").sheet1

    # Get a cell that matches with visitors name
    matchingCell = sheet.find(visitor)
    print("Found something at R%s C%s" % (matchingCell.row, matchingCell.col))
    
    # Obtain company and favourite drink variable from website
    company = sheet.cell(matchingCell.row, matchingCell.col + 1).value
    drink = sheet.cell(matchingCell.row, matchingCell.col + 2).value

    # Now make put it in blank row 
    blankCell = sheet.find("undefined")
    sheet.update_cell(blankCell.row,blankCell.col, visitor)
    sheet.update_cell(blankCell.row,blankCell.col + 1, company)
    sheet.update_cell(blankCell.row,blankCell.col + 2, drink)
    os.system('killall -9 Fserver')
    os.system('killall -9 Fclient')
    print("Finish Kill")
    os.system('cd /home/giorgio/another_ws/src/beginner_tutorials/scripts/')
    os.system('python emailToClient.py')
    #os.system("rosrun face_recognition Fserver && rosrun face_recognition Fclient && python flagger.py")



def callback(data):
    global rowGlob
    global seconds
    #rospy.loginfo(rospy.get_caller_id() + 'I d %s', data.data)
    #rospy.loginfo("You are: %s", data.data)
    seconds = seconds + 1
    if seconds == 5:
        #seconds = 0
        rowGlob = rowGlob + 1
        printThis(data.data,rowGlob)
    

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber('chatter', String, callback)
    rospy.spin()

if __name__ == '__main__':
    rowGlob = 2
    seconds = 1
    listener()
