# Create backup of a file with timestamp
create_backup() {
    local file="$1"
    if [ -f "$file" ]; then
        local timestamp=$(get_timestamp)
        cp "$file" "${file}-${timestamp}"
        echo "Created backup of $file as ${file}-${timestamp}"
    fi
}