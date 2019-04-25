.class public Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
.super Ljava/lang/Object;
.source "MdfPolicy.java"


# static fields
.field private static final MDF_DISABLED:I = 0x8

.field private static final MDF_EMPTY:I = 0x10

.field private static final MDF_ENABLED:I = 0x1

.field private static final MDF_ENFORCE_SECUREBOOT_OFF:I = 0x0

.field private static final MDF_ENFORCE_SECUREBOOT_ON:I = 0x1

.field private static final MDF_ENFORCING:I = 0x2

.field private static final MDF_ERR_BORINGSSL_SELFTEST_FAIL:I = -0x14

.field private static final MDF_ERR_CCMODE_ALREADY_ENABLED:I = -0xe

.field private static final MDF_ERR_CCMODE_ALREADY_READY:I = -0xf

.field private static final MDF_ERR_CCMODE_DISABLED:I = -0xb

.field private static final MDF_ERR_CCMODE_ELSE:I = -0xd

.field private static final MDF_ERR_CCMODE_EMPTY:I = -0xc

.field public static final MDF_ERR_CCMODE_NOT_SUPPORT_CCMODE:I = -0x10

.field private static final MDF_ERR_ENFORCE_SB_FLAG_FAIL:I = -0x18

.field private static final MDF_ERR_GET_CCMODE_FLAG_FAIL:I = -0x1c

.field private static final MDF_ERR_GET_FIPS_STATUS_FAIL:I = -0x23

.field private static final MDF_ERR_ICD_FILE_NOT_EXIST:I = -0x16

.field private static final MDF_ERR_ICD_RESULT_INVALID:I = -0x17

.field private static final MDF_ERR_INTEGRITY_CHECK_FAIL:I = -0x15

.field private static final MDF_ERR_INVALID_INPUT:I = -0x1

.field private static final MDF_ERR_LOCK_FINGER_PRINT_SET:I = -0x27

.field public static final MDF_ERR_NULL_POINTER:I = -0x2

.field private static final MDF_ERR_SET_CCMODE_FLAG_FAIL:I = -0x1b

.field private static final MDF_ERR_SYSTEMPROPERTY_EXCEPTION:I = -0x3

.field public static final MDF_INTENT_UPDATE:Ljava/lang/String; = "com.samsung.android.security.mdf.MDF_UPDATE"

.field public static final MDF_OK:I = 0x0

.field private static final MDF_POLICY_ERR_FACE_LOCK_ON:I = 0x4000

.field private static final MDF_POLICY_ERR_OCSP_CHECK_POLICY_SET:I = 0x1000

.field private static final MDF_POLICY_ERR_ODE_ENCRYPTED_DEFAULT:I = 0x100

.field private static final MDF_POLICY_ERR_ODE_ENCRYPTED_EXTERNAL_FAST:I = 0x40

.field private static final MDF_POLICY_ERR_ODE_ENCRYPTED_FAST:I = 0x200

.field private static final MDF_POLICY_ERR_ODE_ENCRYPTED_INTERNAL:I = 0x80

.field private static final MDF_POLICY_ERR_ODE_GETTING_STATUS_FAIL:I = 0x400

.field private static final MDF_POLICY_ERR_ODE_NOT_SET:I = 0x800

.field private static final MDF_POLICY_ERR_OUT_OF_RANGE_OF_MAX_PW_COUNT:I = 0x2

.field private static final MDF_POLICY_ERR_PASSWORD_HISTORY_LENGTH_SET:I = 0x10

.field private static final MDF_POLICY_ERR_PASSWORD_QUALITY:I = 0x2000

.field private static final MDF_POLICY_ERR_RECOVERY_PASSWORD_POLICY_SET:I = 0x8

.field private static final MDF_POLICY_ERR_REVOCATION_CHECK_POLICY_SET:I = 0x20

.field private static final MDF_POLICY_ERR_SCREENLOCK_NOT_SET:I = 0x4

.field private static final MDF_READY:I = 0x4

.field private static final PROPERTY_MDF:Ljava/lang/String; = "security.mdf"

.field private static final PROPERTY_MDF_DISABLED:Ljava/lang/String; = "Disabled"

.field private static final PROPERTY_MDF_EMPTY:Ljava/lang/String; = "None"

.field private static final PROPERTY_MDF_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final PROPERTY_MDF_ENFORCING:Ljava/lang/String; = "Enforcing"

.field private static final PROPERTY_MDF_READY:Ljava/lang/String; = "Ready"

.field private static final PROPERTY_MDF_RESULT:Ljava/lang/String; = "security.mdf.result"

