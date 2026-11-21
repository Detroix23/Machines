#!/bin/bash
# Format file name for easier CLI manipulation.

file="$1";
new="$file";

if [ ! -f "$file" ]; then
    echo "(!) fmt-fn \`$file\` doesn't exists.";
    exit 1;
fi


space_filter=" _";
space_replace="_";
new=$(echo "$new" | sed -r "s/[${space_filter}]+/${space_replace}/g");

e_filter="éèêë";
e_replace="e";
new=$(echo "$new" | sed -r "s/[${e_filter}]+/${e_replace}/g");

a_filter="áàâä";
a_replace="e";
new=$(echo "$new" | sed -r "s/[${a_filter}]+/${a_replace}/g");

echo "(?) fmt-fn Moved \`$file\` to \`$new\`.";
mv "$file" "$new";
exit 0;
