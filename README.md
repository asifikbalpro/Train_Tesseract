# Train_Tesseract
Using this program you can train new Font for Tesseract

# requirement files and program link
    https://github.com/tesseract-ocr

# Requirement
    * tesseract-ocr
    * latest python
    * langdata_lstm from git for LSTM model training
        not all of data required, only the font you want to train.

        * use GitZip for github from browser extension.
        * mark all the font folder which you need.
        * and also mark all the one at the bottom:
            common.unicharam....
            desired_bigrams.txt
            font_properties
            forbidden_character...
            radical-stroke.txt

            and Font.unicharset if available.

    *tessdata from git. download the best traindata.
    *download Font from google with .ttf format

# step
    1. download traineddata from: 
        https://github.com/tesseract-ocr/tessdata_best.git

        and put that file on tesseract/tessdata/

    2. download font from google. format should be ttf.
    3. download LSTM from:
        https://github.com/tesseract-ocr/langdata_lstm.git 

        use gitzip to download the matched laguage.
        
        put all the files from the zip file to langdata_lstm/
    4.  open main.sh in editor
    5.  open font file and see font name.
    6.  put that font name on --fontlist 'here font name'
    7.  increase maxpages for more improvement
    8.  increase max_iterations for more improment and low error rate.
    9. save the file.
    10  put font file on font folder.
    11. run main.sh file. " . main.sh"
    12. goto output folder. and copy the font_name.traineddata and rename into name.traineddata
    13. put this name.traineddata in main tesseract-ocr/4.0/tessdata/

    for ubuntu: tesseract-ocr dir is "/usr/share/tesseract-ocr/4.00/tessdata"

    good luck..


