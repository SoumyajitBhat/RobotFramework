import pyotp

def get_totp_token(secret):
    """
    Generate current TOTP token
    :param secret: Base32 secret from Salesforce MFA setup
    :return: 6-digit OTP
    """
    totp = pyotp.TOTP(secret)
    return totp.now()
