#ifndef __HMAX__
#define __HMAX__

#include "S1.h"
#include "C1.h"

class HMAX
{
public:
	HMAX(void);
	~HMAX(void);

	S1* hmax_s1;
	C1* hmax_c1;

	bool Save(const std::string& filename) const;
	bool Load(const std::string& filename);
	bool Write(cv::FileStorage& fs, const std::string& node_name = std::string()) const;
	bool Read(const cv::FileNode& fn);

	//! �����Ώۉ摜���Z�b�g
	void SetProcImage(const cv::Mat& img){
		this->hmax_s1->SetProcImage(img);
	};

	//! �o�̓x�N�g���Q����P���p�f�[�^�𐶐�
	static void GenerateQuery(const std::vector<std::vector<cv::Mat>>& outputs, cv::Mat& query_data);

	//! �o�̓x�N�g���Q���P���p�f�[�^�փR�s�[
	static void CopyToTrainDataRow(const std::vector<std::vector<cv::Mat>>& outputs, cv::Mat& train_data, int idx);

	//! �o�̓x�N�g���Q����P���p�f�[�^�𐶐�
	static void GenerateTrainData(const std::vector<std::vector<std::vector<cv::Mat>>>& outputs, cv::Mat& train_data);

	//! �M�����t�@�C���ɕۑ��i��Ƀf�o�b�O�p�j
	static void WriteSignal(cv::FileStorage& fs, const std::string& nodename, const std::vector<std::vector<cv::Mat>>& hmax_signal);
	static void SaveSignal(const std::string& filename, const std::vector<std::vector<cv::Mat>>& hmax_signal){
		cv::FileStorage fs(filename, cv::FileStorage::WRITE);
		WriteSignal(fs, "HMAX_Signal", hmax_signal);
	};

	//! �M�����t�@�C������ǂݍ��݁i��Ƀf�o�b�O�p�j
	static void ReadSignal(const cv::FileNode& file_node, std::vector<std::vector<cv::Mat>>& hmax_signal);
	static void LoadSignal(const std::string& filename, std::vector<std::vector<cv::Mat>>& hmax_signal){
		cv::FileStorage fs(filename, cv::FileStorage::READ);
		ReadSignal(fs["HMAX_Signal"], hmax_signal);
	};

	//! �M�����t�@�C���Ƀo�C�i���`���ŕۑ�
	static bool WriteSignalBinary(std::ofstream& ofs, const std::vector<std::vector<cv::Mat>>& outputs);
	static bool SaveSignalBinary(const std::string& filename, const std::vector<std::vector<cv::Mat>>& outputs);

	//! �M���̃o�C�i���t�@�C����ǂݍ���
	static bool ReadSignalBinary(std::ifstream& ifs, std::vector<std::vector<cv::Mat>>& outputs);
	static bool LoadSignalBinary(const std::string& filename, std::vector<std::vector<cv::Mat>>& outputs);

};

#endif