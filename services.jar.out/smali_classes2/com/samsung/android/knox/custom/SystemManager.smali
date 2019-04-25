.class public Lcom/samsung/android/knox/custom/SystemManager;
.super Ljava/lang/Object;
.source "SystemManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemManager"

.field private static sContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private static sSystemManager:Lcom/samsung/android/knox/custom/SystemManager;


# instance fields
.field private mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/custom/SystemManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/custom/SystemManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/SystemManager;->sSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/custom/SystemManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/custom/SystemManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/SystemManager;->sSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/custom/SystemManager;->sSystemManager:Lcom/samsung/android/knox/custom/SystemManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object v0
.end method


# virtual methods
.method public addAutoCallNumber(Ljava/lang/String;II)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.addAutoCallNumber"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addAutoCallNumber(Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public addPackagesToUltraPowerSaving(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.addPackagesToUltraPowerSaving"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addPackagesToUltraPowerSaving(Ljava/util/List;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public addShortcut(IIILjava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.removeWidget"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addShortcut(IIILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public addShortcutToHomeScreen(Lcom/samsung/android/knox/custom/ShortcutItem;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.addShortcutToHomeScreen"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addShortcutToHomeScreen(Lcom/samsung/android/knox/custom/ShortcutItem;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public addWidget(IIIIILjava/lang/String;)I
    .locals 9

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.addWidget"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addWidget(IIIIILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public addWidgetToHomeScreen(Lcom/samsung/android/knox/custom/WidgetItem;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.addWidgetToHomeScreen"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->laterSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addWidgetToHomeScreen(Lcom/samsung/android/knox/custom/WidgetItem;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1

    :cond_2
    :goto_0
    const/4 v1, -0x6

    return v1
.end method

.method public clearAnimation(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.clearAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->clearAnimation(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public copyAdbLog(I)I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method public deleteHomeScreenPage(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.deleteHomeScreenPage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->deleteHomeScreenPage(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public deleteMessagesByIds(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x6

    return v0
.end method

.method public deleteMessagesByNumber(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method public dialEmergencyNumber(Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.dialEmergencyNumber"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->dialEmergencyNumber(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getAccessibilitySettingsItems()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAccessibilitySettingsItems()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAppBlockDownloadNamespaces()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppBlockDownloadState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAppsButtonState()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppsButtonState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getAutoCallNumberAnswerMode(Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoCallNumberDelay(Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoCallNumberList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoCallPickupState()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoRotationState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoRotationState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallScreenDisabledItems()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChargerConnectionSoundEnabledState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getChargerConnectionSoundEnabledState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCheckCoverPopupState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCustomOperatorName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSpeakerEnabledState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDeviceSpeakerEnabledState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayMirroringState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDisplayMirroringState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExcludedMessagesNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtendedCallInfoState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExtendedCallInfoState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFavoriteApp(I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getFavoriteApp(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFavoriteAppsMaxCount()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getFavoriteAppsMaxCount()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getForceAutoShutDownState()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getForceAutoShutDownState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getForceAutoStartUpState()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getForceAutoStartUpState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGearNotificationState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getHardKeyIntentState()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHomeScreenMode()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeScreenMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getInfraredState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getKeyboardMode()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getKeyboardMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyboardMode(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getKeyboardModeOverriden(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLcdBacklightState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLcdBacklightState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLockScreenHiddenItems()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLockScreenOverrideMode()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenOverrideMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLockScreenShortcut(I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenShortcut(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    const-string v0, "02:00:00:00:00:00"

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getMacAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public getMessageIdsMarkedToDelete()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileNetworkType()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getMobileNetworkType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getParentScreen(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CDM_SCREEN_NUMBER:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerDialogCustomItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPowerDialogCustomItemsState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPowerMenuLockedState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getQuickPanelButtons()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getQuickPanelButtons()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x7

    return v0
.end method

.method public getQuickPanelEditMode()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getQuickPanelEditMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getQuickPanelItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getQuickPanelItems()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getRecentLongPressActivity()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecentLongPressMode()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getScreenOffOnHomeLongPressState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenOffOnStatusBarDoubleTapState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenTimeout()I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenTimeout()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    div-int/lit16 v1, v0, 0x3e8

    return v1
.end method

.method public getSensorDisabled()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarClockState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarClockState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getStatusBarIconsState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarIconsState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getStatusBarMode()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getStatusBarNotificationsState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarNotificationsState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusBarTextScrollWidth()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextScrollWidth()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTextSize()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTextStyle()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemSoundsEnabledState()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSystemSoundsEnabledState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getToastEnabledState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getToastGravity()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getToastGravityEnabledState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getToastGravityXOffset()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getToastGravityYOffset()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getToastShowPackageNameState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTorchOnVolumeButtonsState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getTorchOnVolumeButtonsState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUltraPowerSavingPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnlockSimOnBootState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUnlockSimOnBootState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUnlockSimPin()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsbConnectionType()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUsbMassStorageState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getUsbNetAddress(I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsbNetState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUsbNetStateInternal()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetStateInternal()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUserInactivityTimeout()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUserInactivityTimeout()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getVibrationIntensity(I)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVibrationIntensity(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getVolumeButtonRotationState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVolumeControlStream()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVolumePanelEnabledState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getWifiAutoSwitchDelay()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchDelay()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/16 v0, 0x14

    return v0
.end method

.method public getWifiAutoSwitchState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiAutoSwitchThreshold()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchThreshold()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/16 v0, -0xc8

    return v0
.end method

.method public getWifiConnectedMessageState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getWifiHotspotEnabledState()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiHotspotEnabledState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getZeroPageState()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getZeroPageState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SystemManager"

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public powerOff()I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.powerOff"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->powerOff()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public removeAutoCallNumber(Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.removeAutoCallNumber"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeAutoCallNumber(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public removeFavoriteApp(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.removeFavoriteApp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeFavoriteApp(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public removeKnoxCustomShortcutsFromHomeScreen()I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.removeKnoxCustomShortcutsFromHomeScreen"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeKnoxCustomShortcutsFromHomeScreen()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public removeLockScreen()I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.removeLockScreen"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, -0x6

    return v0
.end method

.method public removePackagesFromUltraPowerSaving(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.removePackagesFromUltraPowerSaving"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removePackagesFromUltraPowerSaving(Ljava/util/List;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public removeShortcut(Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.removeShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeShortcut(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public removeShortcutFromHomeScreen(ILjava/lang/String;I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.removeShortcutFromHomeScreen"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeShortcutFromHomeScreen(ILjava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public removeWidget(Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.removeWidget"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeWidget(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public removeWidgetFromHomeScreen(Landroid/content/Intent;II)I
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.removeWidgetFromHomeScreen"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->laterSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v2, v1, p2, p3, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeWidgetFromHomeScreen(Ljava/lang/String;IILandroid/content/Intent;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "SystemManager"

    const-string v4, "Failed talking with KnoxCustomManager service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 v2, -0x1

    return v2

    :cond_3
    :goto_0
    const/4 v1, -0x6

    return v1
.end method

.method public sendDtmfTone(CI)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.sendDtmfTone"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->sendDtmfTone(CI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setAccessibilitySettingsItems(II)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setAccessibilitySettingsItems"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAccessibilitySettingsItems(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setAppBlockDownloadNamespaces(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setAppBlockDownloadNamespaces"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAppBlockDownloadNamespaces(Ljava/util/List;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setAppBlockDownloadState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setAppBlockDownloadState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAppBlockDownloadState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setAppsButtonState(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setAppsButtonState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAppsButtonState(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setAudioVolume(II)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setAudioVolume"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAudioVolume(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setAutoCallPickupState(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setAutoCallPickupState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAutoCallPickupState(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setAutoRotationState(ZI)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setAutoRotationState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAutoRotationState(ZI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setBatteryLevelColourItem"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setBootAnimation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method public setBootingAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setBootingAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBootingAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setBrowserHomepage(Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setBrowserHomepage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBrowserHomepage(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setCallScreenDisabledItems(ZI)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setCallScreenDisabledItems"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setCallScreenDisabledItems(ZI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setChargerConnectionSoundEnabledState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setChargerConnectionSoundEnabledState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setChargerConnectionSoundEnabledState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setCheckCoverPopupState(Z)I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method public setCustomOperatorName(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method public setDeviceSpeakerEnabledState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setDeviceSpeakerEnabledState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDeviceSpeakerEnabledState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setDisplayMirroringState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setDisplayMirroringState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDisplayMirroringState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setExcludedMessagesNotifications(ZLjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x6

    return v0
.end method

.method public setExtendedCallInfoState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setExtendedCallInfoState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setExtendedCallInfoState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setFavoriteApp(Ljava/lang/String;I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setFavoriteApp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setFavoriteApp(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setForceAutoShutDownState(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setForceAutoShutDownState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_8:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForceAutoShutDownState(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setForceAutoStartUpState(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setForceAutoStartUpState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForceAutoStartUpState(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setGearNotificationState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setGearNotificationState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setGearNotificationState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setHardKeyIntentState(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setHardKeyIntentState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_0:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setHomeScreenMode(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setHomeScreenMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_0:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHomeScreenMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setInfraredState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setInfraredState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInfraredState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setKeyboardMode(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setKeyboardMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKeyboardMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setLcdBacklightState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setLcdBacklightState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLcdBacklightState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setLockScreenHiddenItems(ZI)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setLockScreenHiddenItems"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockScreenHiddenItems(ZI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setLockScreenOverrideMode(I)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setLockScreenOverrideMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, -0x6

    return v0
.end method

.method public setLockScreenShortcut(ILjava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setLockScreenShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockScreenShortcut(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setLockscreenWallpaper(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method public setMobileNetworkType(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setMobileNetworkType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMobileNetworkType(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setMultiWindowState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setMultiWindowState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMultiWindowState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setPowerDialogCustomItems(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setPowerDialogCustomItems"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogCustomItems(Ljava/util/List;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setPowerDialogCustomItemsState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setPowerDialogCustomItemsState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogCustomItemsState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setPowerMenuLockedState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setPowerMenuLockedState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerMenuLockedState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setQuickPanelButtons(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setQuickPanelButtons"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelButtons(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setQuickPanelEditMode(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setQuickPanelEditMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelEditMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setQuickPanelItems(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setQuickPanelItems"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelItems(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method public setRecentLongPressActivity(Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setRecentLongPressActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setRecentLongPressActivity(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setRecentLongPressMode(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setRecentLongPressMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setRecentLongPressMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setScreenOffOnHomeLongPressState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setScreenOffOnHomeLongPressState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenOffOnHomeLongPressState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setScreenOffOnStatusBarDoubleTapState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setScreenOffOnStatusBarDoubleTapState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenOffOnStatusBarDoubleTapState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setScreenTimeout(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setScreenTimeout"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenTimeout(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setSensorDisabled(ZI)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setSensorDisabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSensorDisabled(ZI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setShutdownAnimation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method public setShuttingDownAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setShuttingDownAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setShuttingDownAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setStatusBarClockState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setStatusBarClockState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarClockState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setStatusBarIconsState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setStatusBarIconsState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarIconsState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setStatusBarMode(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setStatusBarMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setStatusBarNotificationsState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setStatusBarNotificationsState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarNotificationsState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setStatusBarText(Ljava/lang/String;II)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setStatusBarText"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarText(Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setStatusBarTextScrollWidth(Ljava/lang/String;III)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setStatusBarTextScrollWidth"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarTextScrollWidth(Ljava/lang/String;III)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setSystemRingtone(ILjava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setSystemRingtone"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemRingtone(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setSystemSoundsEnabledState(II)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setSystemSoundsEnabledState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemSoundsEnabledState(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setSystemSoundsSilent()I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setSystemSoundsSilent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemSoundsSilent()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setToastEnabledState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setToastEnabledState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastEnabledState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setToastGravity(III)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setToastGravity"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastGravity(III)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setToastGravityEnabledState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setToastGravityEnabledState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastGravityEnabledState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setToastShowPackageNameState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setToastShowPackageNameState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastShowPackageNameState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setTorchOnVolumeButtonsState(Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setTorchOnVolumeButtonsState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, -0x6

    return v0
.end method

.method public setUnlockSimOnBootState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setUnlockSimOnBootState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUnlockSimOnBootState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setUnlockSimPin(Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setUnlockSimPin"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUnlockSimPin(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setUsbConnectionType(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setUsbConnectionType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbConnectionType(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setUsbMassStorageState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setUsbMassStorageState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbMassStorageState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setUsbNetAddresses"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setUsbNetState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setUsbNetState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbNetState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setUserInactivityTimeout(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setUserInactivityTimeout"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUserInactivityTimeout(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setVibrationIntensity(II)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setVibrationIntensity"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVibrationIntensity(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setVolumeButtonRotationState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setVolumeButtonRotationState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeButtonRotationState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setVolumeControlStream(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setVolumeControlStream"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeControlStream(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setVolumePanelEnabledState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setVolumePanelEnabledState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumePanelEnabledState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setWifiAutoSwitchDelay(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setWifiAutoSwitchDelay"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiAutoSwitchDelay(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setWifiAutoSwitchState(Z)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setWifiAutoSwitchState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiAutoSwitchState(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setWifiAutoSwitchThreshold(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setWifiAutoSwitchThreshold"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiAutoSwitchThreshold(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setWifiConnectedMessageState(Z)I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method public setWifiHotspotEnabledState(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setWifiHotspotEnabledState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiHotspotEnabledState(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public setZeroPageState(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SystemManager.setZeroPageState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setZeroPageState(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SystemManager"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, -0x1

    return v1
.end method
