.class public Lcom/android/server/net/UrspService;
.super Landroid/net/IUrspManager$Stub;
.source "UrspService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/UrspService$UrspHandler;
    }
.end annotation


# static fields
.field public static final ATTR_MDO_STATE:Ljava/lang/String; = "mdo-state"

.field public static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field public static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BIGDATA_MOBILE_DATA:Ljava/lang/String; = "com.samsung.intent.action.BIG_DATA_MOBILE_DATA"

.field public static final DBG:Z = true

.field private static final MAX_URSP_LOG_HISTORY:I = 0xc8

.field public static final MSG_FACTORY_RESET_DONE:I = 0x2715

.field private static final MSG_INIT_URSP_SERVICE:I = 0x2711

.field private static final MSG_REQUEST_MDO_CONNECTION:I = 0x2712

.field public static final MSG_SET_URSP_RULES_DONE:I = 0x2714

.field public static final MSG_SET_URSP_RULE_DONE:I = 0x2713

.field private static final TAG:Ljava/lang/String; = "UrspService"

.field public static final TAG_FOC_POLICY:Ljava/lang/String; = "foc-policy"

.field public static final TAG_FOC_UID_POLICY:Ljava/lang/String; = "foc-uid-policy"

.field public static final TAG_MDO_BLACKLIST_POLICY:Ljava/lang/String; = "mdo-blacklist-policy"

.field public static final TAG_MDO_POLICY:Ljava/lang/String; = "mdo-policy"

.field public static final TAG_MDO_UID_POLICY:Ljava/lang/String; = "mdo-uid-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field public static final URSP_BIG_DATA_MDO_APP_ADD:I = 0x1

.field public static final URSP_BIG_DATA_MDO_APP_ADD_BLACKLIST:I = 0x3

.field public static final URSP_BIG_DATA_MDO_APP_CLEAR_BLACKLIST:I = 0x5

.field public static final URSP_BIG_DATA_MDO_APP_NETWORK_FACTORY_RESET:I = 0x6

.field public static final URSP_BIG_DATA_MDO_APP_REMOVE:I = 0x2

.field public static final URSP_BIG_DATA_MDO_APP_REMOVE_BLACKLIST:I = 0x4

.field public static final URSP_BIG_DATA_NO_APP:I = -0x1

