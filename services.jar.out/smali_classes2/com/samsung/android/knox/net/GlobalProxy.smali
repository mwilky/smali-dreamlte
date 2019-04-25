.class public Lcom/samsung/android/knox/net/GlobalProxy;
.super Ljava/lang/Object;
.source "GlobalProxy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/IMiscPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GlobalProxy"

    sput-object v0, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private canUsePacOrAuthConfig()Z
    .locals 2

    const-string v0, "24"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private getService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object v0
.end method

.method private isUsingPacOrAuthConfig(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    move-result v2

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "GlobalProxy.getGlobalProxy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IMiscPolicy;->getGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException at method getGlobalProxy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/IMiscPolicy;->clearGlobalProxyEnableEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException at method setGlobalProxy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/GlobalProxy;->isUsingPacOrAuthConfig(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->canUsePacOrAuthConfig()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "GlobalProxy.setGlobalProxy"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v1

    if-gez v1, :cond_3

    sget-object v1, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    const-string v2, "inValid proxyPort"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/IMiscPolicy;->setGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException at method setGlobalProxy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method
