from PIL import Image, ImageDraw

sizes = [16, 24, 32, 48, 64, 128, 256]
base = Image.new('RGBA', (256, 256), (0, 0, 0, 0))
d = ImageDraw.Draw(base)

# rounded pink background
bg = (243, 181, 208, 255)
d.rounded_rectangle((16, 16, 240, 240), radius=56, fill=bg)

# soft center circle
cream = (255, 247, 251, 245)
d.ellipse((68, 72, 188, 192), fill=cream)

# bow loops
bow = (255, 143, 186, 255)
d.ellipse((72, 78, 124, 126), fill=bow)
d.ellipse((132, 78, 184, 126), fill=bow)
d.polygon([(128, 96), (106, 118), (150, 118)], fill=(217, 107, 153, 255))

# heart
heart = (217, 107, 153, 255)
d.ellipse((88, 106, 128, 146), fill=heart)
d.ellipse((128, 106, 168, 146), fill=heart)
d.polygon([(82, 126), (174, 126), (128, 176)], fill=heart)

# sparkles
spark = (255, 241, 247, 255)
d.polygon([(128, 42), (134, 56), (148, 62), (134, 68), (128, 82), (122, 68), (108, 62), (122, 56)], fill=spark)
d.ellipse((74, 170, 90, 186), fill=spark)
d.ellipse((170, 74, 182, 86), fill=spark)

base.save(r'C:\Users\jwilc\BabyGirlCountdown\baby-girl-countdown-icon.ico', format='ICO', sizes=[(s, s) for s in sizes])
print('created ico')
