.class public Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;
.super Ljava/lang/Object;
.source "GenericSSO.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GenericSSO"

.field private static mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mSync:Ljava/lang/Object;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mSync:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    if-nez v0, :cond_0

    const-string v0, "genericssoservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/sso/common/IGenericSSO$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    return-object v0
.end method


# virtual methods
.method public getAuthenticationConfig()Lcom/samsung/android/knox/container/AuthenticationConfig;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "GenericSSO"

    const-string v1, "Called getAuthenticationConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->getAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in getAuthenticationConfig"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthenticationConfigForContainer(I)Lcom/samsung/android/knox/container/AuthenticationConfig;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "GenericSSO"

    const-string v1, "Called getAuthenticationConfigForContainer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->getAuthenticationConfigForContainer(I)Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in getAuthenticationConfigForContainer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNetworkAuthenticationEnforced()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "GenericSSO"

    const-string v2, "Called isNetworkAuthenticationenforced"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->isNetworkAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GenericSSO"

    const-string v3, "Exception in isNetworkAuthenticationenforced"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public performUserAuthentication(Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "GenericSSO"

    const-string v1, "Called performUserAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->performUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in performUserAuthentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetPassword()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "GenericSSO"

    const-string v2, "Called resetpassword"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->resetPassword(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GenericSSO"

    const-string v3, "Exception in resetpassword"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public setAuthenticationConfig(Lcom/samsung/android/knox/container/AuthenticationConfig;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "GenericSSO"

    const-string v1, "Called setEnterpriseIDAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->setAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in setEnterpriseIDAuthentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setAuthenticationConfig(Lcom/samsung/android/knox/container/AuthenticationConfig;I)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "GenericSSO"

    const-string v1, "Called setEnterpriseIDAuthenticationConfigForUser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->setAuthenticationConfigForContainer(Lcom/samsung/android/knox/container/AuthenticationConfig;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in setEnterpriseIDAuthentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setGenericSSOConfig(IILcom/samsung/android/knox/sso/config/GenericSSOConfig;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "GenericSSO"

    const-string v1, "Called setGenericSSOConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->setGenericSSOConfig(IILcom/samsung/android/knox/sso/config/GenericSSOConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in setGenericSSOConfig"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/container/AuthenticationConfig;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "GenericSSO"

    const-string v2, "Called setUpdatedAuthenticationConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GenericSSO"

    const-string v3, "Exception in setUpdatedAuthenticationConfig"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public validateUserAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "GenericSSO"

    const-string v1, "Called validateUserAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->validateUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in validateUserAuthentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public verifyUserAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "GenericSSO"

    const-string v1, "Called verifyUserAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->verifyUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in verifyUserAuthentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
