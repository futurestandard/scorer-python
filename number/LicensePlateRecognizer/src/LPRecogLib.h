#ifndef __LPRECOG_LIB__
#define __LPRECOG_LIB__

#if WIN32
#define DLLEXPORT extern "C" __declspec(dllexport)
#else
#define DLLEXPORT extern "C"
#endif

#include "LPRecog.h"

//! �V�����C���X�^���X�𐶐�
DLLEXPORT lpr::LPRecog* new_LPRecog();

//! �C���X�^���X���폜
DLLEXPORT void delete_LPRecog(lpr::LPRecog* h_LPRecog);

//! �ݒ�t�@�C���̓ǂݍ���
DLLEXPORT int initialize(lpr::LPRecog* h_LPRecog, 
	const char* detector_file, const char* shape_file,
	const char* local_name_filter, const char* local_name_id,
	const char* class_number_filter, const char* class_number_id,
	const char* hiragana_filter, const char* hiragana_id,
	const char* car_number_filter, const char* car_number_id
	);


//! �F��
/*!
\param[in] h_LPRecog �n���h��
\param[in] image_data_ptr �摜�|�C���^
\param[in] image_width �摜��
\param[in] image_height �摜����
\param[in] image_type �摜�^
\param[in] min_plate_width ���o�ŏ���(pixel)
\param[in] max_plate_width ���o�ő啝(pixel)
\param[in] num_plates �ő匟�o��
\param[in] threshold 臒l
\return ���ʃN���X�ւ̃n���h��
*/
DLLEXPORT void* Recog(lpr::LPRecog* h_LPRecog, 
	void* image_data_ptr, int image_width, int image_height, int image_type,
	int min_plate_width, int max_plate_width, int num_plates, float threshold);


//! ���o���ʂ��폜
DLLEXPORT void delete_PlateInfos(void* h_plate_infos);

//! ���o�����i���o�[�v���[�g�̐�
DLLEXPORT int NumDetected(void* h_plate_infos);

//! id�Ԗڂ̌��ʂ̒n�����擾
DLLEXPORT const char* GetLocalName(void* h_plate_infos, int id);

//! id�Ԗڂ̌��ʂ̕��ޔԍ����擾
DLLEXPORT const char* GetClassNumber(void* h_plate_infos, int id);

//! id�Ԗڂ̌��ʂ̂Ђ炪�Ȃ��擾
DLLEXPORT const char* GetHiragana(void* h_plate_infos, int id);

//! id�Ԗڂ̌��ʂ̎ԗ��ԍ����擾
DLLEXPORT const char* GetCarNumber(void* h_plate_infos, int id);

//! id�Ԗڂ̌��ʂ̃v���[�g�R�[�i�[���擾
//DLLEXPORT const float* GetPlateCorners(void* h_plate_infos, int id);
DLLEXPORT void GetPlateCorners(void* h_plate_infos, int id, float* dst_corners);

#endif