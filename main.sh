
chmod 755 -R tesseract/src/training/tesstrain.sh

combine_tessdata -e tesseract/tessdata/eng.traineddata eng.lstm

rm -rf train/*
tesseract/src/training/tesstrain.sh --fonts_dir fonts \
--fontlist 'Arial Th' \
--lang eng \
--linedata_only \
--langdata_dir langdata_lstm \
--tessdata_dir tesseract/tessdata \
--save_box_tiff \
--maxpages 10 \
--output_dir train

rm -rf output/* 
OMP_THREAD_LIMIT=16 lstmtraining \
--continue_from eng.lstm \
--model_output output/font_name \
--traineddata tesseract/tessdata/eng.traineddata \
--train_listfile train/eng.training_files.txt \
--max_iterations 100 ## max_iterations, increase for more improvement

lstmtraining --stop_training \
--continue_from output/font_name_checkpoint \
--traineddata tesseract/tessdata/eng.traineddata \
--model_output output/font_name.traineddata