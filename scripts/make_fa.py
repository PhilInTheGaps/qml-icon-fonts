# This script reads the metadata of all the font awesome icons
# and writes their names into a QML file

import json

OUTPUT_FILE = "../IconFonts/FontAwesome.qml"
TEMPLATE_FILE = "./template_fa.qml"
METADATA_PATH = "../thirdparty/Font-Awesome/metadata/icons.json"

RESERVED_NAMES = ["print", "children"]

print(f"Reading icon metadata from {METADATA_PATH} ...")
with open(METADATA_PATH) as metadata_file:
  metadata = json.load(metadata_file)

with open(OUTPUT_FILE, "wt") as output_file:
    print(f"Reading template {TEMPLATE_FILE} ...")
    with open(TEMPLATE_FILE, "rt") as template_file:
        output_file.write(template_file.read())

    print(f"Writing icons to {OUTPUT_FILE} ...")
    for icon in metadata.keys():
        parts = icon.split('-')

        # Convert names to camelcase
        icon_name = ""
        for i in range(len(parts)):
            part = parts[i]
            if (i > 0):
                part = part.title()
            elif (part[0].isdigit()):
                part = f"_{part}"
            icon_name += part

        # Check for not reserved icon names
        if icon_name in RESERVED_NAMES:
            icon_name = "_" + icon_name

        # Write property to file
        unicode = metadata[icon]['unicode']

        if len(unicode) < 4:
            unicode = f"\\x{unicode}"
        else:
            unicode = f"\\u{unicode}"

        output_file.write(f"    readonly property string {icon_name}: \"{unicode}\"\n")

    output_file.write("}\n")
print("Done.")

exit(0)

with urllib.request.urlopen("https://raw.githubusercontent.com/FortAwesome/Font-Awesome/master/metadata/icons.yml") as iStream:
    try:
        # Get Icons.yml from GitHub
        icons = yaml.safe_load(iStream)

        # Start new QML file
        output = open(OUTPUT_FILE, 'w')

        # Get template
        print("Reading template {} ...".format(TEMPLATE_FILE))
        template = open(TEMPLATE_FILE, 'r')
        output.write(template.read())
        template.close()

        # Iterate through all icons and get unicode
        print("Writing icons and template to {} ...".format(OUTPUT_FILE))
        for icon in icons:
            parts = icon.split('-')

            # Convert names to camelcase
            icon_name = ""
            for i in range(len(parts)):
                part = parts[i]
                if (i > 0):
                    part = part.title()
                elif (part[0].isdigit()):
                    part = "_" + part
                icon_name += part

            # Check for not allowed icon names
            if (icon_name == "print"):
                icon_name = "_" + icon_name

            # Write property to file
            output.write("    property string " + icon_name + " : " + "\"\\u" + icons[icon]["unicode"] + "\"\n")

        output.write("}")
        output.close()
        print("Done.")

    except yaml.YAMLError as exc:
        print(exc)
