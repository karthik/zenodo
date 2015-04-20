# Description	Update a deposition file resource. Currently the only use is renaming an already uploaded file. If you one to replace the actual file, please delete the file and upload a new file.
# URL	https://zenodo.org/api/deposit/depositions/:id/files/:file_id
# Method	PUT
# Request headers	Content-Type: application/json
# Scopes	deposit:write
# URL parameters	
# Required:
# id: Deposition identifier
# file_id: Deposition file identifier
# Data parameters	
# A partial deposition file resources with only the filename attributes. Example:

# {
#     "filename": "<new name>"
# }
# Success response	
# Code: 200 OK
# Body: a deposition file resource.
# Error response	See HTTP status codes (400 and 500 series errors) and error responses.