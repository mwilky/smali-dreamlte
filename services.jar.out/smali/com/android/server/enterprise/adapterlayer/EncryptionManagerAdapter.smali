.class public Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
.super Ljava/lang/Object;
.source "EncryptionManagerAdapter.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    if-nez v1, :cond_0

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public disableStorageCardEncryptionPolicy()I
    .locals 3

    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/security/SemSdCardEncryption;->setAdminPolicy(ZLjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public enableStorageCardEncryptionPolicy()I
    .locals 3

    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/security/SemSdCardEncryption;->setAdminPolicy(ZLjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequireStorageCardEncryption()Z
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public isEncryptionFeatureEnabled()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method public isStorageCardEncrypted()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "DirEncryptService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/security/IDirEncryptService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/security/IDirEncryptService;->isSdCardEncryped()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
