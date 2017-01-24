#ifndef __PLATE_DETECTION__
#define __PLATE_DETECTION__

#include <opencv2/objdetect.hpp>
#include "shape/shape_predictor.h"


namespace lpr{

class PlateDetection
{
public:
	PlateDetection(void);
	//PlateDetection(const std::string& cascade_file);
	//PlateDetection(const std::string& cascade_file, const std::string& shape_predict_file);

	~PlateDetection(void);

	bool Init(const std::string& cascade_file){
		return _detector.load(cascade_file);
	}

	bool Init(const std::string& cascade_file, const std::string& shape_predict_file) {
		bool detector_ret = _detector.load(cascade_file);
		bool shape_predictor_ret = _shape_predictor.Load(shape_predict_file);
		return detector_ret & shape_predictor_ret;
	}

	bool Detect(const cv::Mat& img, std::vector<cv::Rect>& plates, int min_width = 0, int max_widht = 0, const cv::Rect& search_area = cv::Rect(0,0,0,0)) const;

	//! ��萳�m�ȃi���o�[�v���[�g�ʒu���擾
	/*!
	\param[in] img ���͉摜
	\param[in] init_plate �摜���̏����v���[�g�ʒu
	\param[in] class_num_area ���ޔԍ��̈�(DetectCharStringsRect�Œ��o)
	\param[in] car_num_area �ԗ��ԍ��̈�(DetectCharStringsRect�Œ��o)
	\param[out] corners ���ォ�玞�v���Ƀv���[�g�̈ʒu
	*/
	void AlignPlateCorners(const cv::Mat& img, const cv::Rect& init_plate, std::vector<cv::Point2f>& corners) const;

	void AlignAllPlateCorners(const cv::Mat& img, const std::vector<cv::Rect>& init_plate, std::vector<std::vector<cv::Point2f>>& corners) const;

	void setRectRescale(const cv::Size2f& rescale) {
		assert(rescale.width > 0 && rescale.height > 0);
		_rect_rescale = rescale;
	}

	cv::Size2f getRectRescale() const {
		return _rect_rescale;
	}

	//! �R�[�i�[������ɉ摜����v���[�g�̈��؂���
	/*!
	\param[in] src_img ���͉摜
	\param[in] dst_size �o�͉摜�T�C�Y
	\param[in] corners �v���[�g�̎l���i���ォ�玞�v���j
	\return �؂���ꂽ�摜
	*/
	static cv::Mat extractPlateImage(const cv::Mat& src_img, const cv::Size& dst_size, const std::vector<cv::Point2f>& corners);

private:
	//! �i���o�[�v���[�g���o��
	mutable cv::CascadeClassifier _detector;

	//! �v���[�g�`�󐄒�@
	cvsr::shape_predictor _shape_predictor;

	//! ���o���ʂ̋�`���g�傷��X�P�[���i�`�󌟏o�͂��̒��ōs����j
	cv::Size2f _rect_rescale;

};

}

#endif

