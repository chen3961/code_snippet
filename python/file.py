# Get file name without extension
import os

def get_file_name_without_extension(file_path):
  return os.path.splitext(os.path.basename(file_path))[0]
