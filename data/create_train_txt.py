import glob, os, random
# Current directory
current_dir = os.path.dirname(os.path.abspath(__file__))
print(current_dir)
#current_dir = '/home/joe/Dokumente/alex/darknet2/data/batch4'
current_dir = os.path.join(current_dir,"batch6")
# Percentage of images to be used for the test set
percentage_test = 3;
# Create and/or truncate train.txt and test.txt
file_train = open('../train.txt', 'w')  
file_test = open('../test.txt', 'w')
# Populate train.txt and test.txt
counter = 1  
index_test = round(100 / percentage_test)  
# randomize set for training
file_list = glob.glob(os.path.join(current_dir, "*.jpg"))
random.shuffle(file_list)
for pathAndFilename in file_list:  
    title, ext = os.path.splitext(os.path.basename(pathAndFilename))
    if counter == index_test:
        counter = 1
        file_test.write(current_dir + "/" + title + '.jpg' + "\n")
    else:
        file_train.write(current_dir + "/" + title + '.jpg' + "\n")
        counter = counter + 1