.field public static final VDBG:Z = true

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0x1


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCores:[Lcom/android/server/net/UrspCore;

.field private mHandler:Landroid/os/Handler;

.field private mNetStats:Lcom/android/server/net/UrspNetworkStatsService;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mOperatorSvc:Lcom/android/server/net/UrspOperatorService;

.field private final mPoliciesSecondLock:Ljava/lang/Object;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private final mPolicyLocked:Ljava/lang/Object;

.field private mUrspConn:Lcom/android/server/net/UrspConnectivityController;

.field private mUrspNms:Lcom/android/server/net/UrspNetworkManagementService;

.field private final mUrspmObservedHistory:Landroid/util/LocalLog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/IUrspManager$Stub;-><init>()V

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mPoliciesSecondLock:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/net/UrspCore;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "missing activityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mActivityManager:Landroid/app/IActivityManager;

    const-string/jumbo v0, "missing networkManagement"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const-string/jumbo v0, "missing networkStats"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkStatsService;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    return-object v0
.end method

.method private checkPermission()Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x2710

    if-le v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/net/UrspService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "UrspService"

    const-string v4, "checkPermission has exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPermission() uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    return v0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isAvailableUrspRuleType(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    if-gez p1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UrspService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UrspService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readPolicy()V
    .locals 11

    const-string/jumbo v0, "readPolicy"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    if-eq v5, v3, :cond_9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    const-string/jumbo v7, "policy-list"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "version"

    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    move v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readPolicy, version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v7, "mdo-policy"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    const-string/jumbo v7, "mdo-state"

    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readPolicy, mdoState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v7}, Lcom/android/server/net/UrspService;->setUrspMode(IZ)V

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v7, "mdo-uid-policy"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "uid"

    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v9, "policy"

    invoke-static {v2, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v10, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v10, v10, v8

    invoke-virtual {v10, v9, v7, v8}, Lcom/android/server/net/UrspCore;->setUrspRule(ZIZ)V

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readPolicy, mMdoUidRule - uid: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Policy: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v7, "mdo-blacklist-policy"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "uid"

    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v9, "policy"

    invoke-static {v2, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v10, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v10, v10, v8

    invoke-virtual {v10, v9, v7, v8}, Lcom/android/server/net/UrspCore;->setUrspBlackListUidRule(ZIZ)V

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readPolicy, mMdoBlackListUidRule - uid: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Policy: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v7, "foc-uid-policy"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "uid"

    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "policy"

    invoke-static {v2, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v9, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v9, v9, v3

    invoke-virtual {v9, v8, v7}, Lcom/android/server/net/UrspCore;->setUrspRule(ZI)V

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readPolicy, mFocUidRule - uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Policy: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_7
    nop

    :cond_8
    :goto_1
    goto/16 :goto_0

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to read policy file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_2
    :try_start_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO fail to read policy file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_3
    nop

    :try_start_4
    monitor-exit v0

    return-void

    :goto_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method


# virtual methods
.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 2

    const-string v0, "bindConnectivityManager Called"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mConnManager:Landroid/net/IConnectivityManager;

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/android/server/net/UrspConnectivityController;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    :cond_0
    return-void
.end method

.method public clearUrspBlackListUidRule(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->clearUrspBlackListUidRule()V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    const-string v1, "UrspService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Lcom/android/server/net/UrspCore;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "Ursp Logs (most recent first):"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public factoryReset()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->factoryReset()V

    return-void
.end method

.method public getAllUrspBlackListUidsRule(I)[I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->getAllUrspBlackListUidsRule()[I

    move-result-object v0

    return-object v0
.end method

.method public getAllUrspRule(I)[I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->getAllUrspRule()[I

    move-result-object v0

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/IConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mConnManager:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIntervalUsageForUrsp(ILjava/lang/String;IJJ)J
    .locals 12

    move-object v0, p0

    invoke-direct {v0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v1, v0, Lcom/android/server/net/UrspService;->mNetStats:Lcom/android/server/net/UrspNetworkStatsService;

    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/android/server/net/UrspService;->mNetStats:Lcom/android/server/net/UrspNetworkStatsService;

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/net/UrspNetworkStatsService;->getIntervalUsageForUrsp(ILjava/lang/String;IJJ)J

    move-result-wide v1

    return-wide v1

    :cond_1
    return-wide v2
.end method

.method public getPackageNameForUid(I)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "UrspService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getPackageName API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPoliciesSecondLocked()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mPoliciesSecondLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getPolicyLocked()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    return-object v0
.end method

.method public getServerInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mOperatorSvc:Lcom/android/server/net/UrspOperatorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mOperatorSvc:Lcom/android/server/net/UrspOperatorService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/net/UrspOperatorService;->getServerInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    return-object v0
.end method

.method public getUrspMode(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->getUrspMode()Z

    move-result v0

    return v0
.end method

.method public getUrspNetId(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->getUrspNetId()I

    move-result v0

    return v0
.end method

.method public getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspNms:Lcom/android/server/net/UrspNetworkManagementService;

    return-object v0
.end method

.method public getUrspmObservedHistory()Landroid/util/LocalLog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    return-object v0
.end method

.method public isUrspRuleEnabled(II)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->isUrspRuleEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerUrspAppListener(ILandroid/net/IUrspAppListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->registerUrspAppListner(Landroid/net/IUrspAppListener;)V

    return-void
.end method

.method public registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    invoke-virtual {v0, p1}, Lcom/android/server/net/UrspConnectivityController;->registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    return-void
.end method

.method public sendBigData(II)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.intent.action.BIG_DATA_MOBILE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "category"

    const-string v2, "URSP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending MdcService. state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setUrspBlackListUidRule(IZI)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspBlackListUidRule, UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blacklisted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspBlackListUidRule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", UID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string v2, " - disable"

    goto :goto_0

    :cond_1
    const-string v2, " - enable"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/net/UrspCore;->setUrspBlackListUidRule(ZI)V

    return-void
.end method

.method public setUrspMode(IZ)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspMode - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string v2, "disable"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "enable"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->setUrspMode(Z)V

    return-void
.end method

.method public setUrspNetId(II)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspNetId, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", netId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspNetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", NetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->setUrspNetId(I)V

    return-void
.end method

.method public setUrspRule(IZI)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/net/UrspService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRule, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not have permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRule, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspRule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", UID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    const-string v2, " - disable"

    goto :goto_0

    :cond_2
    const-string v2, " - enable"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/net/UrspCore;->setUrspRule(ZI)V

    return-void
.end method

.method public setUrspRules(IZ[I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/net/UrspService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRules, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not have permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRules, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uids - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/net/UrspCore;->setUrspRules(Z[I)V

    return-void
.end method

.method public systemReady()V
    .locals 7

    const-string/jumbo v0, "systemReady Called"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UrspService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/net/UrspService$UrspHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/UrspService$UrspHandler;-><init>(Lcom/android/server/net/UrspService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "handlerThread.getLooper() returned null"

    invoke-static {v2}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    new-instance v3, Lcom/android/server/net/MdoCore;

    invoke-direct {v3, p0}, Lcom/android/server/net/MdoCore;-><init>(Lcom/android/server/net/UrspService;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    const/4 v3, 0x1

    new-instance v5, Lcom/android/server/net/FocCore;

    invoke-direct {v5, p0}, Lcom/android/server/net/FocCore;-><init>(Lcom/android/server/net/UrspService;)V

    aput-object v5, v2, v3

    new-instance v2, Lcom/android/server/net/UrspConnectivityController;

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/net/UrspConnectivityController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    new-instance v2, Lcom/android/server/net/UrspNetworkManagementService;

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/UrspService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-direct {v2, v3, v5}, Lcom/android/server/net/UrspNetworkManagementService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mUrspNms:Lcom/android/server/net/UrspNetworkManagementService;

    new-instance v2, Lcom/android/server/net/UrspOperatorService;

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/net/UrspOperatorService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mOperatorSvc:Lcom/android/server/net/UrspOperatorService;

    new-instance v2, Lcom/android/server/net/UrspNetworkStatsService;

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/UrspService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-direct {v2, v3, v5}, Lcom/android/server/net/UrspNetworkStatsService;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mNetStats:Lcom/android/server/net/UrspNetworkStatsService;

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/server/net/UrspService;->getSystemDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "ursppolicy.xml"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/server/net/UrspService;->readPolicy()V

    iget-object v2, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/server/net/UrspCore;->systemReady()V

    return-void
.end method

.method public unregisterUrspAppListener(ILandroid/net/IUrspAppListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->unregisterUrspAppListner(Landroid/net/IUrspAppListener;)V

    return-void
.end method

.method public unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    invoke-virtual {v0, p1}, Lcom/android/server/net/UrspConnectivityController;->unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    return-void
.end method

.method public writePolicy()V
    .locals 8

    const-string/jumbo v0, "writePolicy"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "policy-list"

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "version"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    invoke-virtual {v7, v0, v2}, Lcom/android/server/net/UrspCore;->writePolicy(Ljava/io/FileOutputStream;Lorg/xmlpull/v1/XmlSerializer;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "policy-list"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to write policy file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
