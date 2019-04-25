.class public Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;
.super Ljava/lang/Object;
.source "SdpAuthenticator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpAuthenticator"

.field private static sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;


# instance fields
.field private mSdpService:Landroid/os/ISdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

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

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    invoke-direct {v1}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;
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
.method public onBiometricsAuthenticated(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0xd

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1}, Landroid/os/ISdpManagerService;->onBiometricsAuthenticated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpAuthenticator"

    const-string v3, "Failed to call SDP API"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
.end method

.method public onDeviceOwnerLocked(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0xd

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    invoke-interface {v1, p1}, Landroid/os/ISdpManagerService;->onDeviceOwnerLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdpAuthenticator"

    const-string v3, "Failed to call SDP API"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1
.end method
