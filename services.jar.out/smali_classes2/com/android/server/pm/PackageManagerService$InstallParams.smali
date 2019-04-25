.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installReason:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput p13, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 13

    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    move-object v7, v6

    if-nez v7, :cond_1

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    if-eqz v8, :cond_1

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v7, v9

    :cond_1
    const/4 v8, 0x2

    if-eqz v7, :cond_6

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_2

    move v9, v4

    goto :goto_1

    :cond_2
    move v9, v3

    :goto_1
    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_3

    move v10, v4

    goto :goto_2

    :cond_3
    move v10, v3

    :goto_2
    if-eqz v9, :cond_5

    sget-boolean v11, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_4

    if-eqz v10, :cond_5

    :cond_4
    move v3, v4

    nop

    :cond_5
    if-nez v3, :cond_6

    :try_start_1
    invoke-static {v7, p1}, Lcom/android/server/pm/PackageManagerService;->access$4300(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_2
    const-string v8, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Downgrade detected: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x7

    monitor-exit v5

    return v8

    :cond_6
    :goto_3
    if-eqz v6, :cond_e

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_d

    iget-object v3, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    if-eqz v2, :cond_7

    const-string v3, "PackageManager"

    const-string v4, "Cannot install update to system app on sdcard"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    monitor-exit v5

    return v3

    :cond_7
    monitor-exit v5

    return v4

    :cond_8
    if-eqz v2, :cond_9

    monitor-exit v5

    return v8

    :cond_9
    if-ne v1, v4, :cond_a

    monitor-exit v5

    return v4

    :cond_a
    if-ne v1, v8, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$4400(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_c

    monitor-exit v5

    return v8

    :cond_c
    monitor-exit v5

    return v4

    :cond_d
    const/4 v3, -0x4

    monitor-exit v5

    return v3

    :cond_e
    :goto_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_f

    return v8

    :cond_f
    iget v3, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method


# virtual methods
.method handleReturnCode()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$5800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$4900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    return-void
.end method

.method public handleStartCopy()V
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x1

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid stage location"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v5, v0

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    move v6, v0

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    move v7, v0

    const/4 v0, 0x0

    new-instance v9, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v8

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v8, v10, v11, v12}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v14

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v10, "android"

    iget-object v11, v14, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lcom/android/server/pm/PackageManagerService;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    move v15, v8

    const-string v8, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EAS IT Policy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " isPackageSignedByPlatform = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v14, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v8

    const/4 v12, -0x1

    if-nez v8, :cond_8

    if-nez v15, :cond_8

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v14, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_5

    :cond_7
    nop

    const/4 v11, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move v4, v12

    move v12, v3

    const/4 v3, -0x6

    invoke-static/range {v8 .. v13}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;ZILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v14, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const/16 v2, -0x76

    goto :goto_6

    :cond_8
    move v4, v12

    const/4 v3, -0x6

    :cond_9
    if-eqz v6, :cond_b

    if-eqz v5, :cond_b

    const-string v8, "PackageManager"

    const-string v10, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x13

    :cond_a
    :goto_6
    move-object v8, v0

    goto/16 :goto_8

    :cond_b
    if-eqz v5, :cond_c

    if-eqz v7, :cond_c

    const-string v8, "PackageManager"

    const-string v10, "Conflicting flags specified for installing ephemeral on external"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x13

    goto :goto_6

    :cond_c
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v8

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v8, v10, v11, v12}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v8

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$4800()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v7, :cond_d

    const-string v0, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pkgLite for install: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-nez v0, :cond_e

    iget v0, v8, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v4, :cond_e

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v10

    nop

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v11

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v0, v13, v4}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v17

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v20, 0x0

    add-long v21, v17, v11

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v25}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JJI)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v0, v4, v13, v3}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string v3, "PackageManager"

    const-string v4, "Failed to free cache"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    :goto_7
    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v4, -0x6

    if-ne v3, v4, :cond_a

    const/4 v3, -0x1

    iput v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto/16 :goto_6

    :cond_e
    :goto_8
    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    iget v0, v8, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v3, -0x3

    if-ne v0, v3, :cond_f

    const/16 v2, -0x13

    goto :goto_9

    :cond_f
    const/4 v3, -0x4

    if-ne v0, v3, :cond_10

    const/4 v2, -0x1

    goto :goto_9

    :cond_10
    const/4 v3, -0x1

    if-ne v0, v3, :cond_11

    const/4 v2, -0x4

    goto :goto_9

    :cond_11
    const/4 v3, -0x2

    if-ne v0, v3, :cond_12

    const/4 v2, -0x2

    goto :goto_9

    :cond_12
    const/4 v3, -0x6

    if-ne v0, v3, :cond_13

    const/4 v2, -0x3

    goto :goto_9

    :cond_13
    const/4 v3, -0x5

    if-ne v0, v3, :cond_14

    const/16 v2, -0x14

    goto :goto_9

    :cond_14
    invoke-direct {v1, v8}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v0

    const/4 v3, -0x7

    if-ne v0, v3, :cond_15

    const/16 v2, -0x19

    goto :goto_9

    :cond_15
    if-nez v5, :cond_19

    if-nez v6, :cond_19

    const/4 v3, 0x2

    if-ne v0, v3, :cond_16

    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_9

    :cond_16
    const/4 v3, 0x3

    if-ne v0, v3, :cond_18

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$4800()Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "PackageManager"

    const-string v4, "...setting INSTALL_EPHEMERAL install flag"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v3, v3, -0x19

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_9

    :cond_18
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v3, v3, -0x9

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    :cond_19
    :goto_9
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$4900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v0, v4, :cond_1a

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_1a
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-static {v4, v10}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/high16 v11, 0x10000000

    if-nez v10, :cond_1b

    const/4 v12, -0x1

    goto :goto_a

    :cond_1b
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-virtual {v10, v12, v11, v13}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v12

    :goto_a
    move v10, v12

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-nez v12, :cond_1c

    const/4 v12, -0x1

    goto :goto_b

    :cond_1c
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v12, v12, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    :goto_b
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mInstallLogger:Lcom/android/server/pm/PackageInstallTimeLogger;

    if-eqz v13, :cond_1d

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v13, :cond_1d

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mInstallLogger:Lcom/android/server/pm/PackageInstallTimeLogger;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    move/from16 v28, v2

    iget-object v2, v8, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move/from16 v29, v5

    new-instance v5, Ljava/lang/Integer;

    move/from16 v30, v6

    iget v6, v8, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v11, v2, v5}, Lcom/android/server/pm/PackageInstallTimeLogger;->updateInstallTimeInfo(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLogger:Lcom/android/server/pm/PackageInstallTimeLogger;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const-string v6, "Init"

    invoke-virtual {v2, v5, v6}, Lcom/android/server/pm/PackageInstallTimeLogger;->updateInstallTimeInfo(ILjava/lang/String;)V

    goto :goto_c

    :cond_1d
    move/from16 v28, v2

    move/from16 v29, v5

    move/from16 v30, v6

    :goto_c
    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    const-string v6, "com.sprint.w.installer"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    const-string v6, "com.sprint.ce.updater"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_d

    :cond_1e
    const/4 v5, 0x0

    goto :goto_e

    :cond_1f
    :goto_d
    const/4 v5, 0x1

    :goto_e
    move v2, v5

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSPRInstallerPackages = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", installerPackageName = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget v5, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    goto :goto_f

    :cond_21
    const/4 v5, 0x0

    :goto_f
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v6, :cond_2c

    const/4 v6, -0x1

    if-eq v10, v6, :cond_2c

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    iget v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-static {v6, v11, v13, v12}, Lcom/android/server/pm/PackageManagerService;->access$5100(Lcom/android/server/pm/PackageManagerService;III)Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_10

    :cond_22
    move/from16 v31, v2

    move-object/from16 v40, v4

    move/from16 v32, v5

    move/from16 v35, v7

    move-object/from16 v36, v9

    move/from16 v39, v10

    move-object/from16 v33, v14

    move/from16 v34, v15

    goto/16 :goto_15

    :cond_23
    :goto_10
    if-nez v5, :cond_2c

    if-nez v2, :cond_2c

    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x10000000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v11, Ljava/io/File;

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    const-string v13, "application/vnd.android.package-archive"

    invoke-virtual {v6, v11, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v19, "application/vnd.android.package-archive"

    const/16 v20, 0x0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v17, v11

    move-object/from16 v18, v6

    invoke-static/range {v17 .. v22}, Lcom/android/server/pm/PackageManagerService;->access$5200(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v11

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v13}, Lcom/android/server/pm/PackageManagerService;->access$5308(Lcom/android/server/pm/PackageManagerService;)I

    move-result v13

    move/from16 v31, v2

    const-string v2, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v6, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    move/from16 v32, v5

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    iget v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    iget-object v5, v8, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    iget v5, v8, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    move-object/from16 v33, v14

    move/from16 v34, v15

    invoke-virtual {v8}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v14

    invoke-virtual {v6, v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v2, :cond_27

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v2, :cond_24

    const-string v2, "android.intent.extra.ORIGINATING_URI"

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_24
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v2, :cond_25

    const-string v2, "android.intent.extra.REFERRER"

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_25
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v2, v2, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v2, :cond_26

    const-string v2, "android.intent.extra.ORIGINATING_UID"

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v5, v5, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_26
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v2, v2, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v2, :cond_27

    const-string v2, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v5, v5, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_27
    new-instance v2, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v2, v10, v3}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    invoke-virtual {v2, v4, v6}, Lcom/android/server/pm/PackageVerificationState;->initialize(Ljava/util/ArrayList;Landroid/content/Intent;)V

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v5, v13, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5, v8, v11, v2}, Lcom/android/server/pm/PackageManagerService;->access$5400(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v5

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v15}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v26

    if-eqz v5, :cond_2a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_28

    move/from16 v35, v7

    const-string v7, "PackageManager"

    move-object/from16 v36, v9

    const-string v9, "Additional verifiers required, but none installed."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0x16

    move-object/from16 v37, v5

    goto :goto_13

    :cond_28
    move/from16 v35, v7

    move-object/from16 v36, v9

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v15, :cond_29

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v18

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    const/16 v23, 0x0

    const-string/jumbo v24, "package verifier"

    move-object/from16 v17, v14

    move-wide/from16 v20, v26

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    move-object/from16 v37, v5

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v38, v9

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v37

    goto :goto_11

    :cond_29
    move-object/from16 v37, v5

    goto :goto_12

    :cond_2a
    move-object/from16 v37, v5

    move/from16 v35, v7

    move-object/from16 v36, v9

    :goto_12
    move/from16 v7, v28

    :goto_13
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-static {v5, v9, v11}, Lcom/android/server/pm/PackageManagerService;->access$5500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v5

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2b

    move/from16 v39, v10

    const-wide/32 v9, 0x40000

    const-string/jumbo v15, "verification"

    invoke-static {v9, v10, v15, v13}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v18

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    const/16 v23, 0x0

    const-string/jumbo v24, "package verifier"

    move-object/from16 v17, v14

    move-object/from16 v19, v9

    move-wide/from16 v20, v26

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->getVerifierPackage()Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    move-result-object v9

    new-instance v10, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v40, v4

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object/from16 v41, v5

    const/4 v5, 0x1

    invoke-direct {v10, v15, v2, v4, v5}, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;IZ)V

    move-object/from16 v21, v10

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v20, "android.permission.PACKAGE_VERIFICATION_AGENT"

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v25}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    goto :goto_14

    :cond_2b
    move-object/from16 v40, v4

    move/from16 v39, v10

    :goto_14
    move v2, v7

    goto :goto_16

    :cond_2c
    move/from16 v31, v2

    move-object/from16 v40, v4

    move/from16 v32, v5

    move/from16 v35, v7

    move-object/from16 v36, v9

    move/from16 v39, v10

    move-object/from16 v33, v14

    move/from16 v34, v15

    :goto_15
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v2

    :goto_16
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.intent.action.PACKAGE_INSTALL_STARTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "packageName"

    iget-object v6, v8, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "userID"

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v7, "android.permission.HARDWARE_TEST"

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v5, "PackageManager"

    const-string/jumbo v6, "sendBroadcastAsUser. PACKAGE_INSTALL_STARTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_2d
    move/from16 v28, v2

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v35, v7

    move-object/from16 v36, v9

    move-object/from16 v33, v14

    move/from16 v34, v15

    :goto_17
    const/4 v4, 0x1

    if-ne v2, v4, :cond_33

    :try_start_1
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5700()Landroid/content/IHarmonyEAS;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v4, v33

    :try_start_2
    iget-object v5, v4, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5700()Landroid/content/IHarmonyEAS;

    move-result-object v0

    iget-object v5, v4, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-interface {v0, v5, v6, v7}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V

    goto :goto_18

    :cond_2e
    move-object/from16 v4, v33

    :cond_2f
    :goto_18
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v0, :cond_32

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "android"

    iget-object v6, v4, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/PackageManagerService;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_30

    const/16 v16, 0x1

    goto :goto_19

    :cond_30
    const/16 v16, 0x0

    :goto_19
    move/from16 v5, v16

    :try_start_3
    const-string v0, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EAS IT Policy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isPackageSignedByPlatform = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    const-string/jumbo v6, "packageinstaller"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-nez v5, :cond_31

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5700()Landroid/content/IHarmonyEAS;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5700()Landroid/content/IHarmonyEAS;

    move-result-object v0

    iget-object v6, v4, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v9, -0x1

    invoke-interface {v0, v6, v7, v9}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_31
    move v15, v5

    goto :goto_1a

    :catch_1
    move-exception v0

    move v15, v5

    goto :goto_1b

    :cond_32
    move/from16 v15, v34

    :goto_1a
    goto :goto_1c

    :catch_2
    move-exception v0

    move/from16 v15, v34

    goto :goto_1b

    :catch_3
    move-exception v0

    move-object/from16 v4, v33

    move/from16 v15, v34

    :goto_1b
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c

    :cond_33
    move-object/from16 v4, v33

    move/from16 v15, v34

    :goto_1c
    iput v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
