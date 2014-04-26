PROBLEM STATEMENT

Model the following in Rails:
- Tasks have a description and a name
- Surrogates can have many tasks assigned and they need to track complete status of each task
- Surrogates have statuses of Applied, Accepted, Rejected, and Approved. When created, set the status to Applied. 
- Allow surrogates to be moved from one status to the next. If rejected, they can’t be approved, and can only be one of accepted or rejected.
- Write a method or scope to get all rejected surrogates
- Write a method or scope to get all surrogates that have > 2 completed tasks