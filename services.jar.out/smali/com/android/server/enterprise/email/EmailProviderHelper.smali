.class public Lcom/android/server/enterprise/email/EmailProviderHelper;
.super Ljava/lang/Object;
.source "EmailProviderHelper.java"


# static fields
.field private static final EMAIL_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.android.email.mdm.provider"

.field public static final FAIL_SET_ACCOUNT_OBJECT:J = -0x1L

.field private static final LDAP_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.android.email.ldap.provider"

.field private static final TAG:Ljava/lang/String; = "EmailProviderHelperService"

.field private static final TAG_MAP_ACCOUNT:Ljava/lang/String; = "A"

.field private static mAccountObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    invoke-static {v5, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    nop

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    nop

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v9, "EmailProviderHelperService"

    const-string v10, "createEmailContentProviderCursor() : Failed, Exception occurs. "

    invoke-static {v9, v10, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v3

    :goto_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static createID()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, -0x1

    mul-long/2addr v2, v0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    move-wide v0, v2

    return-wide v0
.end method

.method public static deleteLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getLDAPContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "deleteLDAPAccount"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "deleteLDAPAccount"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteLDAPAccount() : ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "EmailProviderHelperService"

    const-string v3, "deleteLDAPAccount() : cannot get cursor from EmailProvider."

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "EmailProviderHelperService"

    const-string v4, "deleteLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static getAccountId(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 15

    const-wide/16 v0, -0x1

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_a

    if-nez v4, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v5, 0x0

    if-eqz p5, :cond_4

    move-object v6, v2

    move-object v7, v3

    if-nez v6, :cond_1

    move-object v8, v7

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v9, v4

    invoke-static/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v10

    if-eqz v10, :cond_3

    array-length v11, v10

    :goto_1
    if-ge v5, v11, :cond_3

    aget-object v12, v10, v5

    if-eqz v12, :cond_2

    iget-object v13, v12, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    if-eqz v13, :cond_2

    iget-object v13, v12, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v12, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-wide v0, v12, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    goto/16 :goto_5

    :cond_4
    if-eqz v2, :cond_9

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-static/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v9

    if-eqz v9, :cond_8

    array-length v10, v9

    :goto_3
    if-ge v5, v10, :cond_8

    aget-object v11, v9, v5

    if-eqz v11, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    iget-wide v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    goto :goto_5

    :cond_9
    const-string v5, "EmailProviderHelperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAccountId() : [EMAIL] faild with Invalid input parameters. arg1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , arg2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , arg3 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-wide v0

    :cond_a
    :goto_6
    const-string v5, "EmailProviderHelperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAccountId() : faild with Invalid input parameters. arg1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , arg2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , arg3 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private static getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v5

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x0

    new-array v4, v2, [J

    move-object v0, v4

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    aput-wide v5, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "EmailProviderHelperService"

    const-string/jumbo v4, "getAllAccountIDS() : Failed, Exception occurs. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return-object v0

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static getAllEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, v2, v4

    invoke-static {p0, p1, v5, v6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    add-int/lit8 v6, v3, 0x1

    aput-object v5, v0, v3

    nop

    move v3, v6

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static getAllEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, v2, v4

    invoke-static {p0, p1, v5, v6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    add-int/lit8 v6, v3, 0x1

    aput-object v5, v0, v3

    nop

    move v3, v6

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static getAllLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/sec/enterprise/email/EnterpriseLDAPAccount;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getLDAPContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllLDAPAccounts"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_0

    const-string/jumbo v3, "email.ldap.all.account"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v0, v3

    if-nez v0, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "EmailProviderHelperService"

    const-string/jumbo v4, "getAllLDAPAccount() : Fail to get Data from Email. "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "EmailProviderHelperService"

    const-string/jumbo v4, "getAllLDAPAccount() : cannot get cursor from EmailProvider."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EmailProviderHelperService"

    const-string/jumbo v5, "getAllLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0

    :goto_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method public static getEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    return-object v1

    :cond_0
    const-string v1, "EmailProviderHelperService"

    const-string/jumbo v2, "getEmailAccountObject() : failed. "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getEmailContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.samsung.android.email.mdm.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseEmailAccount() : Failed, invalid account Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "getAccountInfo"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "email.account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-object v0, v4

    :cond_1
    goto :goto_0

    :cond_2
    const-string v3, "EmailProviderHelperService"

    const-string/jumbo v4, "getEnterpriseEmailAccount() : Fail to get Data from Email. "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    goto :goto_1

    :cond_3
    const-string v2, "EmailProviderHelperService"

    const-string/jumbo v3, "getEnterpriseEmailAccount() : cannot get cursor from EmailProvider."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "EmailProviderHelperService"

    const-string/jumbo v4, "getEnterpriseEmailAccount() : Failed, Exception occurs. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-nez v0, :cond_5

    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseEmailAccount() : Failed, accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseEmailAccount() : successfully get Data from Email, accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object v0

    :goto_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public static getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseExchangeAccount() : Failed, invalid account Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "getAccountInfo"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "eas.account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-object v0, v4

    :cond_1
    goto :goto_0

    :cond_2
    const-string v3, "EmailProviderHelperService"

    const-string/jumbo v4, "getEnterpriseExchangeAccount() : Fail to get Data from Email. "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    goto :goto_1

    :cond_3
    const-string v2, "EmailProviderHelperService"

    const-string/jumbo v3, "getEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "EmailProviderHelperService"

    const-string/jumbo v4, "getEnterpriseExchangeAccount() : Failed, Exception occurs. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-nez v0, :cond_5

    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseExchangeAccount() : Failed, accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseExchangeAccount() : successfully get Data from Email. accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object v0

    :goto_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public static getEnterpriseLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getLDAPContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "getLDAPAccount"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "email.ldap.account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    move-object v0, v4

    const-string v4, "EmailProviderHelperService"

    const-string/jumbo v5, "getEnterpriseLDAPAccount() : successfully get Data from Email. "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "EmailProviderHelperService"

    const-string/jumbo v4, "getEnterpriseLDAPAccount() : Fail to get Data from Email. "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    goto :goto_1

    :cond_2
    const-string v2, "EmailProviderHelperService"

    const-string/jumbo v3, "getEnterpriseLDAPAccount() : cannot get cursor from EmailProvider."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "EmailProviderHelperService"

    const-string/jumbo v4, "getEnterpriseExchangeAccount() : Failed, Exception occurs. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    return-object v0

    :goto_4
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public static getExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    return-object v1

    :cond_0
    const-string v1, "EmailProviderHelperService"

    const-string/jumbo v2, "getExchangeAccountObject() : failed. "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getLDAPContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.samsung.android.email.ldap.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setEnterpriseEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)J
    .locals 5

    if-nez p1, :cond_0

    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "setEnterpriseEmailAccountObject() : failed with invalid object. "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createID()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0
.end method

.method public static setEnterpriseExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)J
    .locals 5

    if-nez p1, :cond_0

    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "setEnterpriseExchangeAccountObject() : failed with invalid object. "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createID()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0
.end method

.method public static updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z
    .locals 11

    const/4 v0, 0x0

    invoke-static {p1, p2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->setEnterpriseEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "updateEmailAccount"

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    const/4 v4, 0x1

    iget-object v5, p2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    aput-object v5, v9, v4

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "updateEmailAccount"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    :cond_0
    const-string v4, "EmailProviderHelperService"

    const-string/jumbo v5, "updateEnterpriseEmailAccount() : cannot get cursor from EmailProvider."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "EmailProviderHelperService"

    const-string/jumbo v6, "updateEnterpriseEmailAccount() : Failed, Exception occurs. "

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    const-string v4, "EmailProviderHelperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEnterpriseEmailAccount() : ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :goto_3
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method

.method public static updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z
    .locals 11

    const/4 v0, 0x0

    invoke-static {p1, p2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->setEnterpriseExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "updateEmailAccount"

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "eas"

    aput-object v5, v9, v4

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "updateEmailAccount"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    :cond_0
    const-string v4, "EmailProviderHelperService"

    const-string/jumbo v5, "updateEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "EmailProviderHelperService"

    const-string/jumbo v6, "updateEnterpriseExchangeAccount() : Failed, Exception occurs. "

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    const-string v4, "EmailProviderHelperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEnterpriseExchangeAccount() : ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :goto_3
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method
