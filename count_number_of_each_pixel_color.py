import argparse
import skimage

#declare program arguments
parser = argparse.ArgumentParser(
                    prog='Pixel Color Occurence Calculator',
                    description='This program will read in an image file, count the occurence of each unique pixel color value, and print the results to the terminal.',
                    epilog='Eric Dougherty 2023')
parser.add_argument('imagename', type=ascii, help='path or name to the image file.')
args = parser.parse_args()

file = args.imagename
image = skimage.io.imread(file)

#add each uniq color to dictionary. Count occurences.
colors = dict()
for row in image:
    for pixel in row:
        pixelStr = str(pixel)
        if pixelStr in colors:
            colors[pixelStr] = colors[pixelStr] + 1
        else:
            colors[pixelStr] = 1

#sort by occurence
colors = dict(sorted(colors.items(), key=lambda x:x[1]))

#print color: occurence for all pixel colors
for color, count in colors.items():
    print(color, count)
