#!/usr/bin/python3
"""
script that uses REST API, for a given employee ID,
exports the data to json file.
"""
import csv
import requests
from json import dump
from sys import argv


if __name__ == "__main__":
    """ main function """
    # id = argv[1]
    url = "https://jsonplaceholder.typicode.com"
    user = f"{url}/users"
    todo = f"{url}/todos"

    employee = requests.get(user).json()
    tasks = requests.get(todo).json()

    # name = employee['name']
    # uname = employee['username']
    # total = len(tasks)
    # done = [task for task in tasks if task['completed']]

    all_dict = {}
    for emp in employee:
        tasks_list = []
        uname = emp['username']
        for task in tasks:
            if task['userId'] == emp['id']:
                status = task['completed']
                tasks_list.append({"username": uname, "task": task['title'],
                                  "completed": status})
        all_dict[emp['id']] = tasks_list

    filename = "todo_all_employees.json"
    with open(filename, 'w') as jsonfile:
        dump(all_dict, jsonfile)
