import pandas as pd

df = pd.read_csv("/home/Prak/mint-repos/py-basics/data fundamentals/Project/files/Python Tasks/students.csv")

df["average_marks"] = (df["math"] + df["science"] + df["programming"]) / 3

top_student = df.loc[df["average_marks"].idxmax()]

grouped = df.groupby("department")

dept_avg = grouped["average_marks"].mean()

correlation = df["attendance"].corr(df["average_marks"])

print("Dataset:\n", df, "\n")
print("Top Performing Student:\n", top_student, "\n")
print("Department-wise Average Marks:\n", dept_avg, "\n")
print("Correlation between Attendance and Marks:\n", correlation)