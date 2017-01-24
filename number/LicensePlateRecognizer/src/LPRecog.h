#ifndef __LPRECOG__
#define __LPRECOG__

#include <opencv2/core.hpp>
#include <map>
#include "PlateDetection.h"
#include "PlateSegmentation.h"
#include "CharRecognition.h"

namespace lpr{

class LPRecog
{
public:
	//! �i���o�[�v���[�g�F������
	typedef struct _LPContents{
		float Confidence;	//!< �m�x[0-1]
		float Threshold; //!< �������l
		cv::Rect PlatePosition;	//!< �v���[�g�̏ꏊ
		std::vector<cv::Point2f> PlateCorners; //! �v���[�g�̏ڍ׈ʒu�i�l���̃R�[�i�[�F���ォ�玞�v���j
		cv::Rect LocalNamePosition;	//!< �n���̏ꏊ
		cv::Rect HiraganaPosition;	//!< �Ђ炪�Ȃ̏ꏊ
		std::vector<cv::Rect> ClassNumberPositions;	//!< ���ޔԍ��̏ꏊ
		std::vector<cv::Rect> CarNumberPositions;	//!< �ԗ��ԍ��̏ꏊ
		std::vector<int> CarNumberId;	//!< �ԗ��ԍ�ID
		std::string CarNumber;	//!< �ԗ��ԍ�
		std::vector<int> ClassNumberId;	//!< ���ޔԍ�ID
		std::string ClassNumber;	//!< ���ޔԍ�
		int LocalNameId;	//!< �n��ID
		std::string LocalName;	//!< �n��
		int HiraganaId;	//!< �Ђ炪��ID
		std::string Hiragana;	//!< �Ђ炪��
		cv::Mat PlateImage;	//!< �؂����ĕό`�����v���[�g�摜
		bool Commercial;	//!< true=�c�Ǝ�, false=���Ɨp��
		bool LargePlate;	//!< true=��v���[�g, false=���v���[�g

		bool operator<( const struct _LPContents& right ) const{
			return Confidence < right.Confidence;
		}
		bool operator>( const struct _LPContents& right ) const{
			return Confidence > right.Confidence;
		}
	}LPContents;

private:
	PlateDetection _PlateDetection;	//!< �i���o�[�v���[�g���o��
	PlateSegmentation _PlateSegmentation;	//!< �i���o�[�v���[�g���當���𕪗�
	CharRecognition _CarNumberRecog;	//!< �ԗ��ԍ��F��
	CharRecognition _ClassNumberRecog;	//!< ���ޔԍ��F��
	CharRecognition _HiraganaRecog;	//!< �Ђ炪�ȔF��
	CharRecognition _LocalNameRecog;	//!< �n���F��

	std::map<int, std::string> _LocalNameIds;	//!< �N���XID�ƒn���̃q���t
	std::map<int, std::string> _ClassNumberIds;	//!< ���ޔԍ�ID�ƕ��ޔԍ��̃q���t
	std::map<int, std::string> _HiraganaIds;	//!< �Ђ炪��ID�ƒn���̃q���t
	std::map<int, std::string> _CarNumberIds;	//!< �ԗ��ԍ�ID�Ǝԗ��ԍ��̃q���t
	
public:
	LPRecog(void);
	~LPRecog(void);

	//! �i���o�[�v���[�g�F����̏�����
	/*!
	\param[in] cascade_file ���o�p�̊w�K�ς݃p�����[�^�t�@�C��
	*/
	bool LoadDetector(const std::string& cascade_file){
		return _PlateDetection.Init(cascade_file);
	};

	//! �i���o�[�v���[�g�F����̏�����
	/*!
	\param[in] cascade_file ���o�p�̊w�K�ς݃p�����[�^�t�@�C��
	\param[in] shape_predictor_file �`�󐄒�p�̊w�K�ς݃p�����[�^�t�@�C��
	*/
	bool LoadDetector(const std::string& cascade_file, const std::string& shape_predictor_file) {
		return _PlateDetection.Init(cascade_file, shape_predictor_file);
	};


	const PlateDetection* GetDetector() const{
		return  &_PlateDetection;
	};

