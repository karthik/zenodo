# Description	Sort the files for a deposition. By default, the first file is shown in the file preview.
# URL	https://zenodo.org/api/deposit/depositions/:id/files
# Method	PUT
# Request headers	Content-Type: application/json
# Scopes	deposit:write
# URL parameters	
# Required:
# id: Deposition identifier
# Data parameters	
# A JSON array of partial deposition file resources with only the id attribute. Example:

# [
#     {"id": "<file id 1>"},
#     {"id": "<file id 2>"},
#     ...
# ]
# Success response	
# Code: 200 OK
# Body: an array of deposition file resources.