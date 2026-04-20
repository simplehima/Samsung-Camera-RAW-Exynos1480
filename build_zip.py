import zipfile
import os

def build_posix_zip(source_dir, output_filename):
    print(f"[*] Building POSIX-compliant ZIP: {output_filename}")
    with zipfile.ZipFile(output_filename, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for root, dirs, files in os.walk(source_dir):
            for file in files:
                # Construct the full local path
                full_path = os.path.join(root, file)
                
                # Construct the archive path using FORWARD SLASHES
                rel_path = os.path.relpath(full_path, source_dir)
                archive_path = rel_path.replace(os.sep, '/')
                
                print(f"  + Adding: {archive_path}")
                zipf.write(full_path, archive_path)

if __name__ == "__main__":
    # We use the zip_v4 source directory but build into a fresh filename
    build_posix_zip('zip_v4', 'DeathU_V8_Level3.zip')
    print("[+] Done!")
