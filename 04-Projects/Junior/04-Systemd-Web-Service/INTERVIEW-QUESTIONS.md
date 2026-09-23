# Systemd-Managed Web Service: Interview Questions

1. What problem does this project solve?
2. Which Linux subsystems and commands does it use?
3. Why is the architecture separated into install, configure, verify, test, and cleanup stages?
4. Which step requires privilege and why?
5. How are inputs validated?
6. How does the project enforce least privilege?
7. Which exit codes are meaningful?
8. What failure was injected and what evidence identified the cause?
9. How is recovery verified?
10. How is repeat execution handled?
11. Which data must be redacted before publication?
12. What would change across one hundred hosts?
13. What monitoring and alert would be added in production?
14. What is the rollback trigger?
15. What limitation remains in the lab implementation?

## Answer standard

Use the actual implementation and test evidence. Explain decisions and trade-offs. Do not memorize unsupported claims.

