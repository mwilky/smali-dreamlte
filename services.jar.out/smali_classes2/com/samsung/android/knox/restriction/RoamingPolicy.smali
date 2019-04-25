.class public Lcom/samsung/android/knox/restriction/RoamingPolicy;
.super Ljava/lang/Object;
.source "RoamingPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RoamingPolicy"

    sput-object v0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "roaming_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    return-object v0
.end method


# virtual methods
.method public isRoamingDataEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isRoamingPushEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isRoamingSyncEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isRoamingVoiceCallsEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setRoamingData(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RoamingPolicy.setRoamingData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->setRoamingData(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setRoamingPush(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RoamingPolicy.setRoamingPush"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->setRoamingPush(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setRoamingSync(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RoamingPolicy.setRoamingSync"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->setRoamingSync(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setRoamingVoiceCalls(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RoamingPolicy.setRoamingVoiceCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->setRoamingVoiceCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
