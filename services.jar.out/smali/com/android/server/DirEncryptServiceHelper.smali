.class public Lcom/android/server/DirEncryptServiceHelper;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;,
        Lcom/android/server/DirEncryptServiceHelper$Notify;,
        Lcom/android/server/DirEncryptServiceHelper$VoldResponse;,
        Lcom/android/server/DirEncryptServiceHelper$VoldCommand;,
        Lcom/android/server/DirEncryptServiceHelper$Command;,
        Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x1f4

.field private static final FIPS_EDK_PATH_SD:Ljava/lang/String; = "edk_p_sd"

.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final SECURE_MOUNT_PATH:Ljava/lang/String; = "/mnt/secure/staging"

.field private static final TAG:Ljava/lang/String; = "DirEncryptServiceHelper"

.field private static final UNMOUNT_POLICY_INTENT:Ljava/lang/String; = "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

.field private static mMountSDcardToHelper:Z

.field private static mNeedToCreateKey:Z

.field private static mNotificationChannelID:Ljava/lang/String;

.field private static mSync:Ljava/lang/Object;


# instance fields
.field private mAlreadyDecrypted:Z

.field private mAnimateSync:Ljava/lang/Object;

.field private mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

.field private mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDecryptDialog:Landroid/app/AlertDialog;

.field private mDecryptTimestamp:Ljava/lang/String;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mEncryptTimestamp:Ljava/lang/String;

.field private mErrAdditionalSpace:I

.field private mFirstUnlockLockscreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastError:I

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/security/IDirEncryptServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevPercent:I

.field private mProgressTime:J

.field private mSelfSDMountRequested:Z

.field private mServiceStatus:I

.field private mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

.field private mUnnmountRequested:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    const-string/jumbo v0, "sdcard_encryption_channel"

    sput-object v0, Lcom/android/server/DirEncryptServiceHelper;->mNotificationChannelID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$1;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    new-instance v0, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DirEncryptServiceHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DirEncryptServiceHelper;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mNotificationChannelID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/DirEncryptServiceHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isCryptKeeperShown()Z

    move-result v0

    return v0
.end method

.method private checkSdCardMetafile()V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v4}, Lcom/samsung/android/security/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    move v3, v4

    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    const-string/jumbo v4, "sec.fle.encryption.status"

    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "DirEncryptServiceHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkSdCardMetafile result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " unlocked:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " Policy:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " skipMounting:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "encrypted"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "DirEncryptServiceHelper"

    const-string v7, "ENC_META_CHECK : Encryption State Normal"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    const-string v0, "DirEncryptServiceHelper"

    const-string v5, "checkSdCardMetafile but user locked yet"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v5}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string v6, "decrypting"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "encrypting"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    if-ne v1, v5, :cond_7

    const-string v5, "DirEncryptServiceHelper"

    const-string v6, "ENC_META_CHECK : EAS Policy Set"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10400000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-boolean v6, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    if-nez v6, :cond_6

    :try_start_0
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "DirEncryptServiceHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to start intent activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    goto :goto_3

    :cond_7
    const-string v6, "DirEncryptServiceHelper"

    const-string v7, "ENC_META_CHECK : Normal SD Card"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    const/4 v5, 0x3

    const-string/jumbo v6, "done"

    invoke-direct {p0, v5, v6}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    :goto_2
    const-string v6, "DirEncryptServiceHelper"

    const-string v7, "SD card has encrypting/decrypting state -> Self Encrypting/Decrypting!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_9

    const-string v0, "DirEncryptServiceHelper"

    const-string v5, "checkSdCardMetafile but user locked yet"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v5}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    :goto_3
    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    return-void
.end method

