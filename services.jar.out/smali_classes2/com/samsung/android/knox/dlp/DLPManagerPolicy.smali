.class public Lcom/samsung/android/knox/dlp/DLPManagerPolicy;
.super Ljava/lang/Object;
.source "DLPManagerPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLP_DLPManagerPolicy"

.field private static mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object v0, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dlp/DLPManagerPolicy;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v1, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/dlp/DLPManagerPolicy;
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    if-nez v0, :cond_0

    const-string v0, "enterprise_dlp_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    const-string v0, "DLP_DLPManagerPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService: DLP_SERVICE : enterprise_dlp_service mDLPManagerPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    return-object v0
.end method


# virtual methods
.method public addPackagesToAllowDLPWhiteList(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DLPManagerPolicy.addPackagesToAllowDLPWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const-string v1, "DLP_DLPManagerPolicy"

    const-string v3, "addPackagesToAllowDLPWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->addPackagesToAllowDLPWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v3

    const-string v4, "DLP_DLPManagerPolicy"

    const-string v5, "Exception in addPackagesToAllowDLPWhiteList"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method public getDLPConfig()Landroid/os/Bundle;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DLPManagerPolicy.getDLPConfig"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const-string v1, "DLP_DLPManagerPolicy"

    const-string v3, "getDLPConfig : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    const-string v4, "DLP_DLPManagerPolicy"

    const-string v5, "Exception in getDLPConfig"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method public getPackagesFromAllowDLPWhiteList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DLPManagerPolicy.getPackagesFromAllowDLPWhiteList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const-string v1, "DLP_DLPManagerPolicy"

    const-string v3, "getPackagesFromAllowDLPWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->getPackagesFromAllowDLPWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    const-string v4, "DLP_DLPManagerPolicy"

    const-string v5, "Exception in getPackagesFromAllowDLPWhiteList"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method public removeDLPFiles(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DLPManagerPolicy.removeDLPFiles"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const-string v1, "DLP_DLPManagerPolicy"

    const-string/jumbo v3, "removeDLPFiles : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->removeDLPFiles(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v3

    const-string v4, "DLP_DLPManagerPolicy"

    const-string v5, "Exception in removeDLPFiles"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method public removePackagesFromAllowDLPWhiteList(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DLPManagerPolicy.removePackagesFromAllowDLPWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const-string v1, "DLP_DLPManagerPolicy"

    const-string/jumbo v3, "removePackagesFromAllowDLPWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->removePackagesFromAllowDLPWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v3

    const-string v4, "DLP_DLPManagerPolicy"

    const-string v5, "Exception in removePackagesFromAllowDLPWhiteList"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method public setDLPConfig(Landroid/os/Bundle;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DLPManagerPolicy.setDLPConfig"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const-string v1, "DLP_DLPManagerPolicy"

    const-string/jumbo v3, "setDLPConfig : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->setDLPConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v3

    const-string v4, "DLP_DLPManagerPolicy"

    const-string v5, "Exception in setDLPConfig"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2
.end method
