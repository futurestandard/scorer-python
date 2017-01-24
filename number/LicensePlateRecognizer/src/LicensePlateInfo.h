#ifndef __LICENSE_PLATE_INFO__
#define __LICENSE_PLATE_INFO__

#include <opencv2/core.hpp>

namespace lpr{

//! �i���o�[�v���[�g�`��̎��O�m��
class LicensePlateInfo
{
private:
	int _Type;
	cv::Rect2f _PlatePosition;	//!< �i���o�[�v���[�g�̈ʒu
	cv::Rect2f _UpperCharRegion; //!< �n���{���ޔԍ��̈�
	cv::Rect2f _LowerCharRegion; //!< �Ђ炪�ȁ{�ԗ��ԍ��̈�
	cv::Rect2f _LocalNameRegion;	//!< �n���̈�
	cv::Rect2f _ClassNumberRegion;	//!< �����ԍ��̈�
	cv::Rect2f _HiraganaRegionMax;	//!< �Ђ炪�ȗ̈�̍ŏ��T�C�Y 
	cv::Rect2f _HiraganaRegionMin;	//!< �Ђ炪�ȗ̈�̍ő�T�C�Y
	cv::Rect2f _CarNumberRegion;	//!< �ԗ��ԍ��̈�
	std::vector<cv::Rect2f> _CarNumberChars;	//!< �ԗ��ԍ��e�����̗̈�i�S�������j
	cv::Rect2f _Hyphen;
	cv::Rect2f _CloutNailTopLeft;	//!< ����̕e
	cv::Rect2f _CloutNailTopRight;	//!< �E��̕e
	float _ClassNumFontWidth;	//!< ���ޔԍ��̃t�H���g�̐���
	float _CarNumFontWidth;		//!< �ԗ��ԍ��̃t�H���g�̐���
	

public:

	const static int MIDDLEPLATE = 0;
	const static int LARGEPLATE_SHORT_LOCALNAME = 1;
	const static int LARGEPLATE_LONG_LOCALNAME = 2;
	const static int LARGEPLATE_SHORT_CLASSNUMBER = 3;

	LicensePlateInfo(int type = MIDDLEPLATE) {
		Initialize(type);
	}

	LicensePlateInfo(const cv::Rect2f& plate_position, int type = MIDDLEPLATE) {
		Initialize(plate_position, type);
	}

	LicensePlateInfo(const cv::Size2f& plate_size, int type = MIDDLEPLATE) {
		Initialize(plate_size, type);
	}

	//! �����p�����[�^���蓖��
	void Initialize(int type) {
		_Type = type;
		if (type == LARGEPLATE_LONG_LOCALNAME ||
			type == LARGEPLATE_SHORT_CLASSNUMBER ||
			type == LARGEPLATE_SHORT_LOCALNAME)
			InitializeL(type);
		else
			Initialize();
	}


	//! �����p�����[�^���蓖�āi���j
	void Initialize() {
		_PlatePosition = cv::Rect2f(0, 0, 500, 250);
		_UpperCharRegion = cv::Rect2f(105,13,294,77);
		_LowerCharRegion = cv::Rect2f(25,100,455,135);
		_LocalNameRegion = cv::Rect2f(105, 13, 162, 77);
		_ClassNumberRegion = cv::Rect2f(267, 13, 132, 77);
		_HiraganaRegionMax = cv::Rect2f(25, 133, 70, 70);
		_HiraganaRegionMin = cv::Rect2f(39, 133, 42, 70);
		_CarNumberRegion = cv::Rect2f(105, 100, 375, 135);
		_Hyphen = cv::Rect2f(267, 158, 51, 18);
		_ClassNumFontWidth = 9;
		_CarNumFontWidth = 18;
		_CarNumberChars.resize(4);
		_CarNumberChars[0] = cv::Rect2f(105, 100, 81, 135);
		_CarNumberChars[1] = cv::Rect2f(186, 100, 81, 135);
		_CarNumberChars[2] = cv::Rect2f(318, 100, 81, 135);
		_CarNumberChars[3] = cv::Rect2f(399, 100, 81, 135);
		_CloutNailTopLeft = cv::Rect2f(55,13,50,50);
		_CloutNailTopRight = cv::Rect2f(399, 13, 38, 38);
	};


