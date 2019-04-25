.class Lcom/android/server/cover/CoverManagerServiceImpl;
.super Lcom/samsung/android/cover/ICoverManager$Stub;
.source "CoverManagerServiceImpl.java"


# static fields
.field private static final COVER_ABSENT:I = -0x1

.field private static final SERVICE_VERSION:I = 0x10b0000


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverState:Lcom/samsung/android/cover/CoverState;

.field private final mCoverStateLock:Ljava/lang/Object;

.field private mSystemReady:Z

.field private mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->addLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    const-string v1, "cover"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method public getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method public getCoverSwitchState()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->getCoverSwitchState()Z

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/high16 v0, 0x10b0000

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->getVersion()I

    move-result v0

    return v0
.end method

.method public isCoverManagerDisabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->isCoverManagerDisabled()Z

    move-result v0

    return v0
.end method

.method public onCoverAppCovered(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->onCoverAppCovered(Z)I

    move-result v0

    return v0
.end method

.method public readTouchChannelCountForExternal()Landroid/graphics/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->readTouchChannelCountForExternal()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->removeLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public sendDataToCover(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->sendDataToCover(I[B)V

    return-void
.end method

.method public sendDataToNfcLedCover(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->sendDataToNfcLedCover(I[B)V

    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->sendPowerKeyToCover()V

    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->sendSystemEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method public sendTouchRegionForExternal([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->sendTouchRegionForExternal([BII)V

    return-void
.end method

.method public setCoverPackage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->setCoverPackage(Ljava/lang/String;)V

    return-void
.end method

.method public setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method systemRunning()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    :cond_0
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public unregisterCallbackForExternal(Landroid/os/IBinder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->unregisterCallbackForExternal(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method
