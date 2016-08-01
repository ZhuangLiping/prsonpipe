#!/bin/bash -e
# author: Miriam Weaverdyck 8/1/16
# ------------------------------------------------------------------------------
# This script copies raw/ to a temporary directory, replaces the nii in raw/ 
# with the most preprocessed nii from FSL, DARTEL, or SPM to be read by SPMw

source globals.sh

temp_raw_dir=$(mktemp -d -t tmp.XXXXXX)
mv $RAW_DIR/$SUBJ/* $temp_raw_dir

copy_dir=$PREP_DIR/$last_prep*/$SUBJ
# if [ $last == 'FSL' ]; then
# 	copy_dir=$PREP_DIR/FSL_prep/$SUBJ
# elif [ $last == 'DARTEL' ]; then
# 	copy_dir=$PREP_DIR/DARTEL*/$SUBJ
# elif [ $last == 'SPM' ]; then
# 	copy_dir=$PREP_DIR/SPM_prep/$SUBJ
# fi

cp $copy_dir/* $RAW_DIR/$SUBJ/