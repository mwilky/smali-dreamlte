.class public Lcom/samsung/android/knox/location/LocationPolicy;
.super Ljava/lang/Object;
.source "LocationPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/location/ILocationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LocationPolicy"

    sput-object v0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/location/ILocationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    if-nez v0, :cond_0

    const-string v0, "location_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/location/ILocationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    return-object v0
.end method


# virtual methods
.method public getAllLocationProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LocationPolicy.getAllLocationProviders"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v1, ">>> getAllLocationProviders"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/knox/location/LocationPolicy;->getService()Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/location/ILocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getAllLocationProviders - Failed talking with Location service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public getLocationProviderState(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/location/LocationPolicy;->getService()Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/location/ILocationPolicy;->getIndividualLocationProvider(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIndividualLocationPolicy - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGPSOn()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v1, ">>> isGPSOn"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/location/LocationPolicy;->getService()Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/location/ILocationPolicy;->isGPSOn(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "isGPSOn - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGPSStateChangeAllowed()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v1, ">>> isGPSStateChangeAllowed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/location/LocationPolicy;->getService()Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/location/ILocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "isGPSStateChangeAllowed - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/location/LocationPolicy;->getService()Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/location/ILocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "isLocationPolicyEnabled - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setGPSStateChangeAllowed(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LocationPolicy.setGPSStateChangeAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v1, ">>> setGPSStateChangeAllowed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/location/LocationPolicy;->getService()Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/location/ILocationPolicy;->setGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setGPSStateChangeAllowed - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setLocationProviderState(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LocationPolicy.setLocationProviderState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/location/LocationPolicy;->getService()Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/location/ILocationPolicy;->setIndividualLocationProvider(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setLocationProviderState - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startGPS(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LocationPolicy.startGPS"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v1, ">>> startGPS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/location/LocationPolicy;->getService()Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/location/ILocationPolicy;->startGPS(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGPS - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