	//! �i���o�[�v���[�g�F��
	/*!
	\param[in] img ���͉摜
	\param[out] detected_plates ���o���ꂽ�v���[�g���
	\param[in] min_plate_width �ŏ��v���[�g�T�C�Y
	\param[in] max_plate_width �ő�v���[�g�T�C�Y
	\param[in] roi �����̈�
	\param[in] num_plates ���o����i���o�[�v���[�g�̍ő吔
	\param[in] threshold �������l(0-1�܂ł̒l)
	\param[in] ivert_img �Ⴆ�ΗΒn�ɔ��̂悤�Ȕ��]�p�^�[�������o���邩�ǂ���
	*/
	void RecogPlates(const cv::Mat& img, std::vector<LPContents>& detected_plates,
		int min_plate_width = 0, int max_plate_width = 0, const cv::Rect& roi = cv::Rect(), 
		int num_plates = -1, float threshold = -1.0, bool invert_img = true) const;


	//! �eOCR�N���X���擾
	const CharRecognition& GetCarNumberRecog() const{
		return _CarNumberRecog;
	}

	const CharRecognition& GetClassNumberRecog() const{
		return _ClassNumberRecog;
	}

	const CharRecognition& GetHiraganaRecog() const{
		return _HiraganaRecog;
	}

	const CharRecognition& GetLocalNameRecog() const{
		return _LocalNameRecog;
	}
	///////////// OCR ///////////////
	//! �ԗ��ԍ�
	bool LoadCarNumberData(const std::string& car_num_file){
		return _CarNumberRecog.Load(car_num_file);
	};

	bool SaveCarNumberData(const std::string& save_file) const{
		return _CarNumberRecog.Save(save_file);
	}

	//! ���ޔԍ�
	bool LoadClassNumberData(const std::string& class_num_file){
		return _ClassNumberRecog.Load(class_num_file);
	};

	bool SaveClassNumberData(const std::string& save_file) const{
		return _ClassNumberRecog.Save(save_file);
	}

	//! �Ђ炪��
	bool LoadHiraganaData(const std::string& hiragana_file){
		return _HiraganaRecog.Load(hiragana_file);
	};

	bool SaveHiraganaData(const std::string& save_file) const{
		return _HiraganaRecog.Save(save_file);
	};

	//! �n��
	bool LoadLocalNameData(const std::string& local_name_file){
		return _LocalNameRecog.Load(local_name_file);
	};

	bool SaveLocalNameData(const std::string& save_file) const{
		return _LocalNameRecog.Save(save_file);
	};

	//! ID�ƒn���̑Ή��t��
	bool AddLocalNameId(int id, const std::string& name){
		return _AddWordId(_LocalNameIds, id, name);
	};

	bool LoadLocalNameId(const std::string& load_file){
		return _LoadWordId(_LocalNameIds, load_file);
	};

	bool SaveLocalNameId(const std::string& save_file) const{
		return _SaveWordId(_LocalNameIds, save_file);
	};

	//! ID�ƕ��ޔԍ��̑Ή��t��
	bool AddClassNumberId(int id, const std::string& name) {
		return _AddWordId(_ClassNumberIds, id, name);
	};

	bool LoadClassNumberId(const std::string& load_file) {
		return _LoadWordId(_ClassNumberIds, load_file);
	};

	bool SaveClassNumberId(const std::string& save_file) const {
		return _SaveWordId(_ClassNumberIds, save_file);
	};

	//! ID�ƂЂ炪�Ȃ̑Ή��t��
	bool AddHiraganaId(int id, const std::string& name){
		return _AddWordId(_HiraganaIds, id, name);
	};

	bool LoadHiraganaId(const std::string& load_file){
		return _LoadWordId(_HiraganaIds, load_file);
	};

	bool SaveHiraganaId(const std::string& save_file) const{
		return _SaveWordId(_HiraganaIds, save_file);
	};

	//! ID�Ǝԗ��ԍ��̑Ή��t��
	bool AddCarNumberId(int id, const std::string& name) {
		return _AddWordId(_CarNumberIds, id, name);
	};

	bool LoadCarNumberId(const std::string& load_file) {
		return _LoadWordId(_CarNumberIds, load_file);
	};

	bool SaveCarNumberId(const std::string& save_file) const {
		return _SaveWordId(_CarNumberIds, save_file);
	};


