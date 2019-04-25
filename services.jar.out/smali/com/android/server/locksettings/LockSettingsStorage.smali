.class Lcom/android/server/locksettings/LockSettingsStorage;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsStorage$Cache;,
        Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;,
        Lcom/android/server/locksettings/LockSettingsStorage$Callback;,
        Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;,
        Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    }
.end annotation


# static fields
.field private static final APP_FINGER_PRINT_PASSWORD_FILE:Ljava/lang/String; = "applockfingerprintpassword.key"

.field private static final APP_LOCK_BACKUP_PIN_FILE:Ljava/lang/String; = "applockbackuppin.key"

.field private static final APP_LOCK_PASSWORD_FILE:Ljava/lang/String; = "applockpassword.key"

.field private static final APP_LOCK_PATTERN_FILE:Ljava/lang/String; = "applockpattern.key"

.field private static final APP_LOCK_PIN_FILE:Ljava/lang/String; = "applockpin.key"

.field private static final BASE_ZERO_LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.gesture.key"

.field private static final CHILD_PROFILE_LOCK_FILE:Ljava/lang/String; = "gatekeeper.profile.key"

.field private static final COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DEBUG:Z = false

.field private static final DEFAULT:Ljava/lang/Object;

.field private static final DIGITAL_WELLBEING_PASSWORD_FILE:Ljava/lang/String; = "digitalwellbeingpassword.key"

.field private static final GATEKEEPER_LOCK_BACKUP_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.backuppassword.key"

.field private static final INITIAL_STATE:I = 0x0

.field private static final LEGACY_LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LEGACY_LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_BACKUP_PASSWORD_FILE:Ljava/lang/String; = "backuppassword.key"

.field private static final LOCK_FMM_PASSWORD_FILE:Ljava/lang/String; = "fmmpassword.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.pattern.key"

.field private static final LOCK_PRIVATE_BACKUP_PIN_FILE:Ljava/lang/String; = "personalbackuppin.key"

.field private static final LOCK_PRIVATE_FINGER_PRINT_PASSWORD_FILE:Ljava/lang/String; = "personalfingerprintpassword.key"

.field private static final LOCK_PRIVATE_PASSWORD_FILE:Ljava/lang/String; = "personalpassword.key"

.field private static final LOCK_PRIVATE_PATTERN_FILE:Ljava/lang/String; = "personalpattern.key"

.field private static final LOCK_PRIVATE_PIN_FILE:Ljava/lang/String; = "personalpin.key"

.field private static final LOCK_RECOVERY_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.recoverypassword.key"

.field private static final LOCK_SKT_FILE:Ljava/lang/String; = "sktpassword.key"

.field private static final LOCK_STATE:I = 0x1

.field private static final PATH_PERMANENT_MEM_LOCK_INFO:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/lawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO_ENC:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/enclawlock.txt"

.field private static final SYNTHETIC_PASSWORD_DIRECTORY:Ljava/lang/String; = "spblob/"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsStorage"

.field private static final UNLOCK_STATE:I = 0x2

.field private static final ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private static final secretKey:Ljava/lang/String; = "SKT : Find lost phone plus !!!"


# instance fields
.field private final mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

.field private final mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private mLockTypeCallback:Landroid/os/IRemoteCallback;

.field private mLockTypeCallbackForDex:Landroid/os/IRemoteCallback;

.field private final mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

.field private mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

