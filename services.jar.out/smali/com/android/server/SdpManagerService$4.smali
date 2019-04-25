.class Lcom/android/server/SdpManagerService$4;
.super Landroid/os/ContainerStateReceiver;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SdpManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpManagerService$4;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 12

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onContainerCreated :: user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Workspace for user %d has been created"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/SdpManagerService$4;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$3600(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService$4;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v3, p2}, Lcom/android/server/SdpManagerService;->access$3700(Lcom/android/server/SdpManagerService;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v3

    move-object v0, v3

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected condition while find engine info with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/SDPLog;->e(Ljava/lang/Exception;)V

    monitor-exit v2

    return-void

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/SdpManagerService$4;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/SdpManagerService;->isLegacyContainerUser(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "On created - User %d workspace identified as old-fashioned"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService$4;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$3600(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_1
    const-string v5, "EXTRA_RESET_TOKEN"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v7, 0x20

    invoke-static {v7}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v7

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v8

    or-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setFlag(I)V

    iget-object v9, p0, Lcom/android/server/SdpManagerService$4;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v9}, Lcom/android/server/SdpManagerService;->access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/android/server/SdpManagerService$4;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v9}, Lcom/android/server/SdpManagerService;->access$3800(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    iget-object v9, p0, Lcom/android/server/SdpManagerService$4;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v9, v7, p2}, Lcom/android/server/SdpManagerService;->access$3900(Lcom/android/server/SdpManagerService;[BI)Z

    :cond_3
    iget-object v8, p0, Lcom/android/server/SdpManagerService$4;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v8, v7, p2}, Lcom/android/server/SdpManagerService;->setResetToken([BI)Z

    move-result v8

    move v3, v8

    invoke-static {v7}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    const-string v8, "On created - Reset token for user %d has been deployed : %s"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v3

    :try_start_2
    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdChange()Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v7

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected exception while enforce password for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    const-string v5, "On created - Password enforcement for user %d has been deployed : %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_4
    const-string v2, "On created - User %d workspace identified as new-fashioned"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onContainerLocked :: user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Immediately lock sdp for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService$4;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    :cond_0
    return-void
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onContainerShutdown :: user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container has been shut down for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService$4;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService$4;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0, p2}, Lcom/android/server/SdpManagerService;->access$4000(Lcom/android/server/SdpManagerService;I)V

    :cond_0
    return-void
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onContainerUnlocked :: user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
