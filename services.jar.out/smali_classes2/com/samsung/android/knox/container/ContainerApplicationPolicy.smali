.class public Lcom/samsung/android/knox/container/ContainerApplicationPolicy;
.super Ljava/lang/Object;
.source "ContainerApplicationPolicy.java"


# static fields
.field public static final INSTALL_ONLY:I = 0x1f7

.field private static TAG:Ljava/lang/String;

.field private static gAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;


# instance fields
.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ContainerApplicationPolicy"

    sput-object v0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private declared-synchronized getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->gAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_0

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->gAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->gAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addHomeShortcut(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.addHomeShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at Application PolicyService API addHomeShortcut "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.addPackageToInstallWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v0, v4

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API addPackageToInstallWhiteList "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method public addPackagesToClearCacheBlackList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.addPackagesToClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public addPackagesToClearCacheWhiteList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.addPackagesToClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public addPackagesToClearDataBlackList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.addPackagesToClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public addPackagesToClearDataWhiteList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.addPackagesToClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public deleteHomeShortcut(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.deleteHomeShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->deleteHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at Application PolicyService API deleteHomeShortcut "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API setEnableApplication "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public getPackages()[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getInstalledApplicationsIDList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at ContainerApplicationPolicy API getPackages "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getPackagesFromClearCacheBlackList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.getPackagesFromClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getPackagesFromClearCacheWhiteList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.getPackagesFromClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getPackagesFromClearDataBlackList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.getPackagesFromClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getPackagesFromClearDataWhiteList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.getPackagesFromClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getPackagesFromInstallWhiteList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API getPackagesFromInstallWhiteList "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public installPackage(Ljava/lang/String;ILcom/samsung/android/knox/EnterpriseContainerCallback;)Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.installPackage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v4, p1

    move-object v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/application/IApplicationPolicy;->installAppWithCallback(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLcom/samsung/android/knox/IEnterpriseContainerCallback;Landroid/os/ParcelFileDescriptor;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API getPackages "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInApprovedInstallerWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API isPackageInInstallWhiteList "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.removePackageFromInstallWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API removePackageFromInstallWhiteList "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method public removePackagesFromClearCacheBlackList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.removePackagesFromClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public removePackagesFromClearCacheWhiteList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.removePackagesFromClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public removePackagesFromClearDataBlackList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.removePackagesFromClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public removePackagesFromClearDataWhiteList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.removePackagesFromClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.setDisableApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API setDisableApplication "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.setEnableApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API setEnableApplication "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.startApp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->startApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at ContainerApplicationPolicy API startApp "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public stopApp(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.stopApp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->stopApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at ContainerApplicationPolicy API stopApp "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public uninstallPackage(Ljava/lang/String;Lcom/samsung/android/knox/EnterpriseContainerCallback;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.uninstallPackage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->uninstallApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    if-eqz p2, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    const/16 v4, 0x3f0

    invoke-virtual {p2, v4, v3}, Lcom/samsung/android/knox/EnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "pmerrorcode"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v4, 0x3f1

    invoke-virtual {p2, v4, v3}, Lcom/samsung/android/knox/EnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at ContainerApplicationPolicy API getPackages "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    iget-object v0, v1, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v3, "ContainerApplicationPolicy.writeData"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/high16 v3, 0x40000

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v12

    if-nez v12, :cond_0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const/4 v5, 0x0

    const/4 v0, 0x0

    move v6, v0

    :try_start_0
    iget-object v7, v1, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v13, p1

    :try_start_1
    invoke-interface {v12, v7, v13}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "package is not in container!!!"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const/4 v7, 0x0

    const/high16 v14, 0x40000

    if-eqz v2, :cond_3

    array-length v8, v2

    move v6, v8

    array-length v8, v2

    div-int/2addr v8, v14

    move v7, v8

    if-lez v7, :cond_2

    invoke-static {v2, v0, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    move-object v15, v0

    goto :goto_1

    :cond_3
    move-object v15, v5

    :goto_1
    move v11, v6

    move v10, v7

    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v6, v1, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const/4 v0, 0x0

    move-object v5, v12

    move-object v7, v13

    move-object/from16 v8, p2

    move-object v9, v15

    move v14, v10

    move v10, v0

    move/from16 v17, v11

    :try_start_4
    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/knox/application/IApplicationPolicy;->writeData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BZI)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const/4 v4, 0x1

    move v5, v0

    :goto_2
    move v0, v4

    if-gt v0, v14, :cond_5

    if-eqz v5, :cond_5

    const-wide/16 v6, 0x64

    :try_start_5
    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-ne v0, v14, :cond_4

    const/high16 v4, 0x40000

    mul-int v6, v0, v4

    move/from16 v11, v17

    :try_start_6
    invoke-static {v2, v6, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    move-object v15, v6

    goto :goto_4

    :catchall_0
    move-exception v0

    move v4, v5

    move/from16 v17, v11

    goto :goto_6

    :cond_4
    move/from16 v11, v17

    const/high16 v4, 0x40000

    mul-int v6, v0, v4

    add-int/lit8 v7, v0, 0x1

    mul-int/2addr v7, v4

    :try_start_7
    invoke-static {v2, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :goto_4
    const/16 v16, 0x0

    :try_start_8
    iget-object v6, v1, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v10, 0x1

    move-object v5, v12

    move-object v7, v13

    move-object/from16 v8, p2

    move-object v9, v15

    move/from16 v17, v11

    :try_start_9
    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/knox/application/IApplicationPolicy;->writeData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BZI)Z

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, v15

    move/from16 v4, v16

    goto :goto_7

    :catchall_2
    move-exception v0

    move/from16 v17, v11

    move-object v5, v15

    move/from16 v4, v16

    goto :goto_5

    :catchall_3
    move-exception v0

    move/from16 v17, v11

    move v4, v5

    move-object v5, v15

    :goto_5
    goto :goto_7

    :cond_5
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    nop

    move/from16 v11, v17

    goto :goto_e

    :catchall_4
    move-exception v0

    move v4, v5

    goto :goto_6

    :catchall_5
    move-exception v0

    :goto_6
    move-object v5, v15

    goto :goto_7

    :catchall_6
    move-exception v0

    move v14, v10

    move/from16 v17, v11

    move-object v5, v15

    :goto_7
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    throw v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    move-object v15, v5

    move/from16 v11, v17

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v15, v5

    move/from16 v11, v17

    goto :goto_c

    :catchall_7
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move/from16 v17, v11

    move v5, v4

    goto :goto_a

    :catch_3
    move-exception v0

    move/from16 v17, v11

    move v5, v4

    goto :goto_d

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v13, p1

    :goto_8
    move-object v15, v5

    move v11, v6

    :goto_9
    move v5, v4

    :goto_a
    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v6, "InterruptedException at ContainerApplicationPolicy API writeData "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :catch_7
    move-exception v0

    move-object/from16 v13, p1

    :goto_b
    move-object v15, v5

    move v11, v6

    :goto_c
    move v5, v4

    :goto_d
    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Failed at ContainerApplicationPolicy API writeData "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_e
    return v5
.end method
