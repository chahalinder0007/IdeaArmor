echo "Deleting temporary helper files for PDF generation..."

rm -r ../../layouts/pdf-gen-rc-docs
rm -r ../../content/pdf-gen-rc-docs

rm -r ../../layouts/pdf-gen-rs-docs
rm -r ../../content/pdf-gen-rs-docs

rm -r ../../layouts/pdf-gen-ri-docs
rm -r ../../content/pdf-gen-ri-docs

rm -r ../../layouts/pdf-gen-stack-docs
rm -r ../../content/pdf-gen-stack-docs

rm -r ../../layouts/pdf-gen-kubernetes-docs
rm -r ../../content/pdf-gen-kubernetes-docs

rm -r ../../static/pdfs/archive/tmp

echo "Finished deleting temporary helper files for PDF generation."
