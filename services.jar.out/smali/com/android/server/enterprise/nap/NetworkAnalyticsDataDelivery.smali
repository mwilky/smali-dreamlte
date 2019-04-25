.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
.super Ljava/lang/Object;
.source "NetworkAnalyticsDataDelivery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:NetworkAnalyticsDataDelivery"

.field private static appset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field private static pms:Lcom/android/server/pm/PackageManagerService;


# instance fields
.field private dataEntry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private registeredDataRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/DataDeliveryHelper;",
            ">;"
        }
    .end annotation
.end field

.field private startTimer:J

.field private syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageManager()Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    return-wide p1
.end method

.method private static checkIfProcessIsDaemon(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "which "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v3, ""

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static checkSingleUidAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .locals 18

    move/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v10, 0x0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_0

    return-object v10

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the packages for uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for processName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHashFromCacheBasedOnUid(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    if-eqz v11, :cond_2

    return-object v11

    :cond_2
    const/4 v1, 0x0

    aget-object v2, v0, v1

    move-object v12, v2

    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v12, v1, v3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v13, v1

    if-eqz v13, :cond_6

    iget-object v1, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/io/File;

    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v1

    nop

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the file location for the process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_3
    invoke-static {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    if-eqz v15, :cond_6

    iget-object v1, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/16 v16, 0x0

    iget-object v1, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_4

    new-instance v17, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget-object v4, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v1, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v3, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object/from16 v1, v17

    move v2, v8

    move-object v3, v12

    move-object v6, v15

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, v17

    goto :goto_0

    :cond_4
    new-instance v17, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget-object v4, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object/from16 v1, v17

    move v2, v8

    move-object v3, v12

    move-object v6, v15

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, v17

    :goto_0
    nop

    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v15

    :cond_6
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v10
.end method

.method protected static clearHashCacheEntire()V
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearHashCacheEntire Called : cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataDelivery hash cache entire deletion : cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 16

    move/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const/4 v13, 0x0

    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    if-eqz v12, :cond_5

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    iget-object v2, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the file location for the process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_1
    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    if-eqz v14, :cond_2

    new-instance v15, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object v1, v15

    move v2, v8

    move-object v3, v10

    move-object v4, v11

    move-object v6, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v15

    nop

    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V

    return-object v14

    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    iget-object v1, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the file location for the process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_4
    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    if-eqz v14, :cond_5

    new-instance v15, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object v1, v15

    move v2, v8

    move-object v3, v10

    move-object v4, v11

    move-object v5, v11

    move-object v6, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v15

    nop

    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v14

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    :goto_0
    nop

    :goto_1
    return-object v13
.end method

.method private getAugmentedData(Lcom/android/server/enterprise/nap/DataDeliveryHelper;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/nap/DataDeliveryHelper;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->processData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v2, "getAugmentedData: Helper or data is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method private static getFileLocationFromProcessNameAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .locals 17

    move/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_b

    aget-object v7, v0, v6

    sget-object v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v7, v5, v9}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v9, :cond_2

    if-eqz v2, :cond_2

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2, v7, v9, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    return-object v9

    :cond_2
    sget-object v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    const/4 v10, 0x4

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v9, v7, v10, v11}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_4

    array-length v11, v10

    move v12, v5

    :goto_1
    if-ge v12, v11, :cond_4

    aget-object v13, v10, v12

    if-eqz v13, :cond_3

    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    if-eqz v14, :cond_3

    if-eqz v2, :cond_3

    if-eqz v8, :cond_3

    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2, v7, v14, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    return-object v14

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    sget-object v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    const/16 v11, 0x8

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v10, v7, v11, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v11, v10, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v11, :cond_6

    array-length v12, v11

    move v13, v5

    :goto_2
    if-ge v13, v12, :cond_6

    aget-object v14, v11, v13

    if-eqz v14, :cond_5

    iget-object v15, v14, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    if-eqz v15, :cond_5

    if-eqz v2, :cond_5

    if-eqz v8, :cond_5

    iget-object v15, v14, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2, v7, v15, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    return-object v15

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    sget-object v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    const/4 v12, 0x2

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v11, v7, v12, v13}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11

    if-eqz v11, :cond_8

    iget-object v12, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_8

    array-length v13, v12

    move v14, v5

    :goto_3
    if-ge v14, v13, :cond_8

    aget-object v15, v12, v14

    if-eqz v15, :cond_7

    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    if-eqz v8, :cond_7

    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2, v7, v5, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    return-object v5

    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    sget-object v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v5, v7, v13, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v12, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_a

    array-length v13, v12

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_a

    aget-object v15, v12, v14

    if-eqz v15, :cond_9

    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    if-eqz v8, :cond_9

    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2, v7, v3, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_9

    return-object v3

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getHash(Ljava/io/File;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    const/16 v4, 0x400

    new-array v4, v4, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v6, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {v3, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v8

    move v8, v5

    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_1

    const-string v9, "%02X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aget-byte v11, v7, v8

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    const-string v5, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string v6, "close FileInputStream: IOException"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    goto :goto_4

    :cond_2
    :goto_3
    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v5, "getHash: IOException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string v5, "close FileInputStream: IOException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_3
    move-exception v3

    :try_start_4
    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v5, "getHash: FileNotFoundException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_4
    move-exception v3

    :try_start_6
    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v5, "getHash: NoSuchAlgorithmException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :goto_4
    if-nez v2, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :goto_5
    nop

    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_6

    :catch_5
    move-exception v3

    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string v5, "close FileInputStream: IOException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_4
    :goto_6
    throw v1
.end method

.method private static getHashFromCache(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v3, p0, :cond_1

    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getHashFromCacheBasedOnUid(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v3, p0, :cond_0

    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-direct {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    return-object v0
.end method

.method public static getPackageHash(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHashFromCache(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->checkIfProcessIsDaemon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v0

    :cond_1
    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->checkSingleUidAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getFileLocationFromProcessNameAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    return-object v4

    :cond_5
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageNameFromPathAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_6

    return-object v5

    :cond_6
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v3, "getPackageHash: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method private static getPackageManager()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private static getPackageNameFromPathAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x4

    if-lt v3, v4, :cond_6

    const/4 v3, 0x2

    aget-object v5, v2, v3

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_1

    aget-object v3, v2, v6

    move-object v1, v3

    goto :goto_0

    :cond_1
    array-length v5, v2

    const/4 v7, 0x5

    if-lt v5, v7, :cond_2

    aget-object v3, v2, v3

    const-string/jumbo v5, "user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v5, v2, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v4

    move-object v1, v3

    :cond_2
    :goto_0
    if-eqz v1, :cond_6

    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v0

    :cond_3
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v7, v5, v9}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v9, :cond_5

    new-instance v9, Ljava/io/File;

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to find the file location for the deamon path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    invoke-static {v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_5

    return-object v10

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method private static insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v1, "insertHashIntoCache Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataDelivery hash cache insertion uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pacName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " procName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " trunProcName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hash:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isDataRecipientPresent(Ljava/lang/String;I)I
    .locals 6

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDataRecipientPresent: found recipient:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private sendMessageToHandler(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected static updateHashCache(ILjava/lang/String;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v1, "updateHashCache Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v3, p0, :cond_2

    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataDelivery hash cache deletion uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pacName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " procName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " trunProcName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_2
    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static updateHashCacheForUser(I)V
    .locals 6

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v1, "updateHashCacheForUser Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->userId:I

    if-ne v3, p0, :cond_2

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataDelivery hash cache user deletion uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pacName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " procName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " trunProcName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_2
    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private validateRecipientObject(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getServiceConnection()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public accumulateData(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->sendMessageToHandler(IIILjava/lang/Object;)V

    return v0
.end method

.method public addNAPDataRecipient(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->validateRecipientObject(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding recipient failed for recipient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding recipient for data collection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->isDataRecipientPresent(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "added recipient for data collection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public deliverData(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getServiceBinder()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_3

    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deliverData: service connection is null for entry:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    goto :goto_0

    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getAugmentedData(Lcom/android/server/enterprise/nap/DataDeliveryHelper;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onDataAvailable(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    :goto_1
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string v5, "deliverData: Exception "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v3

    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string v5, "deliverData: RemoteException "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    nop

    :goto_3
    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    return v0

    :cond_7
    :goto_4
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string v3, "deliverData: No data delivery herlper entries."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v0

    :cond_9
    :goto_5
    return v0
.end method

.method protected getRecipientList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/DataDeliveryHelper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initializeHandlerThread()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataDeliveryHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    return-void
.end method

.method public removeDataRecipientsForPackage(Ljava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_0

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeDataRecipientsForPackage: removing recipient for package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeNAPDataRecipient(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->isDataRecipientPresent(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeNAPDataRecipient: removing recipient for data collection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public terminateHandlerThread()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method
