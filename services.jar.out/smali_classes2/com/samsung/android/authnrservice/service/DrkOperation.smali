.class final Lcom/samsung/android/authnrservice/service/DrkOperation;
.super Ljava/lang/Object;
.source "DrkOperation.java"


# static fields
.field private static final AUTHNR_SERVICE_NAME:Ljava/lang/String; = "AUTHNR"

.field private static final TAG:Ljava/lang/String; = "DO"

.field private static sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;


# instance fields
.field private mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;
    .locals 2

    const-class v0, Lcom/samsung/android/authnrservice/service/DrkOperation;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/authnrservice/service/DrkOperation;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/DrkOperation;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;

    :cond_0
    sget-object v1, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method declared-synchronized getDrkKeyHandle()[B
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "DO"

    const-string v1, "getDrkKeyHandle"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DO"

    const-string/jumbo v2, "not initialized"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const-string v4, "AUTHNR"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_2

    array-length v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    nop

    nop

    monitor-exit p0

    return-object v0

    :cond_2
    :goto_0
    :try_start_2
    const-string v4, "DO"

    const-string v5, "createServiceKeySession failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v1, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "DO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get drk fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v1, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "DO"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "DO"

    const-string v2, "isAliveDeviceRootKeyService failed"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_2

    const-string v4, "DO"

    const-string v5, "isExistDeviceRootKey failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    nop

    monitor-exit p0

    return v4

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "DO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drk init failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized terminate()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "DO"

    const-string/jumbo v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DO"

    const-string/jumbo v2, "not initialized"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->releaseServiceKeySession()I

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_1

    const-string v4, "DO"

    const-string/jumbo v5, "releaseServiceKeySession failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "DO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drk terminate failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
