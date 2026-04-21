import matplotlib.pyplot as plt
import pandas as pd

df = pd.read_csv("/home/Prak/mint-repos/py-basics/data fundamentals/Project/files/Python Tasks/students.csv")
df["average_marks"] = (df["math"] + df["science"] + df["programming"]) / 3

print("Bar Chart\n")
plt.figure()
plt.bar(df["name"], df["average_marks"])
plt.xlabel("Students")
plt.ylabel("Average Marks")
plt.title("Student Average Marks")
plt.show()

print("Column Chart\n")
dept_avg = df.groupby("department")["average_marks"].mean()
plt.figure()
plt.bar(dept_avg.index, dept_avg.values)
plt.xlabel("Department")
plt.ylabel("Average Marks")
plt.title("Department Performance")
plt.show()

print("Scatter Plot\n")
plt.figure()
plt.scatter(df["attendance"], df["average_marks"])
plt.xlabel("Attendance")
plt.ylabel("Average Marks")
plt.title("Attendance vs Marks")
plt.show()