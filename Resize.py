
import Image

# open an image file (.bmp,.jpg,.png,.gif) you have in the working folder
imageFile = "Images/SpikeSeadra.jpg"

im1 = Image.open(imageFile)

# adjust width and height to your needs
width = 61
height = 89
# use one of these filter options to resize the image

im2 = im1.resize((width, height), Image.ANTIALIAS)    # best down-sizing filter

ext = ".jpg"
im2.save("newimage" + ext)


