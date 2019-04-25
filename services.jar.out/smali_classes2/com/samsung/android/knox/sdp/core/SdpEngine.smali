.class public Lcom/samsung/android/knox/sdp/core/SdpEngine;
.super Ljava/lang/Object;
.source "SdpEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpEngine"

.field private static _instance:Lcom/samsung/android/knox/sdp/core/SdpEngine;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mSdpService:Landroid/os/ISdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->_instance:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    return-void
.end method

.method private static enforcePermission()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0x63

    const-string/jumbo v1, "sdp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/os/ISdpManagerService;->isLicensed()I

    move-result v2

    move v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 v3, -0x9

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "SdpEngine"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/sdp/core/SdpEngine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/sdp/core/SdpEngine;->enforcePermission()V

    sget-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->_instance:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngine;

    invoke-direct {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngine;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->_instance:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->_instance:Lcom/samsung/android/knox/sdp/core/SdpEngine;

    return-object v0
.end method


# virtual methods
.method public addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0xd

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/ISdpManagerService;->addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call addEngine"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngine failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
.end method

.method public allow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0xd

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1, p2}, Landroid/os/ISdpManagerService;->allow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call allow"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allow failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
.end method

.method public disallow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0xd

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1, p2}, Landroid/os/ISdpManagerService;->disallow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call disallow"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disallow failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, -0x5

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1}, Landroid/os/ISdpManagerService;->exists(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call exists"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public lock(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0xd

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1}, Landroid/os/ISdpManagerService;->lock(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call lock"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
.end method

.method public migrate(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0xd

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1}, Landroid/os/ISdpManagerService;->migrate(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call migrate"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "migrate failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
.end method

.method public removeEngine(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0xd

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1}, Landroid/os/ISdpManagerService;->removeEngine(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call removeEngine"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEngine failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0xd

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/ISdpManagerService;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call resetPassword"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetPassword failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0xd

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1, p2}, Landroid/os/ISdpManagerService;->setPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call setPassword"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPassword failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0xd

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngine;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1, p2}, Landroid/os/ISdpManagerService;->unlock(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpEngine"

    const-string v3, "Failed to call unlock"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "SdpEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlock failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 v2, -0x8

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(II)V

    throw v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1

    :cond_2
    return-void
.end method
