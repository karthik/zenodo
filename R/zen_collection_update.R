# Description	Update an existing deposition resource.
# URL	https://zenodo.org/api/deposit/depositions/:id
# Method	PUT
# Request headers	Content-Type: application/json
# Scopes	deposit:write
# URL parameters	
# Required:
# id: Deposition identifier
# Data parameters	
# A deposition metadata resource. Example:

# {
#     "metadata": {
#         "upload_type": "presentation",
#         ...
#     }
# }
# Success response	
# Code: 200 OK
# Body: a deposition resource.