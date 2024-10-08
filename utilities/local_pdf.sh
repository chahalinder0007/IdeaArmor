# Run this script to create a PDF of a Redis doc on demand.
# Prerequisites: 
#   - Local Hugo server is running.
#   - Installed wkhtmltopdf command-line utility.

help=" Example commands: \n
\n
1) Create a PDF in the current directory: \n
    ./local_pdf.sh /content/rc/rc-quickstart.md
\n\n
2) Create a PDF in the current directory and specify the PDF name: \n
    ./local_pdf.sh /content/rc/rc-quickstart.md rc-quick.pdf
\n\n
3) Create a PDF in a different directory: \n
    ./local_pdf.sh /content/rc/rc-quickstart.md <destination_filepath>/rc-quick.pdf
"

if [ $# -eq 0 ]
then
    echo "No arguments provided"
    echo
    echo $help
    exit 1
fi

# Markdown source file
srcpath=$1
# Optional destination PDF filepath
destpath=$2


# Get command options
while getopts ":h" option; do
   case $option in
      h) # Display help
         echo $help
         exit;
   esac
done


# Create helper HTML

echo "Creating helper HTML"
echo

# Helper HTML directories will start with pdf-gen-
new_dir_name=$(echo $srcpath | sed 's#/content/#pdf-gen-#g' | sed 's#/_index##g' | sed 's#/#-#g' | sed 's#.md##g')

# Create a pdf-gen- layout directory
mkdir $(echo $new_dir_name | sed 's#^#../layouts/#g')

# Generate helper HTML from a template
filepath_sub=$(echo $srcpath | sed 's#/content/##g')
cat ./create_single_pdfs/list_template_single.html | sed "s#filepath#\"$filepath_sub\"#g" > ../layouts/$new_dir_name/list.html

# Create a pdf-gen- content directory
mkdir $(echo $new_dir_name | sed 's#^#../content/#g')
touch ../content/$new_dir_name/_index.md


# Wait 5 seconds so that Hugo has time to stage the helper HTML
sleep 5


# Create PDF

location=localhost:1313

html_name=$new_dir_name

if [ $# -eq 1 ]
then # Generate a PDF name from the source filepath if there's no destination filepath argument provided
    pdf_name=$(echo $srcpath | sed 's#/content/##g' | sed 's#/_index##g' | sed 's#/#-#g' | sed 's#.md##g')
    pdf_path=$(echo $pdf_name.pdf)
else # Otherwise, use the provided PDF filepath
    pdf_path=$destpath
fi

echo "Generating $pdf_path"
echo

# Convert an HTML page to a PDF
wkhtmltopdf http://$location/$html_name/ $pdf_path


# Remove helper HTML
rm -r ../layouts/$new_dir_name
rm -r ../content/$new_dir_name

echo
echo "Finished generating PDF."
