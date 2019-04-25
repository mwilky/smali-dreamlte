.class public Lcom/android/server/enterprise/security/DeviceAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;
.source "DeviceAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# static fields
.field public static final ACCOUNT_TYPE_EMAIL:Ljava/lang/String; = "com.samsung.android.email"

.field public static final ACCOUNT_TYPE_EMAIL_OLD:Ljava/lang/String; = "com.android.email"

.field public static final ACCOUNT_TYPE_EXCHANGE:Ljava/lang/String; = "com.samsung.android.exchange"

.field public static final ACCOUNT_TYPE_EXCHANGE_OLD:Ljava/lang/String; = "com.android.exchange"

.field public static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field public static final ACCOUNT_TYPE_GOOGLE_EXCHANGE:Ljava/lang/String; = "com.google.android.gm.exchange"

.field public static final ACCOUNT_TYPE_GOOGLE_IMAP:Ljava/lang/String; = "com.google.android.gm.legacyimap"

.field public static final ACCOUNT_TYPE_GOOGLE_POP3:Ljava/lang/String; = "com.google.android.gm.pop3"

.field public static final ACCOUNT_TYPE_GOOGLE_WORK:Ljava/lang/String; = "com.google.work"

.field public static final ACCOUNT_TYPE_LDAP:Ljava/lang/String; = "com.samsung.android.ldap"

.field public static final ACCOUNT_TYPE_LDAP_OLD:Ljava/lang/String; = "com.android.ldap"

.field public static final ACCOUNT_TYPE_SIGNIN:Ljava/lang/String; = "com.osp.app.signin"

.field public static final ADDITION_BLACKLIST:Ljava/lang/String; = "ADDITION_BLACKLIST"

.field public static final ADDITION_WHITELIST:Ljava/lang/String; = "ADDITION_WHITELIST"

.field public static final ALL_ACCOUNTS:Ljava/lang/String; = ".*"

.field public static final REMOVAL_BLACKLIST:Ljava/lang/String; = "REMOVAL_BLACKLIST"

.field public static final REMOVAL_WHITELIST:Ljava/lang/String; = "REMOVAL_WHITELIST"

.field private static final TAG:Ljava/lang/String; = "DeviceAccountPolicy"