	//! �����p�����[�^���蓖�āi��j
	void InitializeL(int type) {
		_PlatePosition = cv::Rect2f(0, 0, 500, 250);
		_UpperCharRegion = cv::Rect2f(100, 19, 280, 55);
		_LowerCharRegion = cv::Rect2f(25, 81, 459, 150);

		// �n��������>=���ޔԍ�������
		if (type == LARGEPLATE_LONG_LOCALNAME) {
			_LocalNameRegion = cv::Rect2f(100, 19, 160, 55);
			_ClassNumberRegion = cv::Rect2f(260, 19, 120, 55);
		}
		// �n��������>=3 && ���ޔԍ�������<=2
		else if (type == LARGEPLATE_SHORT_CLASSNUMBER) {
			_LocalNameRegion = cv::Rect2f(100, 19, 185, 55);
			_ClassNumberRegion = cv::Rect2f(285, 19, 95, 55);
		}
		// �n�������� < ���ޔԍ�������
		else if(type == LARGEPLATE_SHORT_LOCALNAME){
			_LocalNameRegion = cv::Rect2f(100, 19, 133, 55);
			_ClassNumberRegion = cv::Rect2f(233, 19, 147, 55);
		}
		_HiraganaRegionMax = cv::Rect2f(25, 125, 57, 57);
		_HiraganaRegionMin = cv::Rect2f(36, 125, 35, 67);
		_CarNumberRegion = cv::Rect2f(86, 81, 398, 150);
		_Hyphen = cv::Rect2f(262, 145, 46, 22);
		_ClassNumFontWidth = 13;
		_CarNumFontWidth = 22;
		_CarNumberChars.resize(4);
		_CarNumberChars[0] = cv::Rect2f(86, 81, 88, 150);
		_CarNumberChars[1] = cv::Rect2f(174, 81, 88, 150);
		_CarNumberChars[2] = cv::Rect2f(308, 81, 88, 150);
		_CarNumberChars[3] = cv::Rect2f(396, 81, 88, 150);
		_CloutNailTopLeft = cv::Rect2f(50, 19, 50, 50);
		_CloutNailTopRight = cv::Rect2f(380, 19, 38, 38);
	};

	void Initialize(const cv::Rect2f& plate_position, int type);

	void Initialize(const cv::Size2f& plate_size, int type) {
		Initialize(cv::Rect2f(0, 0, plate_size.width, plate_size.height), type);
	}

	int Type() const {
		return _Type;
	}

	//! �i���o�[�v���[�g�̃T�C�Y
	cv::Size2f PlateSize() const {
		return _PlatePosition.size();
	};	

	//! �i���o�[�v���[�g�̈ʒu
	cv::Rect2f PlatePosition() const {
		return _PlatePosition;
	};

	//! �n���̈�
	cv::Rect2f LocalNameRegion() const {
		return _LocalNameRegion;
	}

	//! �����ԍ��̈�
	cv::Rect2f ClassNumberRegion() const {
		return _ClassNumberRegion;
	}

	//! �Ђ炪�ȗ̈�̍ŏ��T�C�Y
	cv::Rect2f HiraganaRegionMax() const {
		return _HiraganaRegionMax;
	}

	//! �Ђ炪�ȗ̈�̍ő�T�C�Y
	cv::Rect2f HiraganaRegionMin() const{
		return _HiraganaRegionMin;
	}
	
	//! �ԗ��ԍ��̈�
	cv::Rect2f CarNumberRegion() const {
		return _CarNumberRegion;
	}

	//! �ԗ��ԍ��e�����̗̈�i�S�������j
	std::vector<cv::Rect2f> CarNumberChars() const {
		return _CarNumberChars;
	}

	//! �㕶����̈�i�n���{���ޔԍ��j
	cv::Rect2f UpperCharRegion() const {
		return _UpperCharRegion;
	}

	//! ��������̈�i�Ђ炪�ȁ{�ԗ��ԍ��j
	cv::Rect2f LowerCharRegion() const {
		return _LowerCharRegion;
	}

	//! �n�C�t��
	cv::Rect2f Hyphen() const {
		return _Hyphen;
	}

	//! ����e
	cv::Rect2f CloutNailTopLeft() const {
		return _CloutNailTopLeft;
	}

	//! �E��e
	cv::Rect2f CloutNailTopRight() const {
		return _CloutNailTopRight;
	}

	//! ���ޔԍ��̃t�H���g�̐���
	float ClassNumFontWidth() const{
		return _ClassNumFontWidth;
	}

	//! �ԗ��ԍ��̃t�H���g�̐���
	float CarNumFontWidth() const {
		return _CarNumFontWidth;
	}

	//! �n���̊e�����̈���Z�o
	/*!
	\param[in] num_char �n��������
	*/
	std::vector<cv::Rect2f> LocalNameChars(int num_char) const;

	//! �n���̂Ƃ肤��e�����̈���Z�o
	std::vector<std::vector<cv::Rect2f> > LocalNameCharsAllPatterns() const;

	//! ���ޔԍ��̊e�����̈���Z�o
	/*!
	\param[in] num_char ���ޔԍ�����
	*/
	std::vector<cv::Rect2f> ClassNumberChars(int num_char) const;

	//! ���ޔԍ��̂Ƃ肤��e�����̈���Z�o
	std::vector<std::vector<cv::Rect2f> > ClassNumberCharsAllPatterns() const;

	//! ��`�̍��W�ϊ�
	/*!
	anchor_rect�ɑ΂���src_rects�̑��Έʒu��ۑ�����悤�ɁAanchor_rect��transformed_anchor�֕ϊ���������src_rects�̈ʒu��dst_rects�Ƃ��ċ��߂�B
	*/
	static void TransformRectPosition(const cv::Rect2f& anchor_rect, const std::vector<cv::Rect2f>& src_rects,
		const cv::Rect2f& transformed_anchor, std::vector<cv::Rect2f>& dst_rects);

	static void TransformRectPosition(const cv::Rect2f& anchor_rect, const cv::Rect2f& src_rect,
		const cv::Rect2f& transformed_anchor, cv::Rect2f& dst_rect);

};

}
#endif