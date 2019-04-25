.class Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;
.super Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SViewCoverBaseServiceInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    move-result-object v0

    return-object v0
.end method

.method onCoverAppStateChanged(Z)I
    .locals 3

    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_0

    const-string v0, "CoverServiceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverAppStateChanged : covered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onCoverAppCovered(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method systemReady()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_0

    const-string v0, "CoverServiceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v0}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_0

    const-string v0, "CoverServiceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCoverState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
