.class final Lcom/android/server/SdpManagerService$VirtualLockClient;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VirtualLockClient"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SdpManagerService.VirtualLock"


# instance fields
.field mSdpManagerService:Lcom/android/server/SdpManagerService;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    return-void
.end method

.method static synthetic lambda$clearLock$1(ILcom/android/internal/widget/ILockSettings;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v5, p0

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings;->setLockCredential(Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setPassword$0(Ljava/lang/String;Ljava/lang/String;IILcom/android/internal/widget/ILockSettings;)V
    .locals 6

    const/4 v2, 0x2

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings;->setLockCredential(Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setPasswordWithToken$2(Ljava/lang/String;J[BIILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;
    .locals 8

    nop

    const/4 v2, 0x2

    move-object v0, p6

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/LockSettingsInternal;->setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method changePassword(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    const-string v0, "SdpManagerService.VirtualLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change password for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setPassword(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/SdpManagerService$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method changeToken([BJ[BJI)Z
    .locals 11

    const-string v0, "SdpManagerService.VirtualLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change token for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p7 .. p7}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$VirtualLockClient;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-wide/from16 v8, p5

    move v10, v2

    invoke-static/range {v3 .. v10}, Lcom/android/server/SdpManagerService;->access$1000(Lcom/android/server/SdpManagerService;[BJ[BJI)Z

    move-result v1

    return v1
.end method

.method checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    const-string v0, "SdpManagerService.VirtualLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check password for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/SdpManagerService;->access$400(Lcom/android/server/SdpManagerService;Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method checkUserSecurity(I)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService;->access$300(Lcom/android/server/SdpManagerService;I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method clean(I)V
    .locals 6

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {p1}, Lcom/android/server/SdpManagerService$FileUtil;->getUserSystemDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SdpManagerService.VirtualLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clean - sp state path found with user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v3, v2}, Lcom/android/server/SdpManagerService;->access$200(Lcom/android/server/SdpManagerService;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    const-string v3, "SdpManagerService.VirtualLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clean - sp state path not found with user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method clearLock(I)V
    .locals 4

    const-string v0, "SdpManagerService.VirtualLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear lock for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$600(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$I7zpVntME2JAh469nnRzxCP2xuc;

    invoke-direct {v3, p1}, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$I7zpVntME2JAh469nnRzxCP2xuc;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method enableSyntheticPassword(I)Z
    .locals 3

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method establish(Ljava/lang/String;[BI)J
    .locals 11

    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clearLock(I)V

    invoke-virtual {p0, p3}, Lcom/android/server/SdpManagerService$VirtualLockClient;->prepare(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setResetPasswordToken([BI)J

    move-result-wide v9

    move-object v3, p0

    move-object v4, p1

    move-wide v5, v9

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setPasswordWithToken(Ljava/lang/String;J[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SdpManagerService.VirtualLock"

    const-string/jumbo v1, "establish - sp based credential established for user %d with %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v9

    :cond_1
    return-wide v1
.end method

.method hasSyntheticPasswordHandle(I)Z
    .locals 3

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$700(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasSyntheticPasswordHandle(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method isSyntheticPasswordEnabled(I)Z
    .locals 3

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$700(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method prepare(I)Z
    .locals 5

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/server/SdpManagerService$FileUtil;->getUserSystemDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SdpManagerService.VirtualLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepare - failed to create sp state path for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    nop

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const/4 v1, 0x1

    return v1
.end method

.method removeLegacyPwdWrappedMasterKey(I)Z
    .locals 5

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/SdpManagerService;->getLegacyPwdWrappedMasterKeyPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeLegacyTokenWrappedMasterKey(I)Z
    .locals 5

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/SdpManagerService;->getLegacyTokenWrappedMasterKeyPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeResetPasswordToken(JI)Z
    .locals 3

    const-string v0, "SdpManagerService.VirtualLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove reset password token for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$700(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method removeToken(JI)Z
    .locals 3

    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$700(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "SdpManagerService.VirtualLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set password for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService;->access$500(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I

    move-result v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$600(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VBIaUN_ZlkTeFwaXVZpZRWFfX0g;

    invoke-direct {v4, p1, p2, v2, p3}, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VBIaUN_ZlkTeFwaXVZpZRWFfX0g;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method setPasswordWithToken(Ljava/lang/String;J[BI)Z
    .locals 15

    move-object v1, p0

    const-string v0, "SdpManagerService.VirtualLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set password with token for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p5 .. p5}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    iget-object v0, v1, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    move-object/from16 v13, p1

    invoke-static {v0, v13}, Lcom/android/server/SdpManagerService;->access$500(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I

    move-result v9

    :try_start_0
    iget-object v0, v1, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$800(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v14, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;

    move-object v4, v14

    move-object v5, v13

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;-><init>(Ljava/lang/String;J[BII)V

    invoke-virtual {v0, v14}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method setResetPasswordToken([BI)J
    .locals 4

    const-string v0, "SdpManagerService.VirtualLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set reset password token for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$700(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    const-string v0, "SdpManagerService.VirtualLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify token for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/SdpManagerService;->access$900(Lcom/android/server/SdpManagerService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method
