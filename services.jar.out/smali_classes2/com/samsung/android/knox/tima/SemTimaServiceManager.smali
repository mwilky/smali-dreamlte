.class public Lcom/samsung/android/knox/tima/SemTimaServiceManager;
.super Ljava/lang/Object;
.source "SemTimaServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemTimaServiceManager"


# instance fields
.field private mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SemTimaServiceManager"

    const-string v1, "SemTimaServiceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/SemTimaServiceManager;->mTimaService:Landroid/service/tima/ITimaService;

    iget-object v0, p0, Lcom/samsung/android/knox/tima/SemTimaServiceManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v0, :cond_0

    const-string v0, "SemTimaServiceManager"

    const-string v1, "failed to get Tima Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getTimaVersion()Ljava/lang/String;
    .locals 4

    const-string v0, "SemTimaServiceManager"

    const-string v1, "getTimaVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/tima/SemTimaServiceManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v0, :cond_0

    const-string v0, "SemTimaServiceManager"

    const-string v1, "failed to et Tima Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/tima/SemTimaServiceManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v0}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SemTimaServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "SemTimaServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    return-object v1
.end method
