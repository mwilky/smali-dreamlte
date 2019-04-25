.class public Lcom/android/server/sepunion/SemPluginLocalService;
.super Lcom/samsung/android/sepunion/SemPluginManagerLocal;
.source "SemPluginLocalService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

.field private mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

.field private mPluginServiceReady:Z

.field private mSemPluginManagerService:Lcom/android/server/sepunion/SemPluginManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/sepunion/SemPluginLocalService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemPluginLocalService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mPluginServiceReady:Z

    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->initialize()V

    return-void
.end method

.method private getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getSemPluginManagerService()Lcom/android/server/sepunion/SemPluginManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mSemPluginManagerService:Lcom/android/server/sepunion/SemPluginManagerService;

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mSemPluginManagerService:Lcom/android/server/sepunion/SemPluginManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mSemPluginManagerService:Lcom/android/server/sepunion/SemPluginManagerService;

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemPluginManagerService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFrsServiceImpl()Lcom/android/server/sepunion/friends/FrsServiceImpl;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getSemPluginManagerService()Lcom/android/server/sepunion/SemPluginManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mSemPluginManagerService:Lcom/android/server/sepunion/SemPluginManagerService;

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mSemPluginManagerService:Lcom/android/server/sepunion/SemPluginManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mSemPluginManagerService:Lcom/android/server/sepunion/SemPluginManagerService;

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemPluginManagerService;->getFrsServiceImpl()Lcom/android/server/sepunion/friends/FrsServiceImpl;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSemPluginManagerService()Lcom/android/server/sepunion/SemPluginManagerService;
    .locals 1

    const-string/jumbo v0, "plugin"

    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemPluginManagerService;

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mSemPluginManagerService:Lcom/android/server/sepunion/SemPluginManagerService;

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mSemPluginManagerService:Lcom/android/server/sepunion/SemPluginManagerService;

    return-object v0
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->addLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p4, :cond_1

    const-string v0, "cover"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_3

    const-string v0, "friends"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getFrsServiceImpl()Lcom/android/server/sepunion/friends/FrsServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    :cond_2
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getFrsServiceImpl()Lcom/android/server/sepunion/friends/FrsServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method public getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method public getCoverSwitchState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchState()Z

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getVersion()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getFrsServiceImpl()Lcom/android/server/sepunion/friends/FrsServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    return-void
.end method

.method public isCoverManagerDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->isCoverManagerDisabled()Z

    move-result v0

    return v0
.end method

.method public onCoverAppCovered(Z)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onCoverAppCovered(Z)I

    move-result v0

    return v0
.end method

.method public readTouchChannelCountForExternal()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->readTouchChannelCountForExternal()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->removeLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public sendDataToCover(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendDataToCover(I[B)V

    return-void
.end method

.method public sendDataToNfcLedCover(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendDataToNfcLedCover(I[B)V

    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendPowerKeyToCover()V

    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendSystemEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTouchRegionForExternal([BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendTouchRegionForExternal([BII)V

    return-void
.end method

.method public setCoverPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->setCoverPackage(Ljava/lang/String;)V

    return-void
.end method

.method public setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public unregisterCallbackForExternal(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->unregisterCallbackForExternal(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method
