Automated Invoice Analysis Tool

*Description
-This Python-based Automated Invoice Analysis Tool is designed to streamline the processing and analysis of financial data extracted from invoice documents. It utilizes advanced regular expressions and sophisticated data structures to parse invoice content, accurately categorize transactions, and generate comprehensive financial reports. This tool aids businesses in enhancing their financial oversight and strategic budget planning by automating data entry and report generation, reducing manual errors, and saving time.
-The Project is almsot done, I just need to do some minor changes to get the right total and make sure it takes the products' names

*Key Features
-Data Parsing: Automatically extracts relevant details such as item descriptions, quantities, and prices from structured text files.
-Transaction Categorization: Uses complex regex algorithms to accurately categorize and store transaction data, enabling precise financial tracking.
-Report Generation: Produces detailed financial reports that summarize monthly and yearly expenditures, assisting in financial review and budget management.

*How to Use
-Setup and Installation
-Clone the repository to your local machine.
-Ensure Python 3.x is installed on your system.
-Install necessary dependencies:
pip install -r requirements.txt

*Configuration
-Place your invoice text files in the designated input directory (PDF to TXT).
-Adjust any specific configurations (if needed) in the script to match your invoice format.

*Running the Tool
-Execute the script from your command line:
python automate_invoices.py
-The tool processes all invoices in the input directory, categorizing data and generating reports in the output directory (OutputTxtsV2).

*Viewing Reports
-Navigate to the output directory to view the generated financial reports.
-Reports are organized by month and year for easy access and review.
