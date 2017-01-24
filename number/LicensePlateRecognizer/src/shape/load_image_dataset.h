#ifndef __LOAD_IMAGE_DATASET__
#define __LOAD_IMAGE_DATASET__

#include <opencv2/core.hpp>
#include "shape_predictor.h"

namespace cvsr {

	//! XML�t�@�C������w�K�f�[�^/�e�X�g�f�[�^��ǂݍ���
	/*!
	\param[in] filename XML�t�@�C��
	\param[out] image_list �摜
	\param[out] rectangles ��`
	\param[out] landmarks �����_
	\param[in] relative_path_from_file filename����̑��΃p�X�Ƃ��Ĉ���
	*/
	bool load_image_dataset(const std::string& filename,
		std::vector<std::string>& image_list,
		std::vector<std::vector<cv::Rect> >& rectangles, 
		std::vector<std::vector<cvsr::shape_landmarks> >& landmarks,
		bool relative_path_from_file = false);


	//! XML�t�@�C���֊w�K�f�[�^/�e�X�g�f�[�^��ۑ�
	/*!
	\param[in] filename XML�t�@�C��
	\param[in] image_list �摜�t�@�C��
	\param[in] rectangles ��`
	\param[in] landmarks �����_
	*/
	bool save_image_dataset(const std::string& filename,
		const std::string& title,
		const std::vector<std::string>& image_list,
		const std::vector<std::vector<cv::Rect> >& rectangles,
		const std::vector<std::vector<cvsr::shape_landmarks> >& landmarks,
		const std::string& comment = std::string());
}

#endif
