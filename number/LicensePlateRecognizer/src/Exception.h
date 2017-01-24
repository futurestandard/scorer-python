#ifndef __LPR_EXCEPTION__
#define __LPR_EXCEPTION__

#include <exception>
#include <string>

namespace lpr
{

//! Open Multi View Framework�p��O��`
class Exception : public std::exception
{
public:
	//! �G���[�R�[�h
	typedef enum ErrCode{
		LPR_ERROR = 0,	//!< �G���[�S��
		INVALID_ARGUMENT = 1,	//!< �����̕s��
		IO_ERROR = 2,	//!< �t�@�C�����o�̓G���[
		INVALID_DATA_TYPE = 3,	//!< �f�[�^�̌^�s��
		INVALID_APP = 11,	//!< �A�v���P�[�V�����s��
		INVALID_VERSION = 12,	//!< �o�[�W�����s��
		INVALID_FORMAT = 13,	//!< �t�H�[�}�b�g�s��
	}ErrCode;

	//! �R���X�g���N�^
	Exception(void);

	//! �R���X�g���N�^
	/*!
	\param[in] _code �G���[�R�[�h
	\param[in] _err �G���[���b�Z�[�W
	\param[in] _func �G���[�����̊֐���
	\param[in] _file �G���[�����\�[�X�t�@�C����
	\param[in] _line �G���[�����������s
	*/
    Exception(ErrCode _code, const std::string& _err, const std::string& _func, const std::string& _file, int _line);

	//! �f�X�g���N�^
	virtual ~Exception(void) throw();

	//! �G���[���b�Z�[�W�o��
    virtual const char *what() const throw();
    
    std::string msg; //!< �G���[���b�Z�[�W

    ErrCode code; //!< �G���[�R�[�h�iErrType�j
    std::string err; //!< �G���[���b�Z�[�W
    std::string func; //!< �֐���
    std::string file; //!< �t�@�C����
    int line; //!< �G���[�̔��������s�� 

protected:
	void formatMessage();	//!< �G���[���b�Z�[�W�̃t�H�[�}�b�g
	
	//! �G���[�R�[�h�𕶎���֕ϊ�
	/*!
	\return �G���[�R�[�h��ϊ�����������
	*/
	std::string getErrString();

private:
	//! �t�@�C���p�X����A�t�@�C�����̂ݎ擾
	/*!
	\param[in] file �t�@�C���p�X
	\return �t�@�C����
	*/
	static std::string getSourceFileName(const std::string& file);
};

};

#endif
