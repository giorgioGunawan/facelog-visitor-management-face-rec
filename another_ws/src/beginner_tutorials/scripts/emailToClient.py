# assuming the person is not working overnight
import smtplib
import string
import sched, time
from email.mime.text import MIMEText
from email.mime.image import MIMEImage

# moved imports from visitorlog to here
import time

start_time = time.time()
import gspread
from oauth2client.service_account import ServiceAccountCredentials

s = sched.scheduler(time.time, time.sleep)
scope = ["https://spreadsheets.google.com/feeds", "https://www.googleapis.com/auth/spreadsheets",
         "https://www.googleapis.com/auth/drive.file", "https://www.googleapis.com/auth/drive"]
creds = ServiceAccountCredentials.from_json_keyfile_name("gDriveVincent.json", scope)
client = gspread.authorize(creds)


def printData(data):
    # return "Date: " + data[0] + "\n" + "Name: " + data[1] + "\n" + "Company: " + data[2] + "\n" + "Favourite drink: " + data[
    #     3] + "\n" + "Purpose of arrival: " + data[4] + "\n"

    return data[1] + " from " + data[2] + " just arrived and is here to meet you! They are here to "  + data[5] + " and their favourite drink is " + data[3] + ". This message is sent on "  + data[0] + "." + "\n\n\n\nSent by Facelog"
    


def extractDataRow():
    sheet = client.open("JFC Project Web App").worksheet('Visitor Log')  # sheet for up-to-date timekeeping
    data = sheet.get_all_records()
    row_data = sheet.row_values(len(data)+1)

    return printData(row_data)


def sendEmail():

    sheetWeb = client.open("JFC Project Web App").worksheet('Visitor Log')  # sheet for up-to-date timekeeping
    dataWeb = sheetWeb.get_all_records()
    rowDataWeb = sheetWeb.row_values(len(dataWeb) + 1)
    personInterestName = rowDataWeb[4]

    sheetEmail = client.open("JFC Project Email").worksheet('Email Address Sheet')
    nameCell = sheetEmail.find(personInterestName)
    email = sheetEmail.cell(nameCell.row,nameCell.col + 1).value

    TO = email

    #TO
    password = 'fantastic4Project'
    username = 'group9baxterprojectjfc@gmail.com'

    Subject = 'Visitor notification'

    mail = smtplib.SMTP('smtp.gmail.com', 587)  # mail.com 587 gmail.com

    mail.ehlo()

    mail.starttls()

    mail.login(username, password)

    Content = extractDataRow()

    Body = '\r\n'.join(['To: %s' % TO,
                        'From: %s' % username,
                        'Subject: %s' % Subject,
                        '', Content])

    mail.sendmail(username, TO, Body)

    mail.close()

sendEmail()

