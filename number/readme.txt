
��minagawa_license.tar.gz
�F�삳��쐬�̎ԔԔF���v���O�����֘A�t�@�C���ꎮ

�W�J����Ɖ��L�̃t�@�C��������B���L���F�삳��̐����B
-----��������-----

Conf/
�ݒ�/�w�K�ς݃t�@�C���ꎮ

sample/
Python�R�[�h�ƃT���v���R�[�h
- LPRecogLib.py
        C++�̃��C�u���������b�v��Python�p���C�u����
- sample.py
        LPRecogLib.py�p�T���v���R�[�h
- LPRecogLib3.py
        C++�̃��C�u���������b�v��Python3�p���C�u����
- sample3.py
        LPRecogLib3.py�p�T���v���R�[�h


src/
�\�[�X�R�[�h�ꎮ
�w�K�@�\���Ȃ��ŁA�Œ���̔F���@�\�𓮂������߂ɕK�v�ȃt�@�C��
�ELPRecog.*
�ECharRecognition.*
�EException.*
�ELicensePlateInfo.*
�EPlateDetection.*
�EPlateSegmentation.*
�Ecommon/*
�EHMAX/*
�Eshape/shape_predictor.*
�Eshape/binary_func.*

��L��Python�g���ݗp��DLL�����邽�߂̃t�@�C��
�ELPRecogLib.*

DLL�̃r���h�ɕK�v�ȏ���CMakeList.txt�ɋL�q����Ă���̂�
$ cmake .
$ make
$ sudo make install
�Ƃ���΃r���h����ăC���X�g�[���ł��܂��B


�܂��A�ˑ�����OpenCV�̃��C�u�����͈ȉ��̒ʂ�ł��B
opencv_core310
opencv_imgproc310
opencv_calib3d310
opencv_objdetect310
------�����܂�------