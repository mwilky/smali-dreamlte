.class public Lcom/samsung/android/knox/multiuser/MultiUserManager;
.super Ljava/lang/Object;
.source "MultiUserManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiUserManager"

.field private static gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

.field private static isMuSupportInfoReady:Z

.field private static isMuSupported:Z

.field private static mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupported:Z

    sput-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupportInfoReady:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "multi_user_manager_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iput-object p2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getMuSupportInfo()Z

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method private enforceMultiUserSupport()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getMuSupportInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This device does not support multiple users"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized getMuSupportInfo()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupportInfoReady:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v1, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupported:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupportInfoReady:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MultiUserManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed talking with multi user service. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupported:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "multi_user_manager_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    return-object v0
.end method


# virtual methods
.method public allowMultipleUsers(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.allowMultipleUsers"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->allowMultipleUsers(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Not Supported in this device"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public allowUserCreation(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.allowUserCreation"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->allowUserCreation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public allowUserRemoval(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.allowUserRemoval"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->allowUserRemoval(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public createUser(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.createUser"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->createUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public getUsers()[I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.getUsers"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->getUsers(Lcom/samsung/android/knox/ContextInfo;)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public isUserCreationAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isUserCreationAllowed(Z)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public isUserRemovalAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isUserRemovalAllowed(Z)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public multipleUsersAllowed()Z
    .locals 2

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not Supported in this device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public multipleUsersAllowed(Z)Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public multipleUsersSupported()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v1, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MultiUserManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed talking with multi user service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeUser(I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.removeUser"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->removeUser(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method
