.class public Lcom/samsung/android/knox/devicesecurity/APMPolicy;
.super Ljava/lang/Object;
.source "APMPolicy.java"


# static fields
.field public static final APM_DBG:Z

.field public static final APM_ENFORCE_NONE:I = 0x0

.field public static final APM_ENFORCE_OFF:I = 0x1

.field public static final APM_ENFORCE_ON:I = 0x2

.field public static final APM_ENFORCING:I = 0x3

.field public static final APM_FAILED:I = -0x1

.field public static final APM_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "APMPolicy"

.field private static mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private seamService:Lcom/samsung/android/knox/seams/ISEAMS;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/devicesecurity/APMPolicy;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    invoke-direct {v2, v1}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    sput-object v2, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSEAMService()Lcom/samsung/android/knox/seams/ISEAMS;
    .locals 1

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->seamService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->seamService:Lcom/samsung/android/knox/seams/ISEAMS;

    return-object v0
.end method


# virtual methods
.method public APMSwitchChanged(IZ)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->getSEAMService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->seamService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/seams/ISEAMS;->APMSwitchChanged(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APMPolicy"

    const-string v2, "Failed to check APMSwitchChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addAppToAPMWhiteList(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->getSEAMService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->seamService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->addAppToAPMWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APMPolicy"

    const-string v2, "Failed to call addAppToAPMWhiteList"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAPMStatus()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "APMPolicy.getAPMStatus"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->getSEAMService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->seamService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/seams/ISEAMS;->getAPMStatus(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APMPolicy"

    const-string v2, "Failed to call getAPMStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAPMStatusAsUser(I)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->getSEAMService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->seamService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getAPMStatusAsUser(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APMPolicy"

    const-string v2, "Failed to check getAPMStatusAsUser"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAPMWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->getSEAMService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->seamService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->getAPMWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "APMPolicy"

    const-string v2, "Failed to check getAPMWhiteList"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAPMEnabled(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->getSEAMService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->seamService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->isAPMEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APMPolicy"

    const-string v2, "Failed to check isAPMEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAPMWhiteListAPP(Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->getSEAMService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->seamService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->isAPMWhiteListAPP(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APMPolicy"

    const-string v2, "Failed to check APMWhiteListAPP"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAppFromAPMWhiteList(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->getSEAMService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->seamService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->removeAppFromAPMWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APMPolicy"

    const-string v2, "Failed to call removeAppFromAPMWhiteList"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setAPMStatus(I)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "APMPolicy.setAPMStatus"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->getSEAMService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->seamService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->setAPMStatus(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APMPolicy"

    const-string v2, "Failed to call setAPMStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setAPMStatusAsUser(II)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->getSEAMService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->seamService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/seams/ISEAMS;->setAPMStatusAsUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APMPolicy"

    const-string v2, "Failed to check setAPMStatusAsUser"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
