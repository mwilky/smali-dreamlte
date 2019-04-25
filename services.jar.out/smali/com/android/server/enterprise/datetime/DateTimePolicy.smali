.class public Lcom/android/server/enterprise/datetime/DateTimePolicy;
.super Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;
.source "DateTimePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "DateTimePolicyService"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

.field private mNtpInfoLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/knox/datetime/NtpInfo;

    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/datetime/NtpInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Lcom/samsung/android/knox/datetime/NtpInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->sendBroadcastToNtpServices()V

    return-void
.end method

.method private enforceDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_DATE_TIME"

    const-string v3, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_DATE_TIME"

    const-string v3, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private loadNtpInfo()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "ntpServer"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->setServer(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ntpMaxAttempts"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->setMaxAttempts(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "DateTimePolicyService"

    const-string/jumbo v6, "failed to convert max attempts"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v5, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setMaxAttempts(I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setMaxAttempts(I)V

    :goto_1
    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "ntpPollInterval"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingInterval(J)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v7

    :try_start_4
    const-string v8, "DateTimePolicyService"

    const-string/jumbo v9, "failed to convert polling interval"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v8, v5, v6}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingInterval(J)V

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingInterval(J)V

    :goto_3
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "ntpPollInterShorter"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_2

    :try_start_5
    iget-object v8, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingIntervalShorter(J)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    goto :goto_5

    :catch_2
    move-exception v8

    :try_start_6
    const-string v9, "DateTimePolicyService"

    const-string/jumbo v10, "failed to convert polling interval shorter"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v9, v5, v6}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingIntervalShorter(J)V

    goto :goto_4

    :cond_2
    iget-object v8, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v8, v5, v6}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingIntervalShorter(J)V

    :goto_5
    iget-object v8, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "ntpTimeout"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_3

    :try_start_7
    iget-object v9, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeout(J)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    goto :goto_7

    :catch_3
    move-exception v9

    :try_start_8
    const-string v10, "DateTimePolicyService"

    const-string/jumbo v11, "failed to convert timeout"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v10, v5, v6}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeout(J)V

    goto :goto_6

    :cond_3
    iget-object v9, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v9, v5, v6}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeout(J)V

    :goto_7
    iget-object v5, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "ntpThreshould"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v5, :cond_4

    :try_start_9
    iget-object v6, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeErrorThreshold(I)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_8
    goto :goto_9

    :catch_4
    move-exception v6

    :try_start_a
    const-string v9, "DateTimePolicyService"

    const-string/jumbo v10, "failed to convert time error threshold"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v9, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeErrorThreshold(I)V

    goto :goto_8

    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v6, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeErrorThreshold(I)V

    :goto_9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v1
.end method

.method private resetNtpInfo()Z
    .locals 13

    const-string v0, "DateTimePolicyService"

    const-string/jumbo v1, "resetNtpInfo"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->saveNtpInfoInDbAndUpdateCache(Ljava/lang/String;JJJIII)Z

    move-result v0

    return v0
.end method

