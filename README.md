# AWS Resource Tracker

A Bash script that audits active AWS resources (EC2, S3, Lambda, IAM) and logs output via a daily cron job.

## What it does
- Lists all S3 buckets, EC2 instances, Lambda functions, and IAM users
- Runs automatically via cron job daily
- Logs stdout and stderr to resource_report.log

## Usage
\`\`\`bash
chmod 700 resource_tracker.sh
./resource_tracker.sh
\`\`\`

## Cron Setup (runs daily — adjust time per UTC vs IST)
\`\`\`bash
crontab -e
00 10 * * * /home/ubuntu/resource_tracker.sh >> /home/ubuntu/resource_report.log 2>&1
\`\`\`
