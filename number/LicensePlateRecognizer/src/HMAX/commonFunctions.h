#ifndef __COMMON_FUNCTIONS__
#define __COMMON_FUNCTIONS__

#include <opencv2/core/core.hpp>
#include <fstream>

namespace UTIL_CV{

// �����_�ȉ��l�̌ܓ�(HaarS1)
inline int round(double a){return (int)(a+0.5);};

//! Write cv::Mat as binary(HMAX)
/*!
\param[out] ofs output file stream
\param[in] out_mat mat to save
*/
bool writeMatBinary(std::ofstream& ofs, const cv::Mat& out_mat);

//! Read cv::Mat from binary(HMAX)
/*!
\param[in] ifs input file stream
\param[out] in_mat mat to load
*/
bool readMatBinary(std::ifstream& ifs, cv::Mat& in_mat);

//! �z��̂W�ߖT�ŋɑ�l�ƒI�����_�����߂�B(HaarS1)
/*!
\param[in] src_mat ���́iCV_32FC1�j
\param[out] dst_mat �o�́F��l(CV_8UC1)
\param[in] threshold 臒l
*/
void ExtractMaximaAndShelf(const cv::Mat& src_mat, cv::Mat& dst_mat, float threshold = 0.0);

//! ��l�摜����ID�Ԗڂ̔���f�̈ʒu��Ԃ�
cv::Point PositionOfPositiveElementID(const cv::Mat& bin_img, int id);

//! ��l�摜���̃����_���Ȕ���f�̈ʒu��Ԃ�(S2)
cv::Point RandomPositiveElement(const cv::Mat& bin_img);

//! �w�肵���̈��؂���(S2)
std::vector<cv::Mat> CutMats(const std::vector<cv::Mat>& c1_inputs, const cv::Rect& region);


//! �w��T�C�Y���͂ݏo��_���T�C�Y���ߖT�_�ɋߎ�(HaarS1)
/*!
\param[in] size �w��T�C�Y
\param pt �����T�C�Y����͂ݏo��ꍇ�A�ߖT�_�ɋߎ������
*/
void truncatePoint(const cv::Size& size, cv::Point& pt);

//! �摜�̒��S���Z�o���āAangle������]������B(HaarS1)
/*!
\param[in] src_mat ���͉摜
\param[out] dst_mat �o�͉摜�Bempty�̎��͉�]�����摜���S�Ď��܂�悤�Ɏ������������Bempty�Ŗ������͉摜�̒��S�ʒu�������悤�ɁB
\param[out] src_mat����dst_mat���쐬���邽�߂̃A�t�B���ϊ��s��
\param[in] angle ��]�p�x�i���v���j
\param[in] dst_size �o�͉摜�̃T�C�Y
*/
void RotateMat(const cv::Mat& src_mat, cv::Mat& dst_mat, cv::Mat& AffineMat, double angle, const cv::Size& dst_size = cv::Size(0,0));

//! ��`�̎l���̍��W��cv::Transform()�pMat�^�֕ύX(HaarS1)
std::vector<cv::Point2d> RectToPoints(const cv::Rect& src_rect);

//! ��`��h��Ԃ����}�X�N���쐬(HaarS1)
cv::Mat createMask(const cv::Size& img_size, const std::vector<cv::Point2d>& pts);

//! �T�C�Y�ύX(HaarS1)
void resize(const std::vector<cv::Mat>& src_array, std::vector<cv::Mat>& dst_array, cv::Size dsize, double fx = 0.0, double fy = 0.0, int interpolation = 1);


};

#endif