.method private saveNtpInfoInDbAndUpdateCache(Ljava/lang/String;JJJIII)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "ntpServer"

    invoke-virtual {v11, v12, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "ntpTimeout"

    const-wide/16 v13, 0x0

    cmp-long v15, v2, v13

    const/16 v16, 0x0

    if-nez v15, :cond_0

    move-object/from16 v15, v16

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    :goto_0
    invoke-virtual {v11, v12, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    and-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "ntpPollInterval"

    cmp-long v15, v4, v13

    if-nez v15, :cond_1

    move-object/from16 v15, v16

    goto :goto_1

    :cond_1
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    :goto_1
    invoke-virtual {v11, v12, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    and-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "ntpPollInterShorter"

    cmp-long v13, v6, v13

    if-nez v13, :cond_2

    move-object/from16 v13, v16

    goto :goto_2

    :cond_2
    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v11, v12, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    and-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "ntpMaxAttempts"

    if-nez v8, :cond_3

    move-object/from16 v13, v16

    goto :goto_3

    :cond_3
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    :goto_3
    invoke-virtual {v11, v12, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    and-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "ntpThreshould"

    if-nez v9, :cond_4

    move-object/from16 v13, v16

    goto :goto_4

    :cond_4
    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v11, v12, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    and-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v11, v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->setServer(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v11, v8}, Lcom/samsung/android/knox/datetime/NtpInfo;->setMaxAttempts(I)V

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v11, v2, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeout(J)V

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v11, v4, v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingInterval(J)V

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v11, v6, v7}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingIntervalShorter(J)V

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v11, v9}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeErrorThreshold(I)V

    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "ntpLastAdminUid"

    if-nez p10, :cond_5

    :goto_5
    move-object/from16 v14, v16

    goto :goto_6

    :cond_5
    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    :goto_6
    invoke-virtual {v11, v12, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    and-int/2addr v10, v11

    return v10
.end method

.method private sendBroadcastToNtpServices()V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->getTimeout()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/NtpTrustedTime;->setNtpInfoInternal(Landroid/content/Context;Ljava/lang/String;J)Z

    iget-object v3, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method


# virtual methods
.method public getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public getDateFormat(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iget-object v2, v1, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    const-string v3, "\\byy\\b"

    const-string/jumbo v4, "y"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateTime(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDaylightSavingTime(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    return v1
.end method

.method public getNtpInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/datetime/NtpInfo;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTimeFormat(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "time_12_24"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v3

    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getTimeZone(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "DateTimeEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "ntpLastAdminUid"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v1, -0x1

    :goto_0
    if-ne v1, p1, :cond_0

    const-string v2, "DateTimePolicyService"

    const-string v3, "admin removed, reverting ntp info"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->resetNtpInfo()Z

    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->sendBroadcastToNtpServices()V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    :goto_1
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public setAutomaticTime(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move v1, v2

    :try_start_0
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "auto_time"

    invoke-static {v2, v5, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    move v1, v2

    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "auto_time_zone"

    nop

    invoke-static {v2, v5, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v11

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DateTimePolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string/jumbo v10, "enabled"

    goto :goto_0

    :cond_1
    const-string/jumbo v10, "disabled"

    :goto_0
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " automatic time."

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v1

    :catchall_0
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDateFormat(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDateTime(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {p2, p3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x1

    return v2

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public setDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "DateTimeEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v9, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "DateTimePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string/jumbo v7, "enabled"

    goto :goto_0

    :cond_0
    const-string/jumbo v7, "disabled"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " date time changes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_1
    :goto_1
    return v0
.end method

.method public setNtpInfo(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/datetime/NtpInfo;)Z
    .locals 25

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v2, "DateTimePolicyService"

    const-string v3, "NtpInfo object should not be null!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v14, p0

    iget-object v13, v14, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    if-eqz v15, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getTimeout()J

    move-result-wide v3

    move-wide/from16 v16, v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    move-result-wide v3

    move-wide/from16 v18, v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingIntervalShorter()J

    move-result-wide v3

    move-wide/from16 v20, v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getMaxAttempts()I

    move-result v3

    move/from16 v22, v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getTimeErrorThreshold()I

    move-result v3

    move/from16 v23, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v16, v3

    if-ltz v5, :cond_2

    cmp-long v5, v18, v3

    if-ltz v5, :cond_2

    cmp-long v3, v20, v3

    if-ltz v3, :cond_2

    if-ltz v22, :cond_2

    if-gez v23, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v14

    move-object v4, v15

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move-wide/from16 v9, v20

    move/from16 v11, v22

    move/from16 v12, v23

    move-object/from16 v24, v13

    move v13, v0

    :try_start_1
    invoke-direct/range {v3 .. v13}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->saveNtpInfoInDbAndUpdateCache(Ljava/lang/String;JJJIII)Z

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v24, v13

    const-string v3, "DateTimePolicyService"

    const-string/jumbo v4, "invalid parameters provided, all values should be 0 or higher"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v24

    return v0

    :cond_3
    move-object/from16 v24, v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->resetNtpInfo()Z

    move-result v0

    :goto_1
    move v2, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->sendBroadcastToNtpServices()V

    monitor-exit v24

    return v2

    :catchall_0
    move-exception v0

    move-object/from16 v24, v13

    :goto_2
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public setTimeFormat(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string v3, "android"

    invoke-static {v1, v3, v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "12"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "24"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "time_12_24"

    invoke-static {v4, v5, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.TIME_SET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v4

    :goto_0
    return v2

    :cond_3
    :goto_1
    return v2
.end method

.method public setTimeZone(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "DateTimePolicyService"

    const-string/jumbo v2, "setTimeZone() has failed : Invalid input."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, p2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v0, 0x0

    :try_start_1
    const-string v4, "DateTimePolicyService"

    const-string/jumbo v5, "setTimeZone() has failed by unexpected excepion. "

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    :goto_2
    const-string v1, "DateTimePolicyService"

    const-string/jumbo v2, "setTimeZone() has failed : Not allowed by admin."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public systemReady()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->loadNtpInfo()V

    return-void
.end method
