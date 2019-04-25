.class public Lcom/android/server/enterprise/auditlog/AuditLogService;
.super Lcom/samsung/android/knox/log/IAuditLog$Stub;
.source "AuditLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final AUDIT_LOG_SERVICE:Ljava/lang/String; = "AuditLogService"

.field private static final EDMAUDIT_PROPERTY:Ljava/lang/String; = "security.edmaudit"

.field private static final START_EDMAUDIT_PROCESS:Ljava/lang/String; = "true"

.field private static final STOP_EDMAUDIT_PROCESS:Ljava/lang/String; = "false"

.field private static final TAG:Ljava/lang/String; = "AuditLogService"

.field private static final UID_AUDITD:I = 0x7cf

.field private static final swComponentWhitelist:[Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContainerOwnerCache:Landroid/content/ContentValues;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

.field private volatile mIsBootCompleted:Z

.field private mLinkedHashMap:Ljava/util/Map;

.field private final mMessagePackage:Ljava/lang/String;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private mSdBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "KeyStore"

    const-string/jumbo v1, "keystore"

    const-string v2, "AndroidKeyStoreKeyPairGeneratorSpi"

    const-string v3, "AndroidKeyStoreSpi"

    const-string v4, "OkHostnameVerifier"

    const-string v5, "OpenSSLRandom"

    const-string v6, "PKIXRevocationChecker"

    const-string v7, "ConscryptFileDescriptorSocket"

    const-string v8, "Connection"

    const-string v9, "CertPathValidator"

    const-string/jumbo v10, "ecryptfs"

    const-string v11, "conscrypt"

    const-string/jumbo v12, "fscrypt"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mSdBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/auditlog/AuditLogService$2;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->createAdmins()V

    const-string v0, "(^Admin) ([0-9]+) (.*$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->setContext(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mSdBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v2, v5

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v5}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    nop

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mMessagePackage:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v0, p7

    if-nez p9, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkIptablesEnabledForAdmins()Z

    move-result v1

    if-eqz v11, :cond_0

    iget v2, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-direct {v10, v13, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isIptablesMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v4, p8

    invoke-direct {v10, v13, v0, v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getCorrectUserForIptables(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    const/4 v3, 0x1

    const-string v5, "IPT_MDM_LOG"

    const-string v6, "IPT_MDM_LOG "

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move/from16 v4, p8

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v12, v5, :cond_4

    :cond_2
    if-nez v3, :cond_4

    const/4 v1, -0x1

    move-object v14, v0

    move v9, v1

    goto :goto_2

    :cond_3
    move/from16 v4, p8

    :cond_4
    move-object v14, v0

    move v9, v4

    :goto_2
    iget-object v0, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    const/4 v1, 0x0

    iget-object v7, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v7

    :try_start_0
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/auditlog/Admin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object v6, v2

    :try_start_1
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move v5, v1

    const/4 v1, -0x1

    if-eq v9, v1, :cond_8

    if-nez v5, :cond_5

    :try_start_2
    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :catchall_0
    move-exception v0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object v1, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move v10, v9

    goto/16 :goto_b

    :cond_5
    :goto_4
    if-ne v5, v9, :cond_6

    if-nez v5, :cond_8

    :cond_6
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v1

    invoke-direct {v10, v9, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move v10, v9

    goto/16 :goto_7

    :cond_8
    :goto_5
    :try_start_3
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object v1, v10

    move/from16 v3, p2

    move/from16 v4, p4

    move v15, v5

    move/from16 v5, p3

    move-object/from16 v16, v6

    move-object v6, v13

    move-object/from16 v17, v7

    move v7, v9

    move-object/from16 v18, v8

    move-object v8, v14

    move v10, v9

    move-object/from16 v9, v16

    :try_start_4
    invoke-direct/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterLoggingMessage(Lcom/samsung/android/knox/log/AuditLogRulesInfo;IZILjava/lang/String;ILjava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move/from16 v2, p2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move/from16 v3, p3

    :try_start_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v4, 0x1

    move/from16 v5, p4

    if-ne v5, v4, :cond_9

    :try_start_7
    const-string v4, "1"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto/16 :goto_b

    :cond_9
    :try_start_8
    const-string v4, "0"

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v6, v16

    :try_start_9
    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/auditlog/Admin;->write(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_8

    :cond_a
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v6, v16

    :goto_7
    move-object v1, v6

    move v9, v10

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v10, p0

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    move/from16 v2, p2

    :goto_8
    move/from16 v3, p3

    :goto_9
    move/from16 v5, p4

    :goto_a
    move-object/from16 v6, v16

    move-object v1, v6

    goto :goto_b

    :catchall_7
    move-exception v0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move v10, v9

    move-object v1, v6

    goto :goto_b

    :cond_b
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move v10, v9

    :try_start_a
    monitor-exit v17

    goto :goto_c

    :catchall_8
    move-exception v0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move v10, v9

    :goto_b
    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_b

    :cond_c
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move v10, v9

    :goto_c
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    return-void
.end method

.method private appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v8

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, v10, :cond_0

    iget-object v3, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n[logged by: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    :goto_2
    const-string v0, "AuditLogService"

    const-string v2, "Error: Invalid auditlog parameters!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    return v1
.end method

.method private checkIptablesEnabledForAdmins()Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/auditlog/Admin;

    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v7

    move v2, v7

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v4

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v3

    :goto_1
    or-int/2addr v1, v8

    goto :goto_0

    :cond_1
    return v1
.end method

.method private checkKernelEnabledForAdmins()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v2

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v4

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    or-int/2addr v1, v7

    goto :goto_0

    :cond_1
    return v1
.end method

.method private checkOwnContainerOrSelf(II)Z
    .locals 5

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v2, v3, :cond_1

    if-ne p1, v4, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-ne v0, p2, :cond_2

    return v1

    :cond_2
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v2, v3, :cond_3

    if-ne p1, v4, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private createAdmins()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/content/ContentValues;

    const-string v3, "adminUid"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "auditLogEnabled"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    const-string v5, "auditCriticalSize"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    :cond_0
    const-string v6, "auditMaximumSize"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    :cond_1
    const-string v7, "auditLogIptables"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    const-string v7, "auditLogMDM"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setMDMLogging(Z)V

    const-string v7, "auditLogBufferSize"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    :cond_3
    :goto_1
    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_AUDIT_LOG"

    const-string v3, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceLoggerPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_AUDIT_LOG"

    const-string v3, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .locals 13

    new-instance v0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>()V

    if-eqz p1, :cond_4

    const-string v1, "auditLogRuleSeverity"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "auditLogRuleOutcome"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "true"

    const-string v4, "auditLogKernelEnabled"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "auditLogRuleGroups"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v10, v6, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const-string v6, "auditLogRuleUsers"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v11, v9, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setSeverityRule(I)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setOutcomeRule(I)V

    :cond_3
    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setGroupsRule(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setKernelLogsEnabled(Z)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setUsersRule(Ljava/util/List;)V

    :cond_4
    return-object v0
.end method

.method private filterByGroup(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private filterByOutcome(ZLcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 3

    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private filterBySeverity(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private filterByUser(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private filterKernel(Ljava/lang/String;Lcom/samsung/android/knox/log/AuditLogRulesInfo;Ljava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z
    .locals 3

    const-string v0, "KERNEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "IPT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p4}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    nop

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method private filterLoggingMessage(Lcom/samsung/android/knox/log/AuditLogRulesInfo;IZILjava/lang/String;ILjava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z
    .locals 1

    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterBySeverity(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByOutcome(ZLcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p4, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByGroup(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p6, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByUser(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p5, p1, p7, p8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterKernel(Ljava/lang/String;Lcom/samsung/android/knox/log/AuditLogRulesInfo;Ljava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getAdminPackageNameForUid(I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/16 v1, 0x4e1f

    if-le v0, v1, :cond_1

    :cond_0
    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private getCorrectUserForIptables(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    const-string v0, "UID="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    const/4 p3, -0x1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    :cond_2
    :goto_1
    return p3
.end method

.method private getDeviceInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getDeviceInventory()Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, " -----------------------------------------\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OEM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEVICE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLATFORM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getDeviceOS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OS VERSION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BASEBAND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEVICE ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getSerialNumberInternal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .locals 5

    new-instance v0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "AUDITLOG"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getSerialNumberInternal()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-string/jumbo v3, "ril.serialnumber"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "00000000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "ro.boot.serialno"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v0, 0x0

    :try_start_1
    const-string v4, "AuditLogService"

    const-string v5, "could not get property"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isAuditLogEnabledInternal(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isIptablesMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "KERNEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IPT_MDM_LOG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setAvailableSize(I)J
    .locals 21

    move-object/from16 v0, p0

    const-wide/16 v1, -0x1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    mul-long v9, v7, v5

    const-wide/16 v11, 0x5

    mul-long/2addr v11, v9

    const-wide/16 v13, 0x64

    div-long/2addr v11, v13

    const-wide/32 v13, 0xa00000

    cmp-long v13, v11, v13

    const-wide/32 v14, 0x3200000

    if-ltz v13, :cond_0

    cmp-long v13, v11, v14

    if-gtz v13, :cond_0

    iget-object v15, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v17, "AUDITLOG"

    const-string v18, "auditLogBufferSize"

    move/from16 v16, p1

    move-wide/from16 v19, v11

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v13

    if-eqz v13, :cond_1

    move-wide v1, v11

    goto :goto_0

    :cond_0
    cmp-long v13, v11, v14

    if-ltz v13, :cond_1

    iget-object v14, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "AUDITLOG"

    const-string v17, "auditLogBufferSize"

    const-wide/32 v18, 0x3200000

    move/from16 v15, p1

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v13

    if-eqz v13, :cond_1

    const-wide/32 v1, 0x3200000

    :cond_1
    :goto_0
    return-wide v1
.end method

.method private startStopEdmAuditProcess()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkKernelEnabledForAdmins()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkIptablesEnabledForAdmins()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "security.edmaudit"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "security.edmaudit"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "security.edmaudit"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "AuditLogService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on start/stop edmaudit process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private updateEDMNativeHelperStatus()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/internal/EDMNativeHelper;->setAuditEnabled(Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkKernelEnabledForAdmins()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/internal/EDMNativeHelper;->setKernelLogsEnabled(Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkIptablesEnabledForAdmins()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/internal/EDMNativeHelper;->setIptablesLogsEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOff()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/knox/internal/EDMNativeHelper;->setIptablesLogsEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    :goto_0
    return-void
.end method

.method private validateRulesParameters(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v12

    move-object v7, v13

    invoke-direct/range {v0 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v0, p7

    move-object/from16 v11, p1

    move-object/from16 v12, p6

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v1, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " $3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v15, v0

    const/4 v9, 0x1

    move-object v0, v10

    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v12

    move-object v7, v15

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    move-object v15, v0

    :goto_0
    return-void
.end method

.method public AuditLoggerPrivileged(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v10, p0

    move-object/from16 v11, p7

    move-object/from16 v12, p6

    invoke-direct {v10, v12, v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v12

    move-object v7, v13

    invoke-direct/range {v0 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public AuditLoggerPrivilegedAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 14

    move-object v10, p0

    move-object/from16 v11, p7

    move-object/from16 v12, p6

    invoke-direct {v10, v12, v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v9, 0x1

    move-object v0, v10

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v12

    move-object v7, v13

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public checkAuditLogEnforce(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mMessagePackage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x7cf

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    :cond_2
    if-eqz v2, :cond_4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceLoggerPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "com.android.chrome"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "AuditLogService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AuditLogger: Module does not have AuditLog permission. Package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v4

    const-string v5, "AuditLogService"

    const-string v6, "AuditLogger"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_5
    :goto_1
    const-string v0, "AuditLogService"

    const-string v2, "Error: Invalid auditlog parameters!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    return v1
.end method

.method public disableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v10, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "auditLogEnabled"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v5, "AuditLog/isAuditLogEnabled"

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    move v11, v0

    if-eqz v11, :cond_2

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    const-string v7, "AuditLog status has changed to  disable"

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    return v11
.end method

.method public disableIPTablesLogging(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/enterprise/auditlog/Admin;

    const/4 v0, 0x0

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "auditLogIptables"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    invoke-virtual {v2, v9, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :goto_0
    move v11, v0

    if-eqz v11, :cond_2

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    const-string v7, "AuditLog iptables log status has changed to disabled"

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    return v11
.end method

.method public declared-synchronized dumpLogFile(Lcom/samsung/android/knox/ContextInfo;JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 12

    move-object v1, p0

    monitor-enter p0

    const/4 v2, 0x0

    if-eqz p7, :cond_4

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "AuditLogService"

    const-string v3, "check error"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->checkError()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "AuditLogService"

    const-string/jumbo v4, "error checking file descriptor"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_1
    :goto_0
    :try_start_3
    new-instance v0, Ljava/lang/SecurityManager;

    invoke-direct {v0}, Ljava/lang/SecurityManager;-><init>()V

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :try_start_4
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move v9, v3

    iget-object v3, v1, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v10, v3

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->getDumpState()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v11, p6

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/auditlog/Admin;->setFilter(Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_2

    monitor-exit p0

    return v2

    :cond_2
    move-object v3, v10

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p7

    :try_start_5
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/auditlog/Admin;->dump(JJLandroid/os/ParcelFileDescriptor;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2

    :cond_3
    move-object/from16 v11, p6

    monitor-exit p0

    return v2

    :catch_1
    move-exception v0

    move-object/from16 v11, p6

    :try_start_6
    const-string v3, "AuditLogService"

    const-string v4, "can\'t write to file descriptor"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    move-object/from16 v11, p6

    :try_start_7
    const-string v0, "AuditLogService"

    const-string/jumbo v3, "invalid output file"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v2

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public enableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 11

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move v10, v1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "auditLogEnabled"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    invoke-virtual {v3, v10, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    move v0, v3

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->setAvailableSize(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "adminUid"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    new-instance v2, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v10, v6, v7}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    iget-boolean v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    invoke-virtual {v2, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleDirectory()V

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleFile()V

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v7, "AuditLog/isAuditLogEnabled"

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_3

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "AuditLogService"

    const-string v8, "AuditLog status has changed to  enable"

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    return v0
.end method

.method public enableIPTablesLogging(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/enterprise/auditlog/Admin;

    const/4 v0, 0x0

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "auditLogIptables"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    invoke-virtual {v3, v9, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :goto_0
    move v11, v0

    if-eqz v11, :cond_2

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    const-string v7, "AuditLog iptables log status has changed to enabled"

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    return v11
.end method

.method public getAuditLogRules(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v2

    return-object v2
.end method

.method public getCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCriticalLogSize()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getCurrentLogFileSize(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCurrentLogFileSize()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getMaximumLogSize()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isAuditLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v0

    return v0
.end method

.method public isAuditLogEnabledAsUser(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    return v4

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_3

    :cond_1
    return v4

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    move-result v3

    if-eqz v3, :cond_3

    return v4

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public isAuditServiceRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isIPTablesLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
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

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    :goto_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    :goto_0
    return-void
.end method

.method public setAuditLogRules(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v12

    iget v13, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->validateRulesParameters(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/enterprise/auditlog/Admin;

    const/4 v0, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v15, v1

    if-eqz v14, :cond_1

    const-string v1, "auditLogEnabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, "auditLogRuleOutcome"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "auditLogRuleSeverity"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "auditLogRuleGroups"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auditLogKernelEnabled"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auditLogRuleUsers"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v7, v1

    const-string v1, "adminUid"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "AUDITLOG"

    invoke-virtual {v1, v2, v15, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const-string v1, "Cannot set filter on Database"

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, ""

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v14, :cond_6

    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V

    iget-object v1, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_3
    if-eqz v16, :cond_7

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v0, "AuditLogService"

    const-string v17, "AuditLog filter rules has changed."

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    move-object v1, v10

    move-object v2, v12

    move-object/from16 v19, v7

    move-object v7, v0

    move-object/from16 v20, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v9

    move/from16 v9, v18

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_7
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v17, v9

    :goto_4
    return v16
.end method

.method public setCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_4

    const/16 v1, 0x63

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v11, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "AUDITLOG"

    const-string v4, "auditCriticalSize"

    invoke-virtual {v2, v1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    const-string v3, "Cannot set critcal log size on Databank"

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v11, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    :cond_2
    if-eqz v0, :cond_3

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "AuditLogService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AuditLog critical size has changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public setMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_4

    const/16 v1, 0x63

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v11, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "AUDITLOG"

    const-string v4, "auditMaximumSize"

    invoke-virtual {v2, v1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    const-string v3, "Cannot set maximum log size on databank"

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v11, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    :cond_2
    if-eqz v0, :cond_3

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "AuditLogService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AuditLog maximum size has changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