.method private clearNotification()V
    .locals 2

    const-string v0, "DirEncryptServiceHelper"

    const-string v1, "clearNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private doWorkForUSBState(Ljava/lang/String;)V
    .locals 8

    const-string v0, "DirEncryptServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doWorkForUSBState:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "vold.decrypt"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isCryptKeeperShown()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DirEncryptServiceHelper"

    const-string v2, "Do not work if encryption lock page"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "HiddenMount"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz v4, :cond_4

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    const-string/jumbo v2, "sec.fle.encryption.status"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string/jumbo v5, "encrypted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "encrypting"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getStorageManagerService()Landroid/os/storage/IStorageManager;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Landroid/os/storage/IStorageManager;->encryptExternalStorage(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "DirEncryptServiceHelper"

    const-string v7, "Unable to communicate with Mountservice"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_4
    :try_start_1
    const-string/jumbo v2, "vold.crypto.ext_migrate"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->checkSdCardMetafile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    goto/16 :goto_3

    :cond_6
    const-string v1, "MoveMount"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_b

    invoke-direct {p0, v4}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v3, :cond_7

    const-string v3, "DirEncryptServiceHelper"

    const-string/jumbo v6, "looks like encryption policies were received while SD card decryption was on going (DECRYPTING)!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "success"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v2, "busy"

    invoke-direct {p0, v5, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_2

    :cond_7
    if-ne v1, v4, :cond_8

    const-string v2, "DirEncryptServiceHelper"

    const-string v3, "Since encrypt is ON: final mount command (ENCRYPTED)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    if-ne v1, v5, :cond_a

    iget v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v6, 0x8

    if-eq v3, v6, :cond_a

    const-string v3, "DirEncryptServiceHelper"

    const-string v6, "Since encrypt is OFF: no final mount command (DECRYPTED)"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v3, "Mount"

    invoke-direct {p0, v5, v3}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    const-string v3, "DirEncryptServiceHelper"

    const-string v5, "delete uuid"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v5}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/DirEncryptPrefs;->clearPrefs(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    if-nez v3, :cond_9

    const-string/jumbo v3, "success"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v2, "DirEncryptServiceHelper"

    const-string/jumbo v3, "don\'t send encryption notification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const-string v2, "DirEncryptServiceHelper"

    const-string v3, "MOVE_MOUNT => ENCRYPTING or OTHER_ENCRYPT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto/16 :goto_3

    :cond_b
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "DirEncryptServiceHelper"

    const-string v3, "Update SD card encryption status"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string/jumbo v1, "free"

    invoke-direct {p0, v5, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_3

    :cond_c
    const-string/jumbo v1, "removed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const-string v1, "DirEncryptServiceHelper"

    const-string v3, "SD card removed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string/jumbo v1, "free"

    invoke-direct {p0, v2, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_3

    :cond_d
    const-string/jumbo v1, "unmounted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "DirEncryptServiceHelper"

    const-string v5, "SD card unmounted"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    :cond_e
    iget-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    if-ne v1, v3, :cond_10

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    const/16 v1, 0xa

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_3

    :cond_f
    const-string v1, "bad_removal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    const-string v1, "DirEncryptServiceHelper"

    const-string v3, "SD card bad removed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v1, :cond_10

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string/jumbo v1, "free"

    invoke-direct {p0, v2, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    :cond_10
    :goto_3
    return-void
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 5

    const-string v0, "Unknown"

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DirEncryptServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/server/DirEncryptServiceHelper;->mNotificationChannelID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    return-object v0
.end method

.method private getSecurityIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "adminStart"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getStorageCardEncryptionInternal(Landroid/os/Bundle;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "policy"

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v1, "DirEncryptServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStorageCardEncryptionInternal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getCurrentUUID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "DirEncryptServiceHelper"

    const-string/jumbo v2, "getStorageCardEncryptionInternal : UUID is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v1

    return v1
.end method

.method private static getStorageManagerService()Landroid/os/storage/IStorageManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "DirEncryptServiceHelper"

    const-string v2, "Can\'t get storagemanager service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Could not contact storagemanager service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getTopClassName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private isAdminApplied()I
    .locals 3

    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isCryptKeeperShown()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isEncryptionApplied()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    return-void
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;II)V
    .locals 10

    const-string v0, "DirEncryptServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyEncryptionStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/security/IDirEncryptServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "DirEncryptServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v4}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    move v6, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/security/IDirEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "DirEncryptServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v4

    const-string v5, "DirEncryptServiceHelper"

    const-string v6, "Listener dead"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    nop

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private varargs sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DirEncryptServiceHelper"

    const-string v2, "Failed to send command"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setStatus(I)V
    .locals 3

    const-string v0, "DirEncryptServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return-void
.end method

.method private showNotification(IILjava/lang/String;)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v10, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const v6, 0x1040924

    const v11, 0x1040928

    const v12, 0x1040926

    const v13, 0x104092a

    const/4 v14, 0x1

    const/high16 v15, 0x8000000

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    goto/16 :goto_e

    :pswitch_1
    if-ne v8, v14, :cond_0

    const v5, 0x1080316

    iget-object v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v5, 0x108029d

    iget-object v11, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v11, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/16 v6, 0xb

    iput v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    iget-object v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0, v11, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v1, v2

    nop

    move-object v12, v1

    move-object v15, v2

    move-object v13, v3

    move v11, v5

    goto/16 :goto_d

    :pswitch_2
    iget-object v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x104092f

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x104092e

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0, v11, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const v0, 0x108007b

    move-object v4, v2

    nop

    :goto_1
    move v11, v0

    move-object v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x1040946

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x1040945

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getSecurityIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-static {v6, v0, v11, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x1080317

    nop

    move v11, v1

    :goto_2
    move-object v15, v2

    move-object v13, v3

    :goto_3
    move-object v12, v4

    goto/16 :goto_d

    :pswitch_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    if-ne v8, v14, :cond_1

    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1080316

    :goto_4
    goto :goto_5

    :cond_1
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x108029d

    goto :goto_4

    :goto_5
    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v5, v11, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v5, 0x4

    iput v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object v4, v0

    goto/16 :goto_c

    :pswitch_5
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v11, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-wide v12, v7, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    const-wide/16 v14, -0x1

    cmp-long v0, v12, v14

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v7, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    :cond_2
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-static {v0, v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->access$802(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I

    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-static {v0, v8}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->access$902(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I

    if-nez v6, :cond_3

    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->start()V

    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    iget-object v12, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_3
    const/16 v0, 0x64

    if-ne v0, v6, :cond_4

    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    :cond_4
    :goto_6
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_6
    if-ne v8, v14, :cond_5

    const v0, 0x1080316

    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_5
    const v0, 0x1080316

    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_7
    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v5, v11, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object v4, v2

    goto/16 :goto_1

    :pswitch_7
    if-ne v8, v14, :cond_7

    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "success"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x1040929

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    invoke-static {v3, v12, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput v12, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const v3, 0x1080317

    :goto_8
    goto :goto_9

    :cond_6
    const/4 v12, 0x0

    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v12, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    iput v3, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const v3, 0x1080316

    goto :goto_8

    :cond_7
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "success"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x1040925

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v11, 0x0

    invoke-static {v3, v11, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput v11, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const v3, 0x108029e

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v11, v12, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    iput v3, v7, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const v3, 0x108029d

    goto :goto_8

    :goto_9
    move-object v4, v0

    move-object v0, v2

    goto :goto_c

    :pswitch_8
    if-ne v8, v14, :cond_9

    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x104092a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x104092b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1080317

    :goto_a
    goto :goto_b

    :cond_9
    iget-object v0, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x1040927

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x108029e

    goto :goto_a

    :goto_b
    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v11, 0x0

    invoke-static {v5, v11, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object v4, v0

    nop

    :goto_c
    move-object v15, v0

    move-object v0, v1

    move-object v13, v2

    move v11, v3

    goto/16 :goto_3

    :goto_d
    iget-object v1, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v7, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    :cond_a
    move-object v1, v7

    move-object v2, v0

    move v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_b

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/2addr v2, v14

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget v2, v1, Landroid/app/Notification;->defaults:I

    const/4 v3, 0x4

    or-int/2addr v2, v3

    iput v2, v1, Landroid/app/Notification;->defaults:I

    iget-object v2, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v4, Lcom/android/server/DirEncryptServiceHelper;->mNotificationChannelID:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104092a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    sget v3, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_b
    return-void

    :cond_c
    :goto_e
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private unmountSDCard()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public SetMountSDcardToHelper(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    return-void
.end method

.method public addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public doHandleMessage(Landroid/os/Message;)V
    .locals 5

    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    const-string v1, "DirEncryptServiceHelper"

    const-string v2, "Invalid command!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "DirEncryptServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command.USB_STATE:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z

    nop

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAdditionalSpaceRequired()I
    .locals 1

    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return v0
.end method

.method public getDecryptTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getLastError()I
    .locals 1

    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    return v0
.end method

.method public getNeedToCreateKey()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return v0
.end method

.method public getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DirEncryptServiceHelper"

    const-string v2, "EncPrefs found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DirEncryptServiceHelper"

    const-string v2, "************************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v1, "DirEncryptServiceHelper"

    const-string/jumbo v2, "param is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v1, "DirEncryptServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSdCardEncryptionPreferences : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DirEncryptServiceHelper"

    const-string v2, "************************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1, p1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "DirEncryptServiceHelper"

    const-string v2, "EncPrefs not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public isSdCardEncryped()Z
    .locals 3

    const-string/jumbo v0, "sec.fle.encryption.status"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "encrypted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "encrypting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v0

    return v0
.end method

.method public onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 12

    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v1

    const/4 v2, 0x6

    const/high16 v3, 0x10400000

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_e

    :pswitch_1
    array-length v2, p3

    if-ne v2, v4, :cond_1

    aget-object v2, p3, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, p3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    iput v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const-string v5, ""

    invoke-direct {p0, v4, v2, v5}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    const-string/jumbo v4, "free"

    invoke-direct {p0, v7, v4}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_e

    :cond_1
    const-string v2, "DirEncryptServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESP_FILE_OPEN_ERR extra data recvd["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], please fix!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :pswitch_2
    array-length v2, p3

    if-ne v2, v9, :cond_6

    aget-object v2, p3, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    iput v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    iput-boolean v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v4}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v3, "DirEncryptServiceHelper"

    const-string/jumbo v5, "there is no SD card"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_2
    if-ne v2, v6, :cond_3

    const/4 v3, -0x1

    const-string v5, "DirEncryptServiceHelper"

    const-string v7, "ENC_META_CHECK : Encryption State Normal"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    invoke-direct {p0, v4}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-ne v1, v6, :cond_5

    const-string v5, "DirEncryptServiceHelper"

    const-string v7, "ENC_META_CHECK : EAS Policy Set"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-boolean v3, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_4

    :try_start_1
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v7, "DirEncryptServiceHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to start intent activity"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    const-string v3, "DirEncryptServiceHelper"

    const-string v5, "ENC_META_CHECK : Normal SD Card"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    :goto_2
    goto :goto_3

    :cond_6
    const-string v2, "DirEncryptServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESP_ENC_META_CHECK extra data recvd["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], please fix!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string/jumbo v2, "free"

    invoke-direct {p0, v7, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    :goto_3
    sput-boolean v8, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    goto/16 :goto_e

    :pswitch_3
    const/4 v2, -0x1

    array-length v3, p3

    if-ne v3, v5, :cond_8

    aget-object v3, p3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_7

    const-string v4, ""

    invoke-direct {p0, v5, v8, v4}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    :cond_7
    const/4 v2, 0x3

    goto/16 :goto_e

    :cond_8
    const-string v3, "DirEncryptServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESP_UNMOUNT extra data recvd["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], please fix!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :pswitch_4
    const/4 v2, -0x1

    array-length v3, p3

    const/4 v5, 0x7

    if-ne v3, v4, :cond_a

    aget-object v3, p3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const/4 v2, 0x2

    if-ne v3, v6, :cond_9

    iput v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const-string/jumbo v4, "success"

    invoke-direct {p0, v9, v6, v4}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    const-string v4, "Mount"

    invoke-direct {p0, v2, v4}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_4

    :cond_9
    iput v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const-string v4, ""

    invoke-direct {p0, v9, v6, v4}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    const-string/jumbo v4, "free"

    invoke-direct {p0, v2, v4}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    :goto_4
    goto/16 :goto_e

    :cond_a
    array-length v3, p3

    if-ne v3, v7, :cond_c

    aget-object v3, p3, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    move v7, v9

    :goto_5
    move v2, v7

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string/jumbo v4, "free"

    invoke-direct {p0, v2, v4}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_e

    :cond_c
    const-string v3, "DirEncryptServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESP_MOUNT extra data recvd["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], please fix!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :pswitch_5
    array-length v3, p3

    if-ne v3, v4, :cond_e

    aget-object v3, p3, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, p3, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    iput v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v3, :cond_d

    goto :goto_6

    :cond_d
    move v7, v9

    :goto_6
    const-string/jumbo v2, "free"

    invoke-direct {p0, v7, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_e

    :cond_e
    const-string v2, "DirEncryptServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESP_PRESCAN_FULL_ERR extra data recvd["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], please fix!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :pswitch_6
    array-length v2, p3

    if-ne v2, v5, :cond_13

    const-string v2, "DirEncryptServiceHelper"

    const-string v3, "DirEncryptServiceHelperVoldResponse.PROGRESS inside"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v2, p3, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, p3, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v5, p3, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v2, v6, :cond_f

    invoke-direct {p0, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_7

    :cond_f
    invoke-direct {p0, v7}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    :goto_7
    iget v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    sub-int v8, v3, v8

    if-lt v8, v6, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v4, v2, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    iput v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    :cond_10
    const/16 v4, 0x64

    if-ne v3, v4, :cond_11

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    :cond_11
    if-nez v2, :cond_12

    goto :goto_8

    :cond_12
    move v7, v9

    :goto_8
    const-string v4, "busy"

    invoke-direct {p0, v7, v4, v3, v5}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    goto/16 :goto_e

    :cond_13
    const-string v2, "DirEncryptServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESP_PROGRESS extra data recvd["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], please fix!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :pswitch_7
    array-length v10, p3

    if-ne v10, v5, :cond_1d

    aget-object v5, p3, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v10, p3, v7

    const-string/jumbo v11, "success"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    const-string v2, "DirEncryptServiceHelper"

    const-string v3, "RESP_ENCRYPT success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string/jumbo v2, "success"

    invoke-direct {p0, v9, v5, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    if-nez v5, :cond_14

    goto :goto_9

    :cond_14
    move v7, v9

    :goto_9
    const-string v2, "Mount"

    invoke-direct {p0, v7, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    const-string v2, "DirEncryptServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ENCRYPT Response admin : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_15

    const-string v2, "DirEncryptServiceHelper"

    const-string v3, "Decrypt compelte"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto/16 :goto_d

    :cond_15
    const-string v2, "DirEncryptServiceHelper"

    const-string v3, "Encrypt complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto/16 :goto_d

    :cond_16
    const-string/jumbo v11, "exception"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    const-string v2, "DirEncryptServiceHelper"

    const-string v4, "RESP_ENCRYPT : encrypted on other device"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "DirEncryptServiceHelper"

    const-string/jumbo v3, "error popup should be shown but user locked yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_17
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "user_setup_complete"

    invoke-static {v2, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_18

    const-string v3, "DirEncryptServiceHelper"

    const-string v4, "The Setup Wizard is not completed yet"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_18
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "OtherDevice"

    const-string/jumbo v8, "exception"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v3

    :try_start_4
    const-string v7, "DirEncryptServiceHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to start intent activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    goto :goto_d

    :cond_19
    const-string v3, "DirEncryptServiceHelper"

    const-string v11, "RESP_ENCRYPT failed"

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v3, :cond_1b

    if-ne v5, v6, :cond_1a

    iput v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_b

    :cond_1a
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    :cond_1b
    :goto_b
    const-string/jumbo v2, "failed"

    invoke-direct {p0, v9, v5, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    if-nez v5, :cond_1c

    goto :goto_c

    :cond_1c
    move v7, v9

    :goto_c
    const-string/jumbo v2, "free"

    invoke-direct {p0, v7, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    :goto_d
    goto :goto_e

    :cond_1d
    const-string v2, "DirEncryptServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESP_ENCRYPT extra data recvd["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], please fix!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_e
    monitor-exit v0

    return v6

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2ab
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method ready()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerStorageEventListener()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DirEncryptServiceHelper"

    const-string v1, "RegisterStorageEventListner fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "DirEncryptServiceHelper"

    const-string v1, "RegisterStorageEventListner success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public setBootComplted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    return-void
.end method

.method public setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return-void
.end method

.method public unmountSDCardByAdmin()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DirEncryptServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SD card  : State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / Admin policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / Encrypted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DirEncryptServiceHelper"

    const-string v3, "Unmount SD Card By Admin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
