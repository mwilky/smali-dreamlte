.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.super Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;
.source "NetworkAnalyticsService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;
    }
.end annotation


# static fields
.field private static final BIND_AVAILABLE_PROCEED:I = 0x0

.field private static final BIND_NOT_OK:I = -0x1

.field private static final BIND_OK:I = 0x1

.field public static final DBG:Z

.field private static final NPA_VERSION_STRING:Ljava/lang/String; = "3.3_0"

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:Service"

.field private static mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

.field private static mDeviceUniqueId:Ljava/lang/String;


# instance fields
.field private mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

.field private mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

.field private mContext:Landroid/content/Context;

.field private mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field private mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const-string v0, "NetworkAnalytics:Service"

    const-string v1, "Adding network analytics service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private _activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getBinderForPackage(Ljava/lang/String;)Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getJsonString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_activateNAPClient: activation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    if-eqz v0, :cond_a

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v5, p2, :cond_5

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getDeviceUniqueKey()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_activateNAPClient: Device unique Key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v0, v1, p3, v6}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onActivateProfile(Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    move v4, v7

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_4

    const-string v7, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onActivateProfile: returnValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_1

    :cond_5
    iget-object v6, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-interface {v0, v6, p3}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onDeactivateProfile(Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "NetworkAnalytics:Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onDeactivateProfile: returnValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "NetworkAnalytics:Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_activateNAPClient: onActivate from client is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v6, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    if-eqz v6, :cond_8

    invoke-interface {v6, v4}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    goto :goto_2

    :goto_1
    nop

    const-string v7, "NetworkAnalytics:Service"

    const-string v8, "_activateNAPClient: Remote Exception"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-nez v4, :cond_9

    move v3, v5

    nop

    :cond_9
    return v3

    :cond_a
    :goto_3
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_b

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_activateNAPClient: Null values found. INetworkAnalyticsService = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " or json = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v3
.end method

.method private _bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x1

    move/from16 v5, p3

    if-ne v4, v5, :cond_1c

    :try_start_0
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "NetworkAnalytics:Service"

    const-string v7, "_bindAndActivate:PROFILE_ACTIVATED: Doing bind and activate."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    invoke-direct {v6, v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v7, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-direct {v1, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindToClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)I

    move-result v10

    move v9, v10

    iget-object v10, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    const/4 v11, -0x1

    const/16 v12, -0xb

    if-ne v11, v9, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkAnalytics:Service"

    const-string v4, "_bindAndActivate:PROFILE_ACTIVATED: _bindToClient did not succeed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v10, :cond_2

    invoke-interface {v10, v12}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    :cond_2
    return-void

    :cond_3
    if-nez v9, :cond_6

    iget-object v11, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v13, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v13, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->isProfilePresentForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z

    return-void

    :cond_4
    sget-boolean v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v11, :cond_5

    const-string v11, "NetworkAnalytics:Service"

    const-string v13, "_bindAndActivate:PROFILE_ACTIVATED: Honoring previous bind."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v6, 0x0

    iget-object v11, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v13, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v13, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getServiceConnectionForPackage(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    move-result-object v11

    move-object v6, v11

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    iget-object v11, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v13, 0xbb8

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v13, v14, v15}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v11

    move v8, v11

    :goto_0
    const/4 v11, 0x0

    iput-object v11, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v8, :cond_16

    if-ltz v9, :cond_16

    sget-boolean v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v11, :cond_7

    const-string v11, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_bindAndActivate:PROFILE_ACTIVATED: _bindToClient & countdown: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z

    move-result v11

    move v7, v11

    if-nez v7, :cond_8

    return-void

    :cond_8
    const-string v11, "NetworkAnalytics:Service"

    const-string v13, "_bindAndActivate:PROFILE_ACTIVATED: Adding to data delivery"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    if-nez v11, :cond_9

    iget-object v11, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v13, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    goto :goto_1

    :cond_9
    iget-object v11, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v13, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-virtual {v11, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForUser(I)Ljava/util/List;

    move-result-object v11

    :goto_1
    if-nez v11, :cond_a

    const-string v0, "NetworkAnalytics:Service"

    const-string v4, "_bindAndActivate: no profile found for user. Not adding profile to recipient list on NetworkAnalyticsDataDelivery"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v12, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v12

    iget v15, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    if-ne v12, v15, :cond_b

    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v0

    invoke-virtual {v12, v15, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_b

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v0

    new-instance v12, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-direct {v12, v14, v6, v0}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V

    const-string v15, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string v0, "Adding the profile to the delivery list _bindAndActivate "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->addNAPDataRecipient(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)V

    :cond_b
    nop

    const/4 v4, 0x1

    const/16 v12, -0xb

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_e

    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v12

    if-gez v12, :cond_d

    const-string v13, "NetworkAnalytics:Service"

    const-string v14, "_bindAndActivate:PROFILE_ACTIVATED:Opening of character device failed."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    goto :goto_3

    :cond_e
    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v12

    if-gez v12, :cond_f

    const-string v13, "NetworkAnalytics:Service"

    const-string v14, "_bindAndActivate:PROFILE_ACTIVATED:Opening of character device failed."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    :goto_3
    nop

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v4, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v12, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v4, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v12, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-static {v12, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->addProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v4, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v4, "NetworkAnalytics:Service"

    const-string v12, "_bindAndActivate: no profile found. Not begining to record data"

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersionMismatch()I

    move-result v4

    if-gez v4, :cond_12

    const/4 v12, 0x0

    invoke-direct {v1, v0, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v13

    move v4, v13

    if-gez v4, :cond_11

    const-string v12, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_bindAndActivate: version mismatch deactivation failed for profile : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " but data collection will not happen."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v1, v13, v14, v12, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    const-string v12, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_bindAndActivate:PROFILE_ACTIVATED:Version mismatch between user and kernel space. Deactivated this profile : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const/4 v13, 0x1

    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v12

    if-nez v12, :cond_13

    const-string v13, "NetworkAnalytics:Service"

    const-string v14, "_bindAndActivate: no active profile found. Not begining to record data"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationFlowType()I

    move-result v14

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationIntervalValue()I

    move-result v15

    if-nez v14, :cond_14

    const/16 v13, 0x3c

    if-lt v15, v13, :cond_14

    const/16 v13, 0x3840

    if-gt v15, v13, :cond_14

    iget-object v13, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v13, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setIntervalValueForFlow(I)I

    move-result v13

    if-gez v13, :cond_14

    move-object/from16 v17, v0

    const-string v0, "NetworkAnalytics:Service"

    move/from16 v18, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_bindAndActivate: set interval value and deactivation failed for profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but data collection will not happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    move-object/from16 v17, v0

    move/from16 v18, v4

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->beginDataRecording(I)V

    goto :goto_4

    :cond_15
    const-string v0, "NetworkAnalytics:Service"

    const-string v4, "_bindAndActivate:PROFILE_ACTIVATED:Opening of character device failed."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    :goto_4
    if-eqz v10, :cond_1a

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_18

    const-string v0, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_bindAndActivate: callback return = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v9, :cond_17

    if-eqz v7, :cond_17

    const/4 v5, 0x1

    goto :goto_5

    :cond_17
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    if-ltz v9, :cond_19

    if-eqz v7, :cond_19

    const/4 v0, 0x0

    goto :goto_6

    :cond_19
    nop

    const/16 v0, -0xb

    :goto_6
    invoke-interface {v10, v0}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    :cond_1a
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "NetworkAnalytics:Service"

    const-string v4, "_bindAndActivate:PROFILE_ACTIVATED: bind and activate complete."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_1c
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "NetworkAnalytics:Service"

    const-string v4, "_bindAndActivate:PROFILE_NOT_ACTIVATED: Doing deactivate and unbind."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v0, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_1e

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_bindAndActivate:PROFILE_NOT_ACTIVATED: deactivate did not succeed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v5, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->removeProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->removeNAPDataRecipient(Ljava/lang/String;I)V

    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v5, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->isProfilePresentForPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_1f

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_bindAndActivate:PROFILE_NOT_ACTIVATED: Wont unbind."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void

    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getActiveProfilesNumber()I

    move-result v4

    if-gtz v4, :cond_22

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_21

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_bindAndActivate:PROFILE_NOT_ACTIVATED: Will stop data recording."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->endDataRecording()V

    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->clearHashCacheEntire()V

    :cond_22
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_23

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_bindAndActivate:PROFILE_NOT_ACTIVATED: deactivate complete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :goto_7
    nop

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_bindAndActivate Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_8
    nop

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_bindAndActivate RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23
    :goto_9
    nop

    :goto_a
    return-void
.end method

.method private _bindAndActivate(Ljava/lang/String;Z)V
    .locals 6

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_bindAndActivate:ACTION_INITIALIZE_NAP: adding profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v0

    if-nez v0, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_bindAndActivate: ERROR NAPActivationProfile is null for profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "_bindAndActivate: ERROR NAPActivationProfile is not activated. No need to bind."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v1

    if-nez v1, :cond_6

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_bindAndActivate: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    if-eqz p2, :cond_8

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->validateNAPClient(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_8

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_7

    const-string v3, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_bindAndActivate: ERROR Valid package has not been installed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v3

    iput v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v3

    if-eqz p2, :cond_9

    const/4 v4, 0x1

    goto :goto_0

    :cond_9
    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    return-void
.end method

.method private _bindAndActivateOnReboot()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_bindAndActivateOnReboot:ACTION_INITIALIZE_NAP: Found profile sizes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private _bindAndActivateOnReboot(Landroid/os/Bundle;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_5

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_bindAndActivateOnReboot:ACTION_INITIALIZE_NAP: Found profile sizes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    const-string v2, "android.intent.extra.user_handle"

    const/16 v3, -0x2710

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v5

    if-nez v5, :cond_2

    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "NetworkAnalytics:Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_bindAndActivateOnReboot: ERROR NAPActivationProfile is null for profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v6

    if-nez v6, :cond_3

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_bindAndActivateOnReboot: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v7

    if-ne v2, v7, :cond_4

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    :cond_4
    goto :goto_0

    :cond_5
    return-void
.end method

.method private _bindToClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)I
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->getHandlerObject()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    move-result-object v0

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v7, :cond_0

    :try_start_1
    const-string v7, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_bindToClient:handlerObj.profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v13, p1

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object/from16 v13, p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    const/4 v7, 0x0

    :try_start_2
    iget-object v8, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v9, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v10, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v9, v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getBinderForPackage(Ljava/lang/String;)Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v8, :cond_1

    :try_start_3
    invoke-interface {v8}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    move-object v7, v9

    :cond_1
    const/4 v9, 0x0

    if-eqz v8, :cond_4

    invoke-interface {v7}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v10

    if-eqz v10, :cond_3

    sget-boolean v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v10, :cond_2

    const-string v10, "NetworkAnalytics:Service"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_bindToClient:Binder is already available for package = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    const/4 v6, 0x0

    nop

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :cond_3
    :try_start_4
    invoke-direct {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_namonitoraction"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move-wide v4, v11

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget v13, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-virtual {v12, v11, v9, v13}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-lez v13, :cond_9

    :try_start_6
    sget-boolean v13, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v13, :cond_5

    :try_start_7
    const-string v13, "NetworkAnalytics:Service"

    const-string v14, "_bindToClient:vendorServices.size() > 0"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :try_start_8
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "NetworkAnalytics:Service"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move/from16 v16, v2

    :try_start_9
    const-string v2, "_bindToClient:resolveInfo.serviceInfo.packageName = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move/from16 v16, v2

    :goto_2
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_bindToClient:resolveInfo.serviceInfo.name = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v6, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    move/from16 v16, v2

    :goto_3
    move/from16 v2, v16

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v13, p1

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v13, p1

    goto :goto_6

    :cond_9
    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    iget v13, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-direct {v6, v13}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v13, p1

    const/4 v14, 0x1

    :try_start_a
    invoke-virtual {v2, v11, v13, v14, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "NetworkAnalytics:Service"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_bindToClient:bindSuccess = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v13, p1

    :goto_4
    move/from16 v2, v16

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v13, p1

    move/from16 v16, v2

    :goto_5
    goto :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v13, p1

    move/from16 v16, v2

    :goto_6
    :try_start_c
    const-string v6, "NetworkAnalytics:Service"

    const-string v7, "_bindToClient:Exception"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_a
    :goto_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v2, :cond_b

    const/16 v17, 0x1

    goto :goto_8

    :cond_b
    const/4 v6, -0x1

    move/from16 v17, v6

    :goto_8
    return v17

    :catchall_5
    move-exception v0

    :goto_9
    move/from16 v16, v2

    :goto_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private _cleanUpConnectionDetails(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_cleanUpConnectionDetails tableKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->removeProfileForPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->removeBinderForPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iget-object v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->removeDataRecipientsForPackage(Ljava/lang/String;I)V

    return-void
.end method

.method private _deactivateAllProfiles()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_deactivateAllProfiles: Found profile sizes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private _deactivateAllProfiles(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_7

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_deactivateAllConnections: Found profile sizes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_deactivateAllProfiles:ACTION_INITIALIZE_NAP: adding profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v3

    if-nez v3, :cond_3

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_deactivateAllProfiles: ERROR NAPActivationProfile is null for profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getAdminUid()I

    move-result v4

    if-eq p1, v4, :cond_4

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_deactivateAllProfiles: ERROR Not the same adminUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    if-nez v4, :cond_5

    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_deactivateAllProfiles: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v6

    if-gez v6, :cond_6

    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "NetworkAnalytics:Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_deactivateAllProfiles: ERROR deactivateProfile for profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    new-instance v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v7, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v8

    iput v8, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    const/4 v8, 0x1

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v9

    invoke-direct {p0, v8, v5, v9, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private _getDataDeliveryHelper(Ljava/lang/String;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_getDataDeliveryHelper: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-direct {v1, v0, p2, p3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V

    return-object v1
.end method

.method private _handleNewProfileRegistration(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_handleNewProfileRegistration: profile is null for name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_handleNewProfileRegistration: profile activated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getUserIdLocationOfPackage(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_4

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_handleNewProfileRegistration: bind userId location fail for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v4

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(Ljava/lang/String;II)I

    move-result v3

    if-gez v3, :cond_6

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_handleNewProfileRegistration: bind userId updation failed for profile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v3

    if-gez v3, :cond_8

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_7

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_handleNewProfileRegistration: activation failed for profile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    new-instance v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v6

    iput v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    :cond_9
    return-void
.end method

.method private _packageAddedAction(Ljava/lang/String;I)V
    .locals 8

    :try_start_0
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:Service"

    const-string v1, "_packageAddedAction called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_packageAddedAction activatedProfiles.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_packageAddedAction: ACTIVATING FOR PACKAGE ADDED."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_3

    new-instance v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v6

    iput v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    nop

    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {p0, v7, v7, v6, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "_packageAddedAction Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private _packageRemovedAction(Ljava/lang/String;I)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "_packageRemovedAction: DEACTIVATING FOR PACKAGE REMOVED."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_1

    new-instance v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v6

    iput v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v6, v7, v8, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "_packageRemovedAction Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private _unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    .locals 5

    :try_start_0
    iget v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:Service"

    const-string v1, "_unbindClient: The profile was never activated. Returning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    if-nez v0, :cond_3

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "NetworkAnalytics:Service"

    const-string v3, "_unbindClient: profile object null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, -0x4

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getServiceConnectionForPackage(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    const/16 v3, -0xb

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_cleanUpConnectionDetails(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "NetworkAnalytics:Service"

    const-string v4, "_unbindClient: Done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "_unbindClient: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "_unbindClient: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    nop

    :goto_2
    return-void
.end method

.method private _unregisterAllProfiles(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_unregisterAllProfiles: Found profile sizes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateTablesForProfileRemoval(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private _userRemovedAction(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_userRemovedAction: Invalid userId received:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_userRemovedAction: Received for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForUser(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_userRemovedAction: List of profiles for removed userId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getAdminUid()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->unregisterNetworkMonitorProfile(ILjava/lang/String;)I

    goto :goto_0

    :cond_4
    return-void
.end method

.method private _validateNAPClient(Ljava/lang/String;ILjava/lang/String;)I
    .locals 4

    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validatePkgSignForAllProfiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validatePkgSignForSingleProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    const-string v2, "NetworkAnalytics:Service"

    const-string v3, "_validateNAPClient: Package signature could not be matched for profile entry/entries"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xd

    return v2

    :cond_1
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "_validateNAPClient: Package validation complete."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivateOnReboot()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_deactivateAllProfiles()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendStatusToClient(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_handleNewProfileRegistration(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivateOnReboot(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_packageRemovedAction(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_packageAddedAction(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_userRemovedAction(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_deactivateAllProfiles(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unregisterAllProfiles(I)V

    return-void
.end method

.method private activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I
    .locals 5

    const/4 v0, -0x1

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called activateProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p2, :cond_1

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "activateProfile:Profile is already in the activated state for the user."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x8

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getAdminUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activateProfile(ILjava/lang/String;II)I

    move-result v1

    move v0, v1

    if-gez v0, :cond_2

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activate profile config storage returned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NetworkAnalytics:Service"

    const-string v3, "Add profile to database falied. Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private constructObjectForBroadcast(IILjava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v1, "profile_name"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v2, "package_name"

    invoke-virtual {v1, v2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v3, "package_signature"

    invoke-virtual {v2, v3, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "profileInfo"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v5, :cond_0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v6, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "Error occured while constructing the profile object for broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevel()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "enforceNetworkAnalyticsPermission: knox version below 3.0. Validating VPN Permission"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    const-string v4, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "enforceNetworkAnalyticsPermission: knox version above 3.0. Validating NPA Permission"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.samsung.android.knox.permission.KNOX_NPA"

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getCidFromTransformedName(Ljava/lang/String;)I
    .locals 3

    const-string v0, "__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static declared-synchronized getDRKService(Landroid/content/Context;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getDeviceUniqueKey()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getDRKService(Landroid/content/Context;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "getDeviceUniqueKey: drkService not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "NetworkAnalytics:Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageCertForPkgname: User id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, p2, v4, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_2

    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "NetworkAnalytics:Service"

    const-string/jumbo v6, "getPackageCertForPkgname: pkgInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v5, 0x0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_2
    :try_start_1
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "In getPackageCertForPkgname: Exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "NetworkAnalytics:Service"

    const-string v5, "In getPackageCertForPkgname: NullPointerException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return-object v0

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isAddedPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    move-object v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v4, "start: Package name could not be found in activated list."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method public static getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initializeHandlerThread()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NapHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    return-void
.end method

.method private initializeNapData()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setupIntentFilter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "Error occured while trying to ini the BroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isAllowedRecordingForUsers(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "isAllowedRecordingForUsers: App is installed in User 0. Can record for any user."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAllowedRecordingForUsers: App allowed to record profile? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v4

    if-ne v4, p2, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v1

    if-ne v1, p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method private isDomainFilterOnIptablesEnabled()Z
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    const-string v3, "DomainFilterOnIptablesApiStatus"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isValidAppInstalled(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string v2, "application_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v4, "isValidAppInstalled: Monitor app not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v3, -0xf

    return v3

    :cond_0
    invoke-direct {p0, p3, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "NetworkAnalytics:Service"

    const-string/jumbo v5, "isValidAppInstalled: Monitor app signature is not matched."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v4, -0xd

    return v4

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    return v3
.end method

.method private listOfProfilesForOperation(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const-string v1, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForPackageinUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method private sendMessageToHandler(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private sendStatusToClient(Landroid/os/Bundle;)V
    .locals 13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string/jumbo v2, "profileInfo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "profileInfo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "profileInfo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "profileInfo"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v6, "profileInfo"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The System is going to send broadcast of the profile status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v7

    invoke-interface {v7, v3, v5}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v9, "NetworkAnalytics:Service"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has been installed in the user space "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    sget-boolean v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "NetworkAnalytics:Service"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The signature of the package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "confirmed by OS is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "NetworkAnalytics:Service"

    const-string v11, "The signature mentioned by the admin and the signature of the package present in the device matches"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.action.NPA_STATUS"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "com.samsung.android.knox.intent.extra.REGISTRATION_STATUS"

    invoke-virtual {v10, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.extra.PROFILE_NAME"

    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v11, v10, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "NetworkAnalytics:Service"

    const-string v4, "Error occured while trying to send the NPA profile status to the client"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "NetworkAnalytics:Service"

    const-string v4, "Null pointer exception error occured while trying to send the NPA profile status to the client"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setFeatureProperty(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->isDomainFilterOnIptablesEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "net.knox.nap"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "net.knox.nap"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupIntentFilter()V
    .locals 10

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v1, "setup intent filter is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string/jumbo v1, "enterprise.container.uninstalled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string/jumbo v1, "enterprise.container.admin.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterNetworkMonitorProfile(ILjava/lang/String;)I
    .locals 13

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->doesAdminOwnProfile(ILjava/lang/String;)I

    move-result v6

    move v0, v6

    if-gez v0, :cond_1

    const-string v2, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregisterNetworkMonitorProfile: Profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "is absent or does not belong to adminUid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " return="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v7

    move v1, v7

    invoke-virtual {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getJsonString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-static {v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v10

    if-nez v10, :cond_3

    const-string v2, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unregisterNetworkMonitorProfile config profile obj is null for profile: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    invoke-direct {p0, v10, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v11

    move v0, v11

    if-gez v0, :cond_4

    const-string v2, "NetworkAnalytics:Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unregisterNetworkMonitorProfile: deactivation failed for profile:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    new-instance v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v11, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v12

    iput v12, v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    iput-object v2, v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    nop

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v12

    invoke-direct {p0, v4, v5, v12, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->removeProfileFromDatabase(ILjava/lang/String;)I

    move-result v2

    move v0, v2

    if-gez v0, :cond_7

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "NetworkAnalytics:Service"

    const-string v8, "Remove profile from database falied."

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v0

    :cond_7
    if-nez v0, :cond_a

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_8
    sget-boolean v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v8, :cond_9

    const-string v8, "NetworkAnalytics:Service"

    const-string v9, "The Knox NAP feature has been disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    :cond_a
    goto :goto_2

    :cond_b
    :goto_1
    const-string v2, "NetworkAnalytics:Service"

    const-string/jumbo v6, "unregisterNetworkMonitorProfile: Invalid parameters"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x4

    return v2

    :catch_0
    move-exception v2

    const-string v6, "NetworkAnalytics:Service"

    const-string/jumbo v7, "unregisterNetworkMonitorProfile. Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_2
    if-nez v0, :cond_d

    if-eqz v1, :cond_c

    invoke-direct {p0, v4, v5, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    :cond_c
    invoke-direct {p0, v4, v1, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    :cond_d
    return v0
.end method

.method private validateNAPClient(IIZLjava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "validateNAPClient: NAP client caller cannot be validated."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0xc

    return v1

    :cond_0
    invoke-direct {p0, v0, p2, p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_validateNAPClient(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private validateNAPClient(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v1, "validateNAPClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->isValidAppInstalled(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    if-gez v0, :cond_1

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateNAPClient:Valid monitor application is not installed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NetworkAnalytics:Service"

    const-string/jumbo v3, "validateNAPClient: Add profile to database failed. Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized getNPAVersion()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iget-object v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v3

    if-gez v3, :cond_0

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNPAVersion: Failed to open char device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    monitor-exit p0

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v3

    if-gez v3, :cond_2

    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNPAVersion: Failed to open char device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    monitor-exit p0

    return-object v0

    :cond_2
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3.3_0_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    :goto_1
    monitor-exit p0

    return-object v0
.end method

.method public getNetworkMonitorProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNetworkMonitorProfiles API caller is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNetworkMonitorProfiles API caller with updated contextInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfiles(II)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NetworkAnalytics:Service"

    const-string v3, "Get NVM client profiles. Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "NetworkAnalytics:Service"

    const-string/jumbo v5, "getProfiles: NAP client caller cannot be validated. PackageName null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "NetworkAnalytics:Service"

    const-string v6, "Get NVM client profiles. Exception"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public declared-synchronized handleNAPClientCall(Ljava/lang/String;Landroid/os/Bundle;Z)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    monitor-enter p0

    const/4 v5, -0x1

    const/4 v0, 0x0

    move v6, v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v2, :cond_23

    if-eqz v9, :cond_23

    if-gez v8, :cond_0

    move/from16 v17, v6

    goto/16 :goto_8

    :cond_0
    invoke-direct {v1, v7, v8, v4, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->validateNAPClient(IIZLjava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v10

    if-gez v5, :cond_1

    :try_start_1
    const-string v0, "NetworkAnalytics:Service"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleNAPClientCall: Caller validation failed:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " doStart:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v5

    :catch_0
    move-exception v0

    move/from16 v17, v6

    goto/16 :goto_9

    :cond_1
    :try_start_2
    invoke-direct {v1, v9, v2, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->listOfProfilesForOperation(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_22

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_22

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v12, :cond_3

    :try_start_4
    const-string v13, "NetworkAnalytics:Service"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleNAPClientCall: Profile does not exist for name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x3

    const-string v13, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v13, :cond_2

    goto :goto_0

    :cond_2
    monitor-exit p0

    return v5

    :cond_3
    :try_start_5
    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v13, :cond_5

    :try_start_6
    const-string v13, "NetworkAnalytics:Service"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleNAPClientCall: NAP client activating un-owned profile: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x12

    const-string v13, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v13, :cond_4

    goto :goto_0

    :cond_4
    monitor-exit p0

    return v5

    :cond_5
    if-eqz v4, :cond_7

    :try_start_7
    invoke-direct {v1, v12, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->isAllowedRecordingForUsers(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "NetworkAnalytics:Service"

    const-string/jumbo v14, "handleNAPClientCall: Client installed in wrong user trying to collect data"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x11

    const-string v13, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v13, :cond_6

    goto :goto_0

    :cond_6
    monitor-exit p0

    return v5

    :cond_7
    if-nez v4, :cond_8

    :try_start_8
    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v13

    if-eq v13, v8, :cond_8

    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v11, "handleNAPClientCall: NAP client failed to stop the connection since not started by same user"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v0, -0x12

    monitor-exit p0

    return v0

    :cond_8
    const/16 v14, -0x3e7

    if-eqz v4, :cond_17

    if-nez v3, :cond_9

    :try_start_9
    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v11, "handleNAPClientCall: Client trying to collect data with null bundle flow information"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v0, -0x4

    monitor-exit p0

    return v0

    :cond_9
    :try_start_a
    const-string/jumbo v15, "record_type"

    const/4 v0, -0x1

    invoke-virtual {v3, v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_16

    const/4 v15, 0x2

    if-le v0, v15, :cond_a

    move/from16 v16, v5

    move/from16 v17, v6

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v15, "interval_value"

    invoke-virtual {v3, v15, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/16 v13, 0x3c

    if-eq v15, v14, :cond_c

    if-lt v15, v13, :cond_b

    const/16 v13, 0x3840

    if-le v15, v13, :cond_c

    :cond_b
    :try_start_b
    const-string v11, "NetworkAnalytics:Service"

    const-string/jumbo v13, "handleNAPClientCall: Client trying to collect data with Invalid interval information"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v5, -0x4

    monitor-exit p0

    return v5

    :cond_c
    if-eq v15, v14, :cond_d

    const/16 v13, 0x3c

    if-lt v15, v13, :cond_d

    const/16 v13, 0x3840

    if-gt v15, v13, :cond_d

    :try_start_c
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d

    sget-object v13, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v14

    const-string v3, "NetworkAnalytics:Service"
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move/from16 v16, v5

    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move/from16 v17, v6

    :try_start_e
    const-string/jumbo v6, "handleNAPClientCall: intermediate flows : current knox version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " supported knox version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_e

    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v5, "handleNAPClientCall: Client trying to collect data not supported in current version"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v3, -0x4

    monitor-exit p0

    return v3

    :catch_1
    move-exception v0

    move/from16 v17, v6

    move/from16 v5, v16

    goto/16 :goto_9

    :cond_d
    move/from16 v16, v5

    move/from16 v17, v6

    :cond_e
    :try_start_f
    iget-object v3, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_12

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v13, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v13

    if-nez v13, :cond_f

    goto :goto_1

    :cond_f
    invoke-virtual {v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v14

    move-object/from16 v18, v3

    const/4 v3, 0x1

    if-ne v3, v14, :cond_11

    invoke-virtual {v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationFlowType()I

    move-result v3

    if-ne v3, v0, :cond_10

    invoke-virtual {v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationIntervalValue()I

    move-result v3

    if-eq v3, v15, :cond_11

    :cond_10
    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v5, "handleNAPClientCall: Client trying to collect data with wrong flow or interval"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const/4 v3, -0x4

    monitor-exit p0

    return v3

    :cond_11
    nop

    move-object/from16 v3, v18

    goto :goto_1

    :cond_12
    move-object/from16 v18, v3

    :try_start_10
    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->setFlowTypeForProfile(I)V

    invoke-virtual {v12, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->setIntervalValueForProfile(I)V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    sget-object v3, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_14

    iget-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-gez v6, :cond_13

    :try_start_11
    const-string v11, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleNAPClientCall: file descriptor failed for profile:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " doStart:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    return v6

    :catch_2
    move-exception v0

    move v5, v6

    goto/16 :goto_9

    :cond_13
    move v5, v6

    goto :goto_2

    :cond_14
    const/4 v13, 0x0

    :try_start_12
    iget-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-gez v6, :cond_13

    :try_start_13
    const-string v11, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleNAPClientCall: file descriptor failed for profile:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " doStart:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    monitor-exit p0

    return v6

    :goto_2
    nop

    :try_start_14
    iget-object v3, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersionMismatch()I

    move-result v3

    move v5, v3

    if-gez v5, :cond_18

    const-string v3, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleNAPClientCall: ncm version match failed for profile:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " doStart:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    monitor-exit p0

    return v5

    :cond_15
    const/16 v5, -0x13

    :try_start_15
    const-string v3, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleNAPClientCall: file descriptor failed for profile:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " doStart:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    monitor-exit p0

    return v5

    :cond_16
    move/from16 v16, v5

    move/from16 v17, v6

    :goto_3
    :try_start_16
    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v5, "handleNAPClientCall: Client trying to collect data with Invalid flow information"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    const/4 v3, -0x4

    monitor-exit p0

    return v3

    :catch_3
    move-exception v0

    move/from16 v5, v16

    goto/16 :goto_9

    :cond_17
    move v13, v0

    move/from16 v16, v5

    move/from16 v17, v6

    :cond_18
    :try_start_17
    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v0

    const/16 v3, -0x3e7

    if-ne v0, v3, :cond_1a

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v6

    invoke-virtual {v0, v3, v6, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(Ljava/lang/String;II)I

    move-result v0

    move v5, v0

    if-gez v5, :cond_1c

    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: bind userId updation failed for profile:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doStart:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz v0, :cond_19

    goto/16 :goto_6

    :cond_19
    monitor-exit p0

    return v5

    :cond_1a
    :try_start_18
    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v0

    const/16 v3, -0x3e7

    if-eq v0, v3, :cond_1c

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v6

    invoke-virtual {v0, v3, v6, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(Ljava/lang/String;II)I

    move-result v0

    move v5, v0

    if-gez v5, :cond_1c

    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: bind userId updation failed for profile after default check:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doStart:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-eqz v0, :cond_1b

    goto :goto_6

    :cond_1b
    monitor-exit p0

    return v5

    :cond_1c
    if-eqz v4, :cond_1d

    const/4 v0, 0x1

    goto :goto_4

    :cond_1d
    nop

    move v0, v13

    :goto_4
    :try_start_19
    invoke-direct {v1, v12, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v0

    move v5, v0

    if-gez v5, :cond_1f

    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: activation failed for profile:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doStart:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v0, :cond_1e

    goto :goto_6

    :cond_1e
    monitor-exit p0

    return v5

    :cond_1f
    :try_start_1a
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iput v8, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    nop

    if-eqz v4, :cond_20

    const/4 v3, 0x1

    goto :goto_5

    :cond_20
    move v3, v13

    :goto_5
    invoke-virtual {v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v6

    const/4 v14, 0x1

    invoke-direct {v1, v14, v3, v6, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    nop

    :goto_6
    move v0, v13

    move/from16 v6, v17

    move-object/from16 v3, p2

    goto/16 :goto_0

    :cond_21
    move/from16 v16, v5

    move/from16 v17, v6

    goto :goto_7

    :catch_4
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    goto :goto_9

    :cond_22
    move/from16 v17, v6

    :goto_7
    goto :goto_a

    :cond_23
    move/from16 v17, v6

    :goto_8
    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: Invalid parameters. doStart:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    const/4 v0, -0x4

    monitor-exit p0

    return v0

    :catch_5
    move-exception v0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v0

    move/from16 v17, v6

    :goto_9
    :try_start_1b
    const-string v3, "NetworkAnalytics:Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleNAPClientCall: Exception in doStart:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    const/4 v5, -0x1

    :goto_a
    monitor-exit p0

    return v5

    :goto_b
    monitor-exit p0

    throw v0
.end method

.method public isProfileActivatedForUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileActivatedForUser API caller is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileActivatedForUser API caller with updated contextInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez v1, :cond_4

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->doesAdminOwnProfile(ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    const-string v1, "NetworkAnalytics:Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActivatedForUser: Profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "is absent or does not belong to adminUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NetworkAnalytics:Service"

    const-string/jumbo v3, "isProfileActivatedForUser: Remove profile to database falied. Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_4
    :goto_1
    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "isProfileActivatedForUser: Invalid parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    const-string v0, "NetworkAnalytics:Service"

    const-string v1, "Network Platform analytics Service is going to be added to the ServiceManager list "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->initializeHandlerThread()V

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->initializeNapData()V

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    :cond_0
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "Error occured while trying to start NPA as a system service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public registerNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 6

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNetworkMonitorProfile API caller is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNetworkMonitorProfile API caller with updated contextInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_a

    if-nez p2, :cond_2

    goto/16 :goto_2

    :cond_2
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNetworkMonitorProfile: allowUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getJSonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validateJsonContent(Lorg/json/JSONObject;)I

    move-result v2

    move v0, v2

    if-gez v0, :cond_4

    const-string v2, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerNetworkMonitorProfile: JSON validation failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3, v1, p2, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->addProfileToDatabase(ILorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    move v0, v2

    if-gez v0, :cond_5

    const-string v2, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerNetworkMonitorProfile: Add profile to database failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "NetworkAnalytics:Service"

    const-string v5, "The Knox NAP feature has been enabled"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    :cond_7
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v3, "profile_name"

    invoke-virtual {v2, v3, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NetworkAnalytics:Service"

    const-string/jumbo v3, "registerNetworkMonitorProfile: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "NetworkAnalytics:Service"

    const-string/jumbo v3, "registerNetworkMonitorProfile: JSON Parsing Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x2

    :goto_0
    nop

    :goto_1
    if-nez v0, :cond_9

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-direct {p0, v2, v2, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    :cond_8
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    :cond_9
    return v0

    :cond_a
    :goto_2
    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v1, "registerNetworkMonitorProfile: Invalid parameters."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public unregisterNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkMonitorProfile API caller is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkAnalytics:Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkMonitorProfile API caller with updated contextInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->unregisterNetworkMonitorProfile(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