	//! ���o�킨��уR�[�i�[���o���g�p�����i���o�[�v���[�g�F��
	/*!
	�e�X�g�p�B
	*/
	void RecogPlatesWithoutDetector(const cv::Mat& img, LPContents& result) const;

private:
	//! �i���o�[�v���[�g�F��
	/*!
	�S�Ẵi���o�[�v���[�g��₪���o�����
	\param[in] img ���͉摜
	\param[out] detected_plates ���o���ꂽ�v���[�g���
	\param[in] min_plate_width �ŏ��v���[�g�T�C�Y
	\param[in] max_plate_width �ő�v���[�g�T�C�Y
	\param[in] roi �����̈�
	\param[in] threshold �������l(0-1�܂ł̒l)
	*/
	void _RecogAllPlates(const cv::Mat& img, std::vector<LPContents>& detected_plates,
		int min_plate_width = 0, int max_plate_width = 0, const cv::Rect& roi = cv::Rect(), 
		float threshold = -1) const;

	//! �c�Ǝԃt���O�̐ݒ�
	inline static void _SetCommercialFlag(std::vector<LPContents>& detected_plates, bool flag) {
		for(std::vector<LPContents>::iterator it = detected_plates.begin(); it != detected_plates.end(); it++)
			it->Commercial = flag;
	}

	//! �v���[�g���S�Ă̕����̈��F��
	/*!
	�F���ɕK�v��plate�̃����o:
	PlateImage, Threshold,
	CarNumberPositions, ClassNumberPositions, HiranagaPosition, LocalNamePosition

	�i�[�����plate�̃����o�F
	Confidence,
	CarNumberId, CarNumber,
	ClassNumberId, ClassNumber,
	HiraganaId, Hiragana,
	LocalNameId, LocalName

	�C�������\���̂��郁���o�F
	ClassNumberPositions, LocalNamePosition
	*/
	void _RecognizeAllPlateChars(LPContents& plate) const;
	
	//! �ԍ��̔F��
	/*!
	\param[in] char_recog �����F����
	\param[in] img ���͔Z�W�摜
	\param[in] char_positions �����ʒu
	\param[out] ids �F�����ꂽ����ID
	\param[out] recog_string �F�����ꂽ������
	\return �X�R�A�i0-1�j
	*/
	static float _RecognizeChars(const CharRecognition& char_recog, const std::map<int, std::string>& char_map,
		const cv::Mat& img, const std::vector<cv::Rect>& char_positions, 
		std::vector<int>& ids, std::string& recog_string);

	//! �ԍ��̔F��
	/*!
	\param[in] char_recog �����F����
	\param[in] img ���͔Z�W�摜
	\param[in] char_position �����ʒu
	\param[out] id �F�����ꂽ����ID
	\param[out] recog_string �F�����ꂽ������
	\return �X�R�A�i0-1�j
	*/
	static float _RecognizeChar(const CharRecognition& char_recog, const std::map<int, std::string>& char_map,
		const cv::Mat& img, const cv::Rect& char_position,
		int& id, std::string& recog_string);


	//! �F��ID�ƒP��̃q���t
	static bool _AddWordId(std::map<int, std::string>& word_map, int id, const std::string& word);

	static bool _LoadWordId(std::map<int, std::string>& word_map, const std::string& filename);

	static bool _SaveWordId(const std::map<int, std::string>& word_map, const std::string& filename);

	//! �ԗ��ԍ��̗L�����`�F�b�N
	static bool _ValidCarNumberId(const std::vector<int>& car_number_ids, int max_valid_id = 9);

	static bool _ValidNumberString(const std::string& car_number) {
		return !(car_number[0] == '0' || car_number == "�q");
	}

	//! ���ޔԍ��̗L�����`�F�b�N
	/*!
	���v���[�g�Łu�������q33�v�̂悤�ȂS�����n���A�Q���ȉ����ޔԍ��̎��A�u�������v�u�q33�v�̂悤�ɒ��o�����B
	������C���B
	*/
	bool _CheckOwariKomakiClassNumber(LPContents& plate,
		float& local_name_confidence, float& class_number_confidence) const;

	//! ���a����
	template <typename T>
	static double HarmonicMean(const std::vector<T>& values, 
		const std::vector<float>& weights = std::vector<float>())
	{
		std::vector<float> w = weights.empty() ? std::vector<float>(values.size(), 1.0) : weights;
		assert(w.size() == values.size());

		double num_values = 0;
		for (int i = 0;i < w.size();i++)
			num_values += w[i];
		double sum = 0;
		for (int i = 0;i < values.size();i++) {
			if (values[i] == 0)
				return 0;
			sum += w[i] / values[i];
		}
		return num_values / sum;
	}
};

}

#endif