#ifndef __RECT_FUNCTIONS__
#define __RECT_FUNCTIONS__

#include <opencv2/core/core.hpp>

//! �摜�̈悩��͂ݏo������`���J�b�g
/*!
\param[in] obj_rect ���͋�`
\param[in] img_size �摜�T�C�Y
\retrun �؂���ꂽ��`
*/
cv::Rect TruncateRect(const cv::Rect& obj_rect, const cv::Size& img_size);

//! ��`���g�k����
/*!
���S�ʒu�͌Œ肵���܂܁A��`�̕��܂��͍�����ύX����B
\param[in] src_rect ���͋�`
\param[in] rescale ���A�����̊g�k�X�P�[��
*/
cv::Rect RescaleRectSize(const cv::Rect& src_rect, const cv::Size2f& rescale);

//! ��`�̎l�����W���擾
/*!
����̍��W���玞�v����
\param[in] src_rect ���͋�`
\param[out] dst_corners �o�̓R�[�i�[
*/
template <typename T>
void Rect2Corners(const cv::Rect_<T>& src_rect, std::vector<cv::Point_<T> >& dst_corners)
{
	dst_corners.clear();
	dst_corners.push_back(cv::Point_<T>(src_rect.x, src_rect.y));
	dst_corners.push_back(cv::Point_<T>(src_rect.x + src_rect.width, src_rect.y));
	dst_corners.push_back(cv::Point_<T>(src_rect.x + src_rect.width, src_rect.y + src_rect.height));
	dst_corners.push_back(cv::Point_<T>(src_rect.x, src_rect.y + src_rect.height));
}

//! ��`���g�k����
/*!
x, y, width, height�S�Ă����X�P�[��
\param[in] src_rect ���͋�`
\param[in] dst_rect �o�͋�`
\param[in] scale ���A�����̊g�k�X�P�[��
*/
template <typename T> 
void RescaleRect(const cv::Rect_<T>& src_rect, cv::Rect_<T>& dst_rect, float scale){
	dst_rect = cv::Rect_<T>(scale * src_rect.x, scale * src_rect.y, scale * src_rect.width, scale * src_rect.height);
};

template <typename T>
void RescaleRect(const cv::Rect_<T>& src_rect, cv::Rect_<T>& dst_rect, const cv::Size2f& scale) {
	dst_rect = cv::Rect_<T>(src_rect.x * scale.width, src_rect.y * scale.height,
		src_rect.width * scale.width, src_rect.height * scale.height);
};

template <typename T>
void RescaleRect(const std::vector<cv::Rect_<T> >& src_rects, std::vector<cv::Rect_<T> >& dst_rects, float scale){
	dst_rects.clear();
	typename std::vector<cv::Rect_<T> >::const_iterator it, it_e = src_rects.end();
	for(it = src_rects.begin(); it != it_e; it++){
		cv::Rect_<T> rect;
		RescaleRect(*it, rect, scale);
		dst_rects.push_back(rect);
	}
};


template <typename T>
void RescaleRect(const std::vector<cv::Rect_<T> >& src_rects, std::vector<cv::Rect_<T> >& dst_rects, const cv::Size2f scale) {
	dst_rects.clear();
	typename std::vector<cv::Rect_<T> >::const_iterator it, it_e = src_rects.end();
	for (it = src_rects.begin(); it != it_e; it++) {
		cv::Rect_<T> rect;
		RescaleRect(*it, rect, scale);
		dst_rects.push_back(rect);
	}
};

// ��`�̈ړ�
template <typename T>
void MoveRect(const cv::Rect_<T>& src_rect, cv::Rect_<T>& dst_rect, const cv::Point_<T>& mv){
	dst_rect = src_rect;
	dst_rect.x += mv.x;
	dst_rect.y += mv.y;
}

template <typename T>
void MoveRect(const std::vector<cv::Rect_<T> >& src_rects, std::vector<cv::Rect_<T> >& dst_rects, const cv::Point_<T>& mv){
	dst_rects.clear();
	typename std::vector<cv::Rect_<T> >::const_iterator it, it_e = src_rects.end();
	for(it = src_rects.begin(); it != it_e; it++){
		cv::Rect_<T> rect;
		MoveRect(*it, rect, mv);
		dst_rects.push_back(rect);
	}
}


template <typename T>
void MoveRect(const std::vector<std::vector<cv::Rect_<T>>>& src_rects, std::vector<std::vector<cv::Rect_<T>>>& dst_rects, const cv::Point_<T>& mv){
	dst_rects.clear();
	typename std::vector<std::vector<cv::Rect_<T> > >::const_iterator it, it_e = src_rects.end();
	for(it = src_rects.begin(); it != it_e; it++){
		std::vector<cv::Rect_<T> > rects;
		MoveRect(*it, rects, mv);
		dst_rects.push_back(rects);
	}
}


//! �Q�̋�`�̊O�ڋ�`���Z�o
template <typename T>
cv::Rect_<T> CombineRect(const cv::Rect_<T>& a, const cv::Rect_<T>& b){
	T bx = std::min(a.x, b.x);
	T by = std::min(a.y, b.y);
	T ex = std::max(a.x + a.width, b.x + b.width);
	T ey = std::max(a.y + a.height, b.y + b.height);
	return cv::Rect_<T>(bx, by, ex-bx, ey-by);
}


//! ��`�̊O�ڋ�`���Z�o
template <typename T>
cv::Rect_<T> CombineRect(const std::vector<cv::Rect_<T>>& a) {
	if (a.empty())
		return cv::Rect_<T>(0, 0, 0, 0);
	cv::Rect_<T> tmp = a[0];
	for (int i = 1;i < a.size(); i++) {
		tmp = CombineRect(tmp, a[i]);
	}
	return tmp;
}


template <typename T>
bool isInsideRect(const cv::Rect_<T>& inside, const cv::Rect_<T>& outside) {
	return (inside.x >= outside.x && inside.y >= outside.y &&
		inside.x + inside.width <= outside.x + outside.width &&
		inside.y + inside.height <= outside.y + outside.height);
}

#endif