.field private static final PROPERTY_MDF_UX:Ljava/lang/String; = "ro.security.mdf.ux"

.field public static final SERVICE_VERSION:Ljava/lang/String; = "v3.14.0"

.field public static final TAG:Ljava/lang/String; = "MdfService"


# instance fields
.field private mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLPU:Lcom/android/internal/widget/LockPatternUtils;

.field private mPP:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->printVersion()V

    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPP:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    new-instance v0, Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-direct {v0}, Lcom/samsung/android/security/mdf/MdfUtils;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    return-void
.end method

.method private checkCCModeOnDevice()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v1}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method private checkDevicePolicy()I
    .locals 14

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getMaximumFailedPasswordsForWipe()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-lez v1, :cond_1

    const/16 v6, 0x1e

    if-le v1, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "Password attempts : OK"

    invoke-direct {p0, v2, v3, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Password attempts : setMaximumFailedPasswordsForWipe() should be set between 1 and 30. Current value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v4, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit8 v0, v0, 0x2

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getPasswordQuality()I

    move-result v6

    const/high16 v7, 0x50000

    if-lt v6, v7, :cond_3

    const/high16 v7, 0x60000

    if-le v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const-string v7, "Password quality : OK"

    invoke-direct {p0, v2, v3, v7}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_2
    const-string v7, "Password quality : setPasswordQuality() should be set between alphanumeric and complex."

    invoke-direct {p0, v5, v4, v7}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v0, v0, 0x2000

    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isPasswordEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "Screen lock : Screen lock should be set to Password above alphanumeric.(Biometric lock is avaliable)"

    invoke-direct {p0, v5, v4, v7}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit8 v0, v0, 0x4

    goto :goto_4

    :cond_4
    const-string v7, "Screen lock : OK"

    invoke-direct {p0, v2, v3, v7}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isPasswordRecoverable()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Recovery password : semSetPasswordRecoverable() should be set to false."

    invoke-direct {p0, v5, v4, v7}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit8 v0, v0, 0x8

    goto :goto_5

    :cond_5
    const-string v7, "Recovery password : OK"

    invoke-direct {p0, v2, v3, v7}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getPasswordHistoryLength()I

    move-result v7

    if-eqz v7, :cond_6

    const-string v8, "Password history length : setPasswordHistoryLength() should be set to 0."

    invoke-direct {p0, v5, v4, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit8 v0, v0, 0x10

    goto :goto_6

    :cond_6
    const-string v8, "Password history length : OK"

    invoke-direct {p0, v2, v3, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    :goto_6
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isRevocationCheckEnabled()Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "Certificate revocation : enableRevocationCheck() should be set on all packages."

    invoke-direct {p0, v5, v4, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit8 v0, v0, 0x20

    goto :goto_7

    :cond_7
    const-string v8, "Certificate revocation : OK"

    invoke-direct {p0, v2, v3, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    :goto_7
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isOcspCheckEnabled()Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "Certificate OCSP : enableOcspCheck() should be set on all packages."

    invoke-direct {p0, v5, v4, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v0, v0, 0x1000

    goto :goto_8

    :cond_8
    const-string v8, "Certificate OCSP : OK"

    invoke-direct {p0, v2, v3, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    :goto_8
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getSamsungEncryptionStatusForCC()I

    move-result v8

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isExternalSDRemovable()Z

    move-result v9

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v9, :cond_9

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v11

    :cond_9
    if-eqz v10, :cond_c

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser()Z

    move-result v12

    if-eqz v12, :cond_b

    if-eqz v11, :cond_a

    const-string v12, "Device encryption : OK"

    invoke-direct {p0, v2, v3, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_9

    :cond_a
    const-string v12, "Device encryption : setRequireStorageCardEncryption() should be set to true."

    invoke-direct {p0, v5, v4, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v0, v0, 0x80

    goto :goto_9

    :cond_b
    or-int/lit16 v0, v0, 0x100

    const-string v12, "Device encryption : Strong protection should be set."

    invoke-direct {p0, v5, v4, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_9

    :cond_c
    packed-switch v8, :pswitch_data_0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Device encryption : unexpected status. Status value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v5, v4, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v0, v0, 0x800

    goto :goto_9

    :pswitch_0
    const-string v12, "Device encryption : Secure Startup should be set."

    invoke-direct {p0, v5, v4, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v0, v0, 0x100

    goto :goto_9

    :pswitch_1
    if-eqz v11, :cond_d

    const-string v12, "Device encryption : OK"

    invoke-direct {p0, v2, v3, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_9

    :cond_d
    const-string v12, "Device encryption : setRequireStorageCardEncryption() should be set to true."

    invoke-direct {p0, v5, v4, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v0, v0, 0x80

    goto :goto_9

    :pswitch_2
    const-string v12, "Device encryption : OK"

    invoke-direct {p0, v2, v3, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_9

    :pswitch_3
    const-string v12, "Device encryption : fast encryption should not be set."

    invoke-direct {p0, v5, v4, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v0, v0, 0x200

    goto :goto_9

    :pswitch_4
    const-string v12, "Device encryption : encryption status is FULLY_ENCRYPTED_ERROR."

    invoke-direct {p0, v5, v4, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v0, v0, 0x400

    nop

    :goto_9
    if-nez v10, :cond_10

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v12, :cond_e

    const-string v2, "MdfService"

    const-string v3, "Face lock : check error. mLPU is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit16 v0, v0, 0x4000

    goto :goto_a

    :cond_e
    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPP:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v13, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPP:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v12, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_f

    const-string v2, "Face lock : BIOMETRIC_AUTHENTICATION_FACE should be set to false in the setBiometricAuthenticationEnabled()."

    invoke-direct {p0, v5, v4, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v0, v0, 0x4000

    goto :goto_a

    :cond_f
    const-string v4, "Face lock : OK"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    :cond_10
    :goto_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkICD()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v1}, Lcom/samsung/android/security/mdf/MdfUtils;->getTamperFlag()I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "MdfService"

    const-string v2, "Failed to get icd tamper"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x16

    return v1

    :cond_0
    if-lez v0, :cond_1

    const-string v1, "MdfService"

    const-string v2, "Failed. icd tamper is set"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x17

    return v1

    :cond_1
    return v0
.end method

.method private checkIntegrity()I
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkICD()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Integrity verification : FAILED"

    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    const/16 v0, -0x15

    return v0

    :cond_0
    const-string v0, "Integrity verification : OK"

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-direct {p0, v4, v3, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfUtils;->getFipsStatus()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FIPS self-test : FAILED"

    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    const/16 v0, -0x23

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfUtils;->FIPS_Openssl_SelfTest()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FIPS self-test : FAILED"

    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    const/16 v0, -0x14

    return v0

    :cond_2
    const-string v0, "FIPS self-test : OK"

    invoke-direct {p0, v4, v3, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private checkSystemUid()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Security Exception Occurred. Only SYSTEM can use the MdfService."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceSB(Z)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, -0x18

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v3}, Lcom/samsung/android/security/mdf/MdfUtils;->setSBFlagOn()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed. setSBFlagOn() res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v3}, Lcom/samsung/android/security/mdf/MdfUtils;->getSBFlag()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const-string v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed. SBFlag has yet to set. current flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v3}, Lcom/samsung/android/security/mdf/MdfUtils;->setSBFlagOff()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed. setSBFlagOff() res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v3}, Lcom/samsung/android/security/mdf/MdfUtils;->getSBFlag()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed. SBFlag has yet to set. current flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    return v0
.end method

.method private getMaximumFailedPasswordsForWipe()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    :cond_0
    const-string v0, "MdfService"

    const-string v1, "DPM is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getPasswordHistoryLength()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    :cond_0
    const-string v0, "MdfService"

    const-string v1, "DPM is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getPasswordQuality()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    :cond_0
    const-string v0, "MdfService"

    const-string v1, "DPM is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getSamsungEncryptionStatusForCC()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatusForCC(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    :cond_0
    const-string v0, "MdfService"

    const-string v1, "DPM is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 14

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    and-int/lit8 v9, p1, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    const/4 v1, 0x1

    :cond_0
    and-int/lit8 v9, p1, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    const/4 v2, 0x1

    :cond_1
    and-int/lit8 v9, p1, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    const/4 v6, 0x1

    :cond_2
    and-int/lit8 v9, p1, 0x10

    const/16 v10, 0x10

    if-ne v9, v10, :cond_3

    const/4 v7, 0x1

    :cond_3
    and-int/lit8 v9, p1, 0x20

    const/16 v10, 0x20

    if-ne v9, v10, :cond_4

    const/4 v3, 0x1

    :cond_4
    and-int/lit8 v9, p1, 0x40

    const/16 v10, 0x40

    if-ne v9, v10, :cond_5

    const/4 v4, 0x1

    :cond_5
    and-int/lit16 v9, p1, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_6

    const/4 v4, 0x1

    :cond_6
    and-int/lit16 v9, p1, 0x100

    const/16 v10, 0x100

    if-ne v9, v10, :cond_7

    const/4 v5, 0x1

    :cond_7
    and-int/lit16 v9, p1, 0x200

    const/16 v10, 0x200

    if-ne v9, v10, :cond_8

    const/4 v5, 0x1

    :cond_8
    and-int/lit16 v9, p1, 0x400

    const/16 v10, 0x400

    if-ne v9, v10, :cond_9

    const/4 v4, 0x1

    const/4 v5, 0x1

    :cond_9
    and-int/lit16 v9, p1, 0x800

    const/16 v10, 0x800

    if-ne v9, v10, :cond_a

    const/4 v4, 0x1

    const/4 v5, 0x1

    :cond_a
    and-int/lit16 v9, p1, 0x4000

    const/16 v10, 0x4000

    if-ne v9, v10, :cond_b

    const/4 v8, 0x1

    :cond_b
    iget-object v9, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isExternalSDRemovable()Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v4, 0x1

    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x104050b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    const-string v10, ""

    if-nez v1, :cond_d

    if-nez v2, :cond_d

    if-nez v3, :cond_d

    if-nez v5, :cond_d

    if-eqz v4, :cond_16

    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040507

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v1, :cond_f

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x104050e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v2, :cond_e

    if-nez v3, :cond_e

    if-nez v5, :cond_e

    if-eqz v4, :cond_f

    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_f
    if-eqz v2, :cond_11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x104050f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v3, :cond_10

    if-nez v5, :cond_10

    if-eqz v4, :cond_11

    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_11
    if-eqz v3, :cond_13

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040511

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v5, :cond_12

    if-eqz v4, :cond_13

    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_13
    if-eqz v5, :cond_14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040508

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_14
    if-eqz v4, :cond_15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040509

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_16
    if-nez v6, :cond_17

    if-nez v7, :cond_17

    if-eqz v8, :cond_1d

    :cond_17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040506

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v6, :cond_19

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x104050d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v7, :cond_18

    if-eqz v8, :cond_19

    :cond_18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_19
    if-eqz v7, :cond_1a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x104050c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v8, :cond_1a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_1a
    if-eqz v8, :cond_1b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x104050a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_1b
    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1d
    return-object v0
.end method

.method private isExternalSDRemovable()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MdfService"

    const-string v1, "SDCARD SLOT Support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "MdfService"

    const-string v1, "SDCARD SLOT None"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isOcspCheckEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isOcspCheckEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :cond_1
    const-string v0, "MdfService"

    const-string v2, "certPolicy is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isPasswordEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const/high16 v2, 0x50000

    if-lt v0, v2, :cond_0

    const/high16 v2, 0x60000

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v1

    :cond_1
    const-string v0, "MdfService"

    const-string v2, "LPU is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isPasswordRecoverable()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->semIsPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :cond_1
    const-string v0, "MdfService"

    const-string v2, "DPM is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isRevocationCheckEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isRevocationCheckEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :cond_1
    const-string v0, "MdfService"

    const-string v2, "certPolicy is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private logForAudit(ILjava/lang/String;)V
    .locals 6

    nop

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "MdfStatus"

    const/4 v0, 0x1

    const/4 v2, 0x0

    move v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logForAuditAndLogcat(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAudit(ILjava/lang/String;)V

    const-string v0, "MdfService"

    invoke-static {p2, v0, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printVersion()V
    .locals 2

    const-string v0, "MdfService"

    const-string/jumbo v1, "v3.14.0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setCCMode(I)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "None"

    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    const/16 v4, 0x8

    if-eq p1, v4, :cond_1

    const/16 v4, 0x10

    if-eq p1, v4, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "None"

    const-string v4, "MdfService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCCMode default... status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "Enforcing"

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Enabled"

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x10

    const-string v3, "None"

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    const/16 v2, 0x8

    const-string v3, "Disabled"

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "Ready"

    nop

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setFlags(ZI)I

    move-result v4

    move v0, v4

    if-eqz v4, :cond_3

    return v0

    :cond_3
    const/4 v4, -0x3

    :try_start_0
    const-string/jumbo v5, "security.mdf"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "security.mdf"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CC Mode status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAudit(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const-string v4, "MdfService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "security.mdf : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "security.mdf"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v5

    const-string v6, "MdfService"

    const-string v7, "SystemProperties Exception Occurs"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_1
    move-exception v5

    const-string v6, "MdfService"

    const-string v7, "SystemProperties RuntimeException Occurs"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCCModeFlags(I)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v1, p1}, Lcom/samsung/android/security/mdf/MdfUtils;->setCCModeFlag(I)I

    move-result v0

    const/16 v1, -0x1b

    if-eqz v0, :cond_0

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCModeFlag() res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    move-result v2

    if-eq v2, p1, :cond_1

    const-string v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed. CCMode Flag has yet to set. current flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v0
.end method

.method private setFlags(ZI)I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->enforceSB(Z)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "MdfService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed. enforceSB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCModeFlags(I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "MdfService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed. setCCModeFlag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    return v0
.end method

.method private setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string v0, "MdfService"

    const-string v1, "Notice for applying security policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v1, "MdfService"

    const-string v2, "NotificationManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "mdf_channel_id"

    const-string v2, "Mdf Channel"

    const/4 v3, 0x4

    new-instance v4, Landroid/app/NotificationChannel;

    invoke-direct {v4, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v5, 0x2

    new-array v6, v5, [J

    fill-array-data v6, :array_0

    invoke-virtual {v4, v6}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v6, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const-string v8, ""

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040510

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.security.mdf.MDF_UPDATE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x1000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v10, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    const/high16 v11, 0x8000000

    invoke-static {v10, v5, v9, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v10, Landroid/app/Notification$Action$Builder;

    iget-object v11, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-direct {v10, v7, v8, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v7, v10

    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance v10, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v10}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v10, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1f4
    .end array-data
.end method


# virtual methods
.method public enableCCMode(Z)I
    .locals 10

    const/4 v0, 0x0

    const-string/jumbo v1, "security.mdf.result"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isCCModeSupport()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MdfService"

    const-string v2, "This model does not support CC mode."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x10

    const-string/jumbo v1, "security.mdf.result"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkCCModeOnDevice()I

    move-result v1

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the current mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x1040513

    const v3, 0x1040512

    const v4, 0x1040514

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/16 v9, 0x10

    if-eqz p1, :cond_c

    if-ne v1, v7, :cond_1

    const-string v2, "MdfService"

    const-string v3, "CCMode is already enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eq v1, v6, :cond_8

    if-ne v1, v5, :cond_2

    goto/16 :goto_0

    :cond_2
    if-ne v1, v9, :cond_4

    invoke-direct {p0, v9}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v0, -0xc

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    if-ne v1, v8, :cond_6

    invoke-direct {p0, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v0, -0xb

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    invoke-direct {p0, v9}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_7

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v0, -0xd

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    move-result v0

    const-string/jumbo v5, "security.mdf.result"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    const-string v5, "MdfService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prerequisite policies have yet to set. res = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkIntegrity()I

    move-result v0

    const-string/jumbo v5, "security.mdf.result"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_a

    const-string v2, "MdfService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed. check integrity. res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_16

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    invoke-direct {p0, v7}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_b

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040502

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    if-eq v1, v7, :cond_14

    if-ne v1, v5, :cond_d

    goto/16 :goto_1

    :cond_d
    if-ne v1, v6, :cond_e

    const-string v2, "MdfService"

    const-string v3, "CCMode is already ready."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_e
    if-ne v1, v8, :cond_10

    invoke-direct {p0, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_f

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/16 v0, -0xb

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    if-ne v1, v9, :cond_12

    invoke-direct {p0, v9}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_11

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 v0, -0xc

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_12
    invoke-direct {p0, v9}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_13

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/16 v0, -0xd

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_14
    :goto_1
    invoke-direct {p0, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_15

    const-string v3, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed. setCCMode. res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040504

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "security.mdf.result"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_2
    return v0
.end method

.method public initCCMode()I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkSystemUid()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkCCModeOnDevice()I

    move-result v1

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    if-ne v1, v3, :cond_3

    invoke-direct {p0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v0, -0xb

    goto/16 :goto_1

    :cond_3
    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    invoke-direct {p0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v0, -0xc

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_6

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v0, -0xd

    goto/16 :goto_1

    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkIntegrity()I

    move-result v0

    if-eqz v0, :cond_8

    const-string v2, "MdfService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed. check integrity. res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1040514

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040512

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCMode. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    move-result v0

    if-eqz v0, :cond_9

    const-string v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prerequisite policies have yet to set. res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v1
.end method

.method public isCCModeSupport()Z
    .locals 2

    const-string/jumbo v0, "ro.security.mdf.ux"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public sendSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    const-string v2, "com.samsung.android.service.SecurityManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_1

    const-string/jumbo v1, "value"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "MdfService"

    const-string/jumbo v3, "sendSurveyLog completed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "MdfService"

    const-string v1, "Survey mode is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendSurveyLogMode()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isCCModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "security.mdf"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "MODE"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sendSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public updateNotification()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040513

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040502

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040514

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040503

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
