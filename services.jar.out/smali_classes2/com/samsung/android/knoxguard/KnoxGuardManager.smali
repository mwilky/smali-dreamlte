.class public Lcom/samsung/android/knoxguard/KnoxGuardManager;
.super Ljava/lang/Object;
.source "KnoxGuardManager.java"


# static fields
.field private static final KNOXGUARD_SERVICE:Ljava/lang/String; = "knoxguard_service"

.field private static TAG:Ljava/lang/String;

.field private static mKnoxGuardManager:Lcom/samsung/android/knoxguard/KnoxGuardManager;


# instance fields
.field private mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "KnoxGuardManager"

    sput-object v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knoxguard/KnoxGuardManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mKnoxGuardManager:Lcom/samsung/android/knoxguard/KnoxGuardManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/KnoxGuardManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mKnoxGuardManager:Lcom/samsung/android/knoxguard/KnoxGuardManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mKnoxGuardManager:Lcom/samsung/android/knoxguard/KnoxGuardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    if-nez v0, :cond_0

    const-string v0, "knoxguard_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    return-object v0
.end method


# virtual methods
.method public addPackagesToClearCacheBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToForceStopBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowFirmwareRecovery(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->allowFirmwareRecovery(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowOTAUpgrade(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->allowOTAUpgrade(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowSafeMode(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->allowSafeMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bindToLockScreen()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->bindToLockScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public callKGsv()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->callKGsv()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getKGServiceVersion()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getKGServiceVersion()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPBAUniqueNumber()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->getPBAUniqueNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""

    return-object v1

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public registerIntent(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->registerIntent(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setAdminRemovable(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setAdminRemovable(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setApplicationUninstallationDisabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Knox Guard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setKnoxGuardExemptRule(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setKnoxGuardExemptRule(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v1, "No Knox Guard Service found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setNetRegistRejectCause(II)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setNetRegistRejectCause(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .locals 16

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object/from16 v1, p0

    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    invoke-interface/range {v2 .. v15}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxGuard service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    :goto_0
    return-void
.end method

.method public setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public shouldBlockCustomRom()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->shouldBlockCustomRom()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showInstallmentStatus()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->showInstallmentStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unRegisterIntent()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getService()Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/KnoxGuardManager;->mService:Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    invoke-interface {v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager;->unRegisterIntent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/KnoxGuardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxGuard service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
