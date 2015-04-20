# Description	Delete an existing deposition resource. Note, only unpublished depositions may be deleted.
# URL	https://zenodo.org/api/deposit/depositions/:id
# Method	DELETE
# Scopes	deposit:write
# URL parameters	
# Required:
# id: Deposition identifier
# Success response	
# Code: 204 No Content
# Body: Empty.
# Error response	
# 404 Not found: Deposition does not exist.
# 403 Forbidden: Deleting an already published deposition.
# See also HTTP status codes (400 and 500 series errors) and error responses.