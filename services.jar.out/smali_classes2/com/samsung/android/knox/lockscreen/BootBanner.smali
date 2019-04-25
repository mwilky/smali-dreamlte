.class public Lcom/samsung/android/knox/lockscreen/BootBanner;
.super Ljava/lang/Object;
.source "BootBanner.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/ISecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BootBanner"

    sput-object v0, Lcom/samsung/android/knox/lockscreen/BootBanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/ISecurityPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mService:Lcom/samsung/android/knox/ISecurityPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "security_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mService:Lcom/samsung/android/knox/ISecurityPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mService:Lcom/samsung/android/knox/ISecurityPolicy;

    return-object v0
.end method


# virtual methods
.method public enableRebootBanner(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BootBanner.enableRebootBanner"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/BootBanner;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->enableRebootBanner(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/lockscreen/BootBanner;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableRebootBanner(ZLjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BootBanner.enableRebootBanner"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/BootBanner;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/ISecurityPolicy;->enableRebootBannerWithText(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/lockscreen/BootBanner;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceLastAccessDate()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/BootBanner;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ISecurityPolicy;->getDeviceLastAccessDate(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/lockscreen/BootBanner;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRebootBannerText()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/BootBanner;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ISecurityPolicy;->getRebootBannerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/lockscreen/BootBanner;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDodBannerVisible()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/BootBanner;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ISecurityPolicy;->isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/lockscreen/BootBanner;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRebootBannerEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/BootBanner;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ISecurityPolicy;->isRebootBannerEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/lockscreen/BootBanner;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyguardLaunched()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/BootBanner;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mService:Lcom/samsung/android/knox/ISecurityPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/ISecurityPolicy;->onKeyguardLaunched()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/lockscreen/BootBanner;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setDeviceLastAccessDate(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/BootBanner;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->setDeviceLastAccessDate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/lockscreen/BootBanner;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDodBannerVisibleStatus(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/BootBanner;->getService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/BootBanner;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/lockscreen/BootBanner;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