.field private mSKTLockState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string/jumbo v0, "name"

    const-string/jumbo v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v1, "i_love_office_tg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;-><init>(Lcom/android/server/locksettings/LockSettingsStorage$1;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    return-void
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    return-object v0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ensureSyntheticPasswordDirectoryForUser(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method

.method private getAppLockBackupPinFilename(I)Ljava/lang/String;
    .locals 1

    const-string v0, "applockbackuppin.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;
    .locals 1

    const-string v0, "applockfingerprintpassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppLockPasswordFilename(I)Ljava/lang/String;
    .locals 1

    const-string v0, "applockpassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppLockPatternFilename(I)Ljava/lang/String;
    .locals 1

    const-string v0, "applockpattern.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppLockPinFilename(I)Ljava/lang/String;
    .locals 1

    const-string v0, "applockpin.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBaseZeroLockPatternFilename(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "gatekeeper.gesture.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCarrierLockPlusModeFromFile()Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->isCarrierLockENCVersion()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/sec_efs/sktdm_mem/enclawlock.txt"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LockSettingsStorage"

    const-string/jumbo v4, "getCarrierLockPlusMode() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "LockSettingsStorage"

    const-string v4, "IOException while read file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/sec_efs/sktdm_mem/lawlock.txt"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_1
    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "LockSettingsStorage"

    const-string/jumbo v4, "getCarrierLockPlusMode() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    :cond_3
    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "LockSettingsStorage"

    const-string v4, "IOException while read file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v0
.end method

.method private getDigitalWellbeingPasswordFilename(I)Ljava/lang/String;
    .locals 1

    const-string v0, "digitalwellbeingpassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGatekeeperLockBackupPasswordFilename(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "gatekeeper.backuppassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "SKT : Find lost phone plus !!!"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private getLockBackupPasswordFilename(I)Ljava/lang/String;
    .locals 1

    const-string v0, "backuppassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLockCarrierPasswordFilename(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sktpassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLockFMMPasswordFilename(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "fmmpassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLockRecoveryPasswordFilename(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "gatekeeper.recoverypassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrivateModeLockBackupPinFilename(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "personalbackuppin.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrivateModeLockPasswordFilename(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "personalpassword.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrivateModeLockPatternFilename(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "personalpattern.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrivateModeLockPinFilename(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "personalpin.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasFile(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isCarrierLockENCVersion()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/sktdm_mem/enclawlock.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private readFile(Ljava/lang/String;)[B
    .locals 7

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peekFile(Ljava/lang/String;)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    move-object v2, v3

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_3
    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v3, p1, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFileIfUnchanged(Ljava/lang/String;[BI)V

    :cond_2
    return-object v2

    :goto_3
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LockSettingsStorage"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    throw v3

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private readPasswordHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v1

    :cond_1
    return-object v3
.end method

.method private readPatternHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, v0, v3, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->access$300([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v1

    :cond_2
    return-object v2
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rws"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    if-eqz p2, :cond_1

    array-length v2, p2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "LockSettingsStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    :try_start_3
    const-string v3, "LockSettingsStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_5
    const-string v3, "LockSettingsStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    :goto_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :goto_5
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v3

    :try_start_7
    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_6
    throw v2

    :goto_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method


# virtual methods
.method clearCache()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->clear()V

    return-void
.end method

.method closeDatabase()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->close()V

    return-void
.end method

.method public decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    sget-object v4, Lcom/android/server/locksettings/LockSettingsStorage;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :goto_0
    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sec_encrypt.decrypt() Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sec_encrypt.decrypt() InvalidKeyException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sec_encrypt.decrypt() NoSuchPaddingException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    move-exception v1

    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :goto_1
    return-object v0
.end method

.method public deleteSyntheticPasswordState(IJLjava/lang/String;)V
    .locals 8

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rws"

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v5, v4, [B

    invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v4

    move-object v5, v2

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_0
    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v6

    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_6
    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to zeroize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    nop

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    goto :goto_4

    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v2

    :cond_1
    :goto_4
    return-void
.end method

.method public getCarrierLockPlusMode()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    const-string v1, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCarrierLockPlusMode#mSKTLockState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockPlusModeFromFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    const/4 v0, 0x1

    const-string v1, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCarrierLockPlusMode#mSKTLockState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    const/4 v0, 0x0

    nop

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getChildProfileLockFile(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "gatekeeper.profile.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLegacyLockPasswordFilename(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "password.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLegacyLockPatternFilename(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "gesture.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockPasswordFilename(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "gatekeeper.password.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternFilename(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "gatekeeper.pattern.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object v0
.end method

.method protected getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v0

    const-string v1, "%016x.%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isVirtualUser()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "users"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "spblob/"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error while get sp path for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "spblob/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public hasBackupPassword(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getGatekeeperLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasCarrierPassword(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasChildProfileLock(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCredential(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasFMMPassword(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasPassword(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasPattern(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasRecoveryPassword(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockRecoveryPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockBackupPin(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockFingerprintPassword(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPassword(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPattern(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPin(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveDigitalWellbeingPassword(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getDigitalWellbeingPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePrivateModeLockBackupPin(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePrivateModeLockPassword(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePrivateModeLockPattern(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePrivateModeLockPin(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :try_start_0
    aget-object v8, v7, v4

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v9, "LockSettingsStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parse handle "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v7, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public prefetchUser(I)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->isFetched(I)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->setFetched(I)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v3, "locksettings"

    sget-object v4, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    const-string/jumbo v5, "user=?"

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v5, v2, v4, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public readAppLockBackupkPinHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readAppLockFingerprintPasswordHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readAppLockPasswordHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readAppLockPatternHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readAppLockPinHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readBackupPasswordHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    const-string v3, "LockSettingsStorage"

    const-string/jumbo v4, "readBackupPasswordHash( VERSION_LEGACY )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getGatekeeperLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    const-string v3, "LockSettingsStorage"

    const-string/jumbo v4, "readBackupPasswordHash( VERSION_GATEKEEPER )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v3

    :cond_1
    const-string v1, "LockSettingsStorage"

    const-string/jumbo v3, "readBackupPasswordHash( NULL )"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public readCarrierPasswordHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readChildProfileLock(I)[B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPasswordHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPatternHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget v2, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v2

    return-object v2
.end method

.method public readDigitalWellbeingPasswordHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getDigitalWellbeingPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readFMMPasswordHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasKeyValue(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v4, "locksettings"

    sget-object v5, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string/jumbo v6, "user=? AND name=?"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v3, 0x1

    aput-object p1, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v3, p1, v0, p3, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    sget-object v3, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    if-ne v0, v3, :cond_3

    move-object v3, p2

    goto :goto_0

    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :goto_0
    return-object v3

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getFrpCredentialHandle()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "LockSettingsStorage"

    const-string v3, "Error reading persistent data block"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v2
.end method

.method public readPrivateModeLockBackupkPinHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readPrivateModeLockPasswordHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readPrivateModeLockPatternHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readPrivateModeLockPinHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readRecoveryPasswordHash(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockRecoveryPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readSyntheticPasswordState(IJLjava/lang/String;)[B
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public removeChildProfileLock(I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeUser(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v7, v5, v3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v7, v5, v3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v4

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v5, "locksettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->removeUser(I)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->purgePath(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    nop

    return-void

    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public sendLockTypeChangedInfo(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "isClearLock"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendLockTypeChangedInfo failed!!  mLockTypeCallback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    goto :goto_1

    :cond_0
    const-string v0, "LockSettingsStorage"

    const-string/jumbo v1, "mLockTypeCallback is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallbackForDex:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "isClearLock"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallbackForDex:Landroid/os/IRemoteCallback;

    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendLockTypeChangedInfo for Dex failed!!  mLockTypeCallbackForDex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallbackForDex:Landroid/os/IRemoteCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallbackForDex:Landroid/os/IRemoteCallback;

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    goto :goto_3

    :cond_1
    const-string v0, "LockSettingsStorage"

    const-string/jumbo v1, "mLockTypeCallback for Dex is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public setDatabaseOnCreateCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V

    return-void
.end method

.method public setSecureLockModeChangedCallback(Landroid/os/IRemoteCallback;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallbackForDex:Landroid/os/IRemoteCallback;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    :goto_0
    return-void
.end method

.method public updateCarrierLockPlusMode()Z
    .locals 3

    const-string v0, "LockSettingsStorage"

    const-string/jumbo v1, "updateCarrierLockPlusMode!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockPlusModeFromFile()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(Z)V

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    if-ne v2, v1, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0
.end method

.method public writeAppLockBackupPinHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeAppLockFingerprintPasswordHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeAppLockPasswordHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeAppLockPatternHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeAppLockPinHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeBackupPasswordHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeCarrierPasswordHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeChildProfileLock(I[B)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v1, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v0, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeDigitalWellbeingPasswordHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getDigitalWellbeingPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeFMMPasswordHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(Z)V

    return-void
.end method

.method public writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "user"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string/jumbo v1, "locksettings"

    const-string/jumbo v2, "name=? AND user=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v1, "locksettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public writePersistentDataBlock(III[B)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->toBytes(III[B)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/PersistentDataBlockManagerInternal;->setFrpCredentialHandle([B)V

    return-void
.end method

.method public writePrivateModeLocBackupkPinHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writePrivateModeLockPasswordHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writePrivateModeLockPatternHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writePrivateModeLockPinHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getPrivateModeLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeRecoveryPasswordHash([BI)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockRecoveryPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeSyntheticPasswordState(IJLjava/lang/String;[B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->ensureSyntheticPasswordDirectoryForUser(I)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method