.field private static mSupportedAccountTypes:[Ljava/lang/String;


# instance fields
.field private mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    const-string v1, "com.samsung.android.email"

    const-string v2, "com.samsung.android.exchange"

    const-string v3, "com.samsung.android.ldap"

    const-string v4, "com.osp.app.signin"

    const-string v5, "com.google"

    const-string v6, "com.google.android.gm.legacyimap"

    const-string v7, "com.google.android.gm.pop3"

    const-string v8, "com.google.android.gm.exchange"

    const-string v9, "com.google.work"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    iput-object p1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p3, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v3, 0x1

    invoke-static {v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v10, v4

    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v4, :cond_7

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v9, v4

    const/4 v4, 0x1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    move-object v8, v5

    const-string v5, "adminUid"

    iget v6, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "type"

    invoke-virtual {v8, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "name"

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "listType"

    invoke-virtual {v8, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, p0

    iget-object v5, v7, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AccountBlackWhiteList"

    invoke-virtual {v5, v6, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v15, v5

    if-eqz v3, :cond_1

    if-eqz v15, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move/from16 v16, v4

    if-eqz v15, :cond_5

    :try_start_2
    const-string v3, "ADDITION_BLACKLIST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/16 v17, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    const-string v19, "DeviceAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " has added account "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " to the addition blacklist."

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v12

    move/from16 v7, v17

    move-object/from16 v17, v8

    move/from16 v8, v18

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    move-wide/from16 v21, v10

    move-object v10, v13

    move v11, v14

    :try_start_3
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_2
    move-object/from16 v17, v8

    move-object/from16 v20, v9

    move-wide/from16 v21, v10

    const-string v3, "ADDITION_WHITELIST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has added account "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v20

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to the addition whitelist."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v12

    move v11, v14

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_3
    move-object/from16 v13, v20

    const-string v3, "REMOVAL_BLACKLIST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has added account "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to the removal blacklist."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v12

    move v11, v14

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const-string v3, "REMOVAL_WHITELIST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has added account "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to the removal whitelist."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v12

    move v11, v14

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide/from16 v4, v21

    goto :goto_8

    :catch_0
    move-exception v0

    move/from16 v3, v16

    move-wide/from16 v4, v21

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-wide v4, v10

    move/from16 v3, v16

    goto :goto_4

    :cond_5
    move-wide/from16 v21, v10

    :cond_6
    :goto_2
    move/from16 v3, v16

    move-wide/from16 v10, v21

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move/from16 v16, v3

    :goto_3
    move-wide v4, v10

    goto :goto_8

    :catch_2
    move-exception v0

    move-wide v4, v10

    :goto_4
    goto :goto_6

    :cond_7
    move-wide/from16 v21, v10

    move-wide/from16 v4, v21

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_5
    goto :goto_7

    :catchall_3
    move-exception v0

    move-wide v4, v10

    move/from16 v16, v3

    goto :goto_8

    :catch_3
    move-exception v0

    move-wide v4, v10

    :goto_6
    :try_start_4
    const-string v6, "DeviceAccountPolicy"

    const-string v7, "Handled Exception in addAccountsToBWLInternal()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v3, 0x0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :goto_7
    return v3

    :catchall_4
    move-exception v0

    move/from16 v16, v3

    :goto_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_8
    :goto_9
    const-string v0, "DeviceAccountPolicy"

    const-string v3, "addAccountsToBWLInternal() : invalid parameter."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DeviceAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAccountMatch() : matched. match = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,target ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "DeviceAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAccountMatch() : invalid matched. match = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,target ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v13

    iget v14, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v4, 0x0

    const-string v0, "adminUid"

    const-string/jumbo v5, "type"

    const-string/jumbo v6, "listType"

    filled-new-array {v0, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const/4 v5, 0x1

    aput-object v2, v0, v5

    const/4 v6, 0x2

    aput-object v3, v0, v6

    move-object v12, v0

    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    move-wide v10, v6

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "adminUid"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "type"

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "listType"

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "AccountBlackWhiteList"

    invoke-virtual {v6, v7, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    move-object v9, v6

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v20, v9

    move-wide v6, v10

    move-object/from16 v18, v12

    goto/16 :goto_1

    :cond_0
    iget-object v5, v1, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AccountBlackWhiteList"

    invoke-virtual {v5, v6, v15, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v17, v5

    if-eqz v17, :cond_4

    :try_start_1
    const-string v4, "ADDITION_BLACKLIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v4

    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    const-string v19, "DeviceAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has removed all accounts from addition blacklist."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v13

    const/4 v8, 0x1

    move-object/from16 v20, v9

    move/from16 v9, v18

    move-wide/from16 v22, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v21

    move-object/from16 v18, v12

    move/from16 v12, v16

    :try_start_2
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v20, v9

    move-wide/from16 v22, v10

    move-object/from16 v18, v12

    const-string v4, "ADDITION_WHITELIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v4

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DeviceAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has removed all accounts from addition whitelist."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v13

    move/from16 v12, v16

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    const-string v4, "REMOVAL_BLACKLIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v4

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DeviceAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has removed all accounts from removal blacklist."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v13

    move/from16 v12, v16

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v4, "REMOVAL_WHITELIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v4

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DeviceAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has removed all accounts from removal whitelist."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v13

    move/from16 v12, v16

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide/from16 v6, v22

    goto :goto_4

    :catch_0
    move-exception v0

    move/from16 v4, v17

    move-wide/from16 v6, v22

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v18, v12

    move-wide v6, v10

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v18, v12

    move-wide v6, v10

    move/from16 v4, v17

    goto :goto_2

    :cond_4
    move-wide/from16 v22, v10

    move-object/from16 v18, v12

    :cond_5
    :goto_0
    move-wide/from16 v6, v22

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :cond_6
    move-object/from16 v20, v9

    move-wide v6, v10

    move-object/from16 v18, v12

    :goto_1
    :try_start_3
    const-string v8, "DeviceAccountPolicy"

    const-string v9, "clearAccountsFromBWLInternal() : no accounts."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-wide v6, v10

    move-object/from16 v18, v12

    move/from16 v17, v4

    goto :goto_4

    :catch_3
    move-exception v0

    move-wide v6, v10

    move-object/from16 v18, v12

    :goto_2
    :try_start_4
    const-string v5, "DeviceAccountPolicy"

    const-string v8, "Handled Exception in clearAccountsFromBWLInternal()"

    invoke-static {v5, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v17, 0x0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    nop

    return v17

    :catchall_3
    move-exception v0

    move/from16 v17, v4

    :goto_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_SECURITY"

    const-string v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "DeviceAccountPolicy"

    const-string/jumbo v2, "getAccountsFromBWLInternal() : no support type."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "DeviceAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountsFromBWLInternal() : Account list for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    new-instance v6, Lcom/samsung/android/knox/accounts/AccountControlInfo;

    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/AccountControlInfo;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/AccountControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/AccountControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez v0, :cond_0

    const-string v0, "auditlog"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadAccounts() : userId  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AccountBlackWhiteList"

    const-string v2, "adminUid"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DeviceAccountPolicy"

    const-string/jumbo v2, "loadAccounts() : admin is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v3, "adminUid"

    const-string/jumbo v4, "name"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "containerID"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "userID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "listType"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AccountBlackWhiteList"

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "DeviceAccountPolicy"

    const-string/jumbo v7, "loadAccounts() : list empty "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string v8, "adminUid"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    const-string/jumbo v11, "name"

    invoke-virtual {v7, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v9, "DeviceAccountPolicy"

    const-string/jumbo v10, "loadAccounts() : can not get admin. "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    goto :goto_1

    :cond_4
    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "DeviceAccountPolicy"

    const-string v6, "Handled Exception in loadAccounts()"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v12

    iget v13, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_8

    if-nez p3, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v3, 0x1

    invoke-static {v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v10, v4

    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v4, :cond_7

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v9, v4

    const/4 v4, 0x1

    const-string v5, "adminUid"

    const-string/jumbo v6, "type"

    const-string/jumbo v7, "name"

    const-string/jumbo v8, "listType"

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v7, 0x2

    aput-object v9, v5, v7

    const/4 v7, 0x3

    aput-object v2, v5, v7

    move-object v7, v5

    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "AccountBlackWhiteList"

    invoke-virtual {v6, v14, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v14, v6

    if-eqz v3, :cond_1

    if-eqz v14, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    if-eqz v14, :cond_5

    :try_start_2
    const-string v3, "ADDITION_BLACKLIST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v3

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "DeviceAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has removed account "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from addition blacklist."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v12

    const/4 v5, 0x5

    move/from16 v6, v17

    move-object/from16 v17, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, v19

    move-object/from16 v22, v9

    move-object/from16 v9, v20

    move-wide/from16 v23, v10

    move-object/from16 v10, v21

    move v11, v15

    :try_start_3
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v25, v0

    goto/16 :goto_2

    :cond_2
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v22, v9

    move-wide/from16 v23, v10

    const-string v3, "ADDITION_WHITELIST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has removed account "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v22

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from addition whitelist."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v12

    move-object/from16 v25, v0

    move-object v0, v11

    move v11, v15

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_3
    move-object/from16 v25, v0

    move-object/from16 v0, v22

    const-string v3, "REMOVAL_BLACKLIST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has removed account "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from removal blacklist."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v12

    move v11, v15

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const-string v3, "REMOVAL_WHITELIST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "DeviceAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has removed account "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from removal whitelist."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v12

    move v11, v15

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide/from16 v4, v23

    goto :goto_8

    :catch_0
    move-exception v0

    move/from16 v3, v16

    move-wide/from16 v4, v23

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-wide v4, v10

    move/from16 v3, v16

    goto :goto_4

    :cond_5
    move-object/from16 v25, v0

    move-wide/from16 v23, v10

    :cond_6
    :goto_2
    move/from16 v3, v16

    move-wide/from16 v10, v23

    move-object/from16 v0, v25

    const/4 v14, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move/from16 v16, v3

    :goto_3
    move-wide v4, v10

    goto :goto_8

    :catch_2
    move-exception v0

    move-wide v4, v10

    :goto_4
    goto :goto_6

    :cond_7
    move-wide/from16 v23, v10

    move-wide/from16 v4, v23

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_5
    goto :goto_7

    :catchall_3
    move-exception v0

    move-wide v4, v10

    move/from16 v16, v3

    goto :goto_8

    :catch_3
    move-exception v0

    move-wide v4, v10

    :goto_6
    :try_start_4
    const-string v6, "DeviceAccountPolicy"

    const-string v7, "Handled Exception in removeAccountsFromBWLInternal()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v3, 0x0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :goto_7
    return v3

    :catchall_4
    move-exception v0

    move/from16 v16, v3

    :goto_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_8
    :goto_9
    const-string v0, "DeviceAccountPolicy"

    const-string/jumbo v3, "removeAccountsFromBWLInternal() : invalid parameter."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addAccountsToAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAccountsFromAdditionBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromAdditionWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromRemovalBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromRemovalWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedAccountTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const-string v2, "ADDITION_BLACKLIST"

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "ADDITION_WHITELIST"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const-string v5, "DeviceAccountPolicy"

    const-string/jumbo v6, "isAccountAdditionAllowed() : no BlackList."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p3, :cond_2

    const v4, 0x1040079

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_2
    const-string v4, "DeviceAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isAccountAdditionAllowed() : account has blocked. userId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_3
    goto :goto_0

    :cond_4
    return v4
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    return v2
.end method

.method public isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 8

    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p4, p1, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "REMOVAL_WHITELIST"

    invoke-direct {p0, p4, p1, v1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v3, "DeviceAccountPolicy"

    const-string/jumbo v4, "isAccountRemovalAllowedAsUser() : no BlackList."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "DeviceAccountPolicy"

    const-string/jumbo v7, "isAccountRemovalAllowedAsUser() : no WhiteList."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p3, :cond_2

    const v2, 0x104007a

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_2
    const-string v2, "DeviceAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAccountAdditionAllowed() : account has blocked. userId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_3
    goto :goto_0

    :cond_4
    return v2
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
    .locals 0

    return-void
.end method

.method public onContainerCreation(II)V
    .locals 3

    const-string v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceAccountPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3

    const-string v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceAccountPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 3

    const-string v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceAccountPolicy.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
