.class public Lcom/android/server/enterprise/email/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/SettingsUtils$PasswordIntentFieldName;
    }
.end annotation


# static fields
.field private static final ACCOUNT_CONTENT_URI:Landroid/net/Uri;

.field static final ACTION_EAS_INTENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EAS_INTENT_INTERNAL"

.field static final ACTION_EMAIL_DEVICEID_RESULT:Ljava/lang/String; = "android.intent.action.enterprise.GET_DEVICEID"

.field static final ACTION_EMAIL_ENABLE_MSG_COMPOSE:Ljava/lang/String; = "com.android.email.ENABLE_MESSAGECOMPOSE"

.field static final ACTION_EMAIL_GET_DEVICEID:Ljava/lang/String; = "com.android.email.GET_DEVICEID"

.field static final ACTION_EMAIL_INSTALL_CERT:Ljava/lang/String; = "com.android.email.INSTALL_CERTIFICATE"

.field static final ACTION_EMAIL_RENAME_CERTIFICATE:Ljava/lang/String; = "com.android.email.RENAME_CERTIFICATE"

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field static final EMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.android.email.permission.ACCESS_PROVIDER"

.field private static final HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

.field static final KNOX_EMAIL_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EMAIL"

.field static final MDM_EMAIL_PERMISSION:Ljava/lang/String; = "android.permission.sec.MDM_EMAIL"

.field static final NEWEMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.samsung.android.email.permission.ACCESS_PROVIDER"

.field public static final NEW_EMAIL_PKG_NAME:Ljava/lang/String; = "com.samsung.android.email.provider"

.field private static final POLICIES_CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SettingsUtils"

.field private static adminPkg:Ljava/lang/String;

.field private static emails:Landroid/content/Context;

.field private static mServerPassword:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mServerPasswordFocus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.email.provider/policies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->POLICIES_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIDforAccount()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    mul-long/2addr v2, v4

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    move-wide v0, v2

    const-string v2, "SettingsUtils"

    const-string v3, ">>>>  createIDforAccount   <<<<"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>  createIDforAccount   <<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private static getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 41

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    cmp-long v0, v1, v8

    if-gtz v0, :cond_0

    const-string v0, "SettingsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getEASAccounts fail : invalid account Id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_0
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    iget v9, v4, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v0, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getEASAccounts() :    "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "_id"

    const-string/jumbo v12, "displayName"

    const-string/jumbo v13, "emailAddress"

    const-string/jumbo v14, "syncLookback"

    const-string/jumbo v15, "syncInterval"

    const-string/jumbo v16, "peakDays"

    const-string/jumbo v17, "peakStartMinute"

    const-string/jumbo v18, "peakEndMinute"

    const-string/jumbo v19, "peakSchedule"

    const-string/jumbo v20, "offPeakSchedule"

    const-string/jumbo v21, "roamingSchedule"

    const-string/jumbo v22, "hostAuthKeyRecv"

    const-string/jumbo v23, "hostAuthKeySend"

    const-string/jumbo v24, "flags"

    const-string/jumbo v25, "isDefault"

    const-string v26, "compatibilityUuid"

    const-string/jumbo v27, "senderName"

    const-string/jumbo v28, "ringtoneUri"

    const-string/jumbo v29, "protocolVersion"

    const-string/jumbo v30, "signature"

    const-string v31, "calendarSyncLookback"

    const-string/jumbo v32, "emailsize"

    const-string/jumbo v33, "roamingemailsize"

    filled-new-array/range {v11 .. v33}, [Ljava/lang/String;

    move-result-object v36

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v0, 0x0

    if-eqz v8, :cond_2

    :try_start_0
    invoke-static {v8, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v12, v0, v13}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v12

    sput-object v12, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string v12, "SettingsUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getAccountDetails for Persona : USER space   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v12, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v12, v0, v13}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v12

    sput-object v12, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string v12, "SettingsUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getAccountDetails : USER space   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    sput-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    :try_start_1
    sget-object v12, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v35, p1

    invoke-virtual/range {v34 .. v39}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v6, v12

    if-eqz v6, :cond_3

    const-string v12, "SettingsUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getAccount row count : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v12, "SettingsUtils"

    const-string/jumbo v13, "getAccount row count : Email cursor is invalid"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v6, :cond_f

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v12, Lcom/android/server/enterprise/email/AccountMetaData;

    invoke-direct {v12}, Lcom/android/server/enterprise/email/AccountMetaData;-><init>()V

    move-object v5, v12

    const-string v12, "_id"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    const-string/jumbo v12, "displayName"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    const-string/jumbo v12, "emailAddress"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v12, "syncLookback"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    const-string/jumbo v12, "syncInterval"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    const-string/jumbo v12, "peakDays"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    const-string/jumbo v12, "peakStartMinute"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    const-string/jumbo v12, "peakEndMinute"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    const-string/jumbo v12, "peakSchedule"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    const-string/jumbo v12, "offPeakSchedule"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    const-string/jumbo v12, "roamingSchedule"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    const-string/jumbo v12, "hostAuthKeyRecv"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const-string/jumbo v12, "hostAuthKeySend"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const-string/jumbo v12, "flags"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iget v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/4 v13, 0x2

    and-int/2addr v12, v13

    const/4 v14, 0x1

    if-ne v13, v12, :cond_4

    move v12, v14

    goto :goto_2

    :cond_4
    move v12, v0

    :goto_2
    iput-boolean v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iget v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/16 v13, 0x40

    and-int/2addr v12, v13

    if-ne v13, v12, :cond_5

    move v12, v14

    goto :goto_3

    :cond_5
    move v12, v0

    :goto_3
    iput-boolean v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    const-string/jumbo v12, "isDefault"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v12, v14, :cond_6

    move v12, v14

    goto :goto_4

    :cond_6
    move v12, v0

    :goto_4
    iput-boolean v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    const-string v12, "compatibilityUuid"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    const-string/jumbo v12, "senderName"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    const-string/jumbo v12, "ringtoneUri"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    const-string/jumbo v12, "protocolVersion"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    const-string/jumbo v12, "signature"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    const-string v12, "calendarSyncLookback"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    const-string/jumbo v12, "emailsize"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    const-string/jumbo v12, "roamingemailsize"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    iget-wide v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const/16 v17, 0x1

    sget-object v18, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-wide v15, v12

    move-object/from16 v13, p0

    move v12, v14

    move-wide v14, v15

    move-object/from16 v16, v5

    invoke-static/range {v13 .. v18}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v13

    move/from16 v19, v13

    iget-wide v14, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const/16 v17, 0x0

    sget-object v18, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v13, p0

    move-object/from16 v16, v5

    invoke-static/range {v13 .. v18}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v13

    if-eqz v19, :cond_c

    if-nez v13, :cond_7

    goto/16 :goto_5

    :cond_7
    if-eqz p6, :cond_8

    invoke-static {v9, v1, v2, v3, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;

    move-result-object v15

    aget-object v12, v15, v0

    iput-object v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v0, v15, v12

    iput-object v0, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    iget-object v0, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string/jumbo v12, "eas"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x1

    iput-boolean v12, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v15, 0x0

    aget-object v15, v0, v15

    iput-object v15, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    aget-object v15, v0, v12

    iput-object v15, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    aget-object v15, v0, v12

    iput-object v15, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    const-string v0, "_id"

    const-string/jumbo v12, "name"

    const-string/jumbo v15, "type"

    const-string/jumbo v3, "value"

    const-string v4, "account_id"

    filled-new-array {v0, v12, v15, v3, v4}, [Ljava/lang/String;

    move-result-object v22

    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, p2

    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_f

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_f

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_a
    const-string/jumbo v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    if-eqz v0, :cond_b

    const-string v4, "AllowHTMLEmail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v5, 0x0

    const-string v0, "SettingsUtils"

    const-string/jumbo v3, "getAccountIds : null "

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v7, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_e
    return-object v5

    :cond_f
    :goto_6
    if-eqz v6, :cond_10

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v7, :cond_12

    :goto_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_11

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v7, :cond_12

    goto :goto_7

    :cond_12
    :goto_8
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :goto_9
    if-eqz v6, :cond_13

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_13
    if-eqz v7, :cond_14

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v0

    :goto_a
    nop

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v5
.end method

.method public static getAccountContentUri(I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 10

    const-class v0, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v4

    const/4 v8, 0x0

    move-wide v5, p1

    move-object v7, p3

    move-object v9, p0

    invoke-static/range {v2 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 11

    const-class v1, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v10, v2

    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getAccountDetails() :  with P"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v4

    move-wide v5, p1

    move-object v7, p3

    move v8, p4

    move-object v9, p0

    invoke-static/range {v2 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v5

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;
    .locals 7

    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccountFromEnterpriseEmailAccount() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v1}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    move-object v0, v1

    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    long-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->id:I

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncLookback:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncInterval:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    iget-boolean v4, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    iput-boolean v4, v0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    new-instance v5, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v5}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    iput v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v4, v5, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v1, v5, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseTLS:Z

    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    new-instance v5, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v5}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    iput v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v1, v3, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    iget-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    iput-boolean v2, v1, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    iget-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseTLS:Z

    iput-boolean v2, v1, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    iget-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    iput-boolean v2, v1, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    return-object v0
.end method

.method public static getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;
    .locals 8

    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccountFromEnterpriseExchangeAccount() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v1}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    move-object v0, v1

    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    long-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->id:I

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    iget-boolean v4, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    iput-boolean v4, v0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakDays:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakStartMinute:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakEndMinute:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakSyncSchedule:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->offPeakSyncSchedule:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->roamingSyncSchedule:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncCalendarAge:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailBodyTruncationSize:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailRoamingBodyTruncationSize:I

    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncContacts:Z

    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncCalendar:Z

    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncTasks:Z

    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncNotes:Z

    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    new-instance v6, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    const-string/jumbo v7, "eas"

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v7, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v5, v6, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v7, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v7, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v4, v6, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v1, v6, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v7, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iput-boolean v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v7, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    iput-boolean v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v7, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iput-boolean v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    new-instance v6, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    const-string/jumbo v7, "eas"

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v7, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v5, v6, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v1, v3, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    iget-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iput-boolean v2, v1, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    iget-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    iput-boolean v2, v1, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    iget-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iput-boolean v2, v1, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    return-object v0
.end method

.method static declared-synchronized getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .locals 12

    const-class v1, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v1

    move-object v0, p0

    :try_start_0
    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v11, v2

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAccountId : USER space    UserHandle.myUserId() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object v10, v0

    invoke-static/range {v2 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v4

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)J
    .locals 33

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_b

    if-eqz v7, :cond_b

    if-nez v8, :cond_0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v25, v7

    goto/16 :goto_9

    :cond_0
    if-eqz p6, :cond_1

    if-eqz v6, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v9, v0

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x3

    new-array v14, v0, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v8, v14, v13

    const/16 v16, 0x1

    aput-object v7, v14, v16

    const/4 v11, 0x2

    aput-object v9, v14, v11

    iget v10, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const-wide/16 v20, -0x1

    move-wide/from16 v22, v20

    if-eqz v13, :cond_3

    :try_start_0
    invoke-static {v13, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v13}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v25, v7

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v7, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string v0, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAccountIdInternal : USER space   "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v25, v7

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v13}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v11, 0x0

    invoke-virtual {v1, v0, v11, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string v0, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAccountIdInternal : USER space   "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 v17, v10

    move/from16 v24, v13

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v25, v7

    move/from16 v17, v10

    move/from16 v24, v13

    goto/16 :goto_8

    :cond_3
    move-object/from16 v25, v7

    :try_start_2
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :goto_0
    nop

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "protocol=? AND address=? AND login=? "
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v15, 0x0

    move/from16 v17, v10

    move-object v10, v0

    const/4 v1, 0x2

    const/16 v24, 0x0

    move-object/from16 v11, p0

    move/from16 v26, v24

    move/from16 v24, v13

    move-object v13, v7

    :try_start_4
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v0

    :try_start_5
    const-string v0, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAccountId for HOST_AUTH row count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    int-to-long v10, v0

    :try_start_6
    const-string v0, "SettingsUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getAccountIdInternal : hostAuthId "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-wide/from16 v22, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    move-wide/from16 v22, v10

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-wide/from16 v22, v10

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v7, v18

    goto/16 :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v7, v18

    goto :goto_2

    :catchall_2
    move-exception v0

    move/from16 v17, v10

    move/from16 v24, v13

    move-object/from16 v7, v18

    goto/16 :goto_7

    :catch_5
    move-exception v0

    move/from16 v17, v10

    move/from16 v24, v13

    const/16 v26, 0x0

    move-object/from16 v7, v18

    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v7, :cond_5

    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide/from16 v10, v22

    const/4 v1, 0x0

    cmp-long v0, v20, v10

    if-eqz v0, :cond_8

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v29

    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v26

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v16

    move-object/from16 v31, v0

    :try_start_8
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v30, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/16 v32, 0x0

    move-object/from16 v28, p1

    invoke-virtual/range {v27 .. v32}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    const-string v0, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getAccountId for ACCOUNT row count : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    const-string v0, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getAccountIdInternal : ACCOUNT "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_6
    if-eqz v1, :cond_9

    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v1, :cond_9

    goto :goto_4

    :goto_5
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    move-object/from16 v29, v12

    move-object/from16 v31, v14

    :cond_9
    :goto_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v3

    :catchall_4
    move-exception v0

    :goto_7
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    :catch_7
    move-exception v0

    move/from16 v17, v10

    move/from16 v24, v13

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v3

    :cond_b
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v25, v7

    :goto_9
    const-string v1, "SettingsUtils"

    const-string/jumbo v5, "getAccountId : Error :: Invalid input parameters."

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3
.end method

.method public static getAccountType(ZI)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "com.samsung.android.exchange"

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.email"

    :goto_0
    return-object v0
.end method

.method private static getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, "\\"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "\\"

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    const/4 v3, 0x2

    array-length v4, v1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_0

    :cond_0
    array-length v3, v1

    if-ne v2, v3, :cond_1

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    aput-object p0, v0, v2

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getEasPackageName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.email.provider"

    return-object v0
.end method

.method public static getEmailPackageName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.email.provider"

    return-object v0
.end method

.method public static getHostAuthContentUri(I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/samsung/android/knox/accounts/LDAPAccount;

    invoke-direct {v1}, Lcom/samsung/android/knox/accounts/LDAPAccount;-><init>()V

    move-object v0, v1

    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    return-object v0
.end method

.method public static getPackageNameForUid(I)Ljava/lang/String;
    .locals 3

    sget v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    if-ne p0, v0, :cond_0

    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPackageNameForUid :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;
    .locals 10

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.knox.intent.action.RESULT_EMAILACCOUNT_PASSWORD_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "edm.intent.action.internal.RESULT_EMAILACCOUNT_PASSWORD"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Lcom/android/server/enterprise/email/SettingsUtils$1;

    invoke-direct {v3, v2, v0}, Lcom/android/server/enterprise/email/SettingsUtils$1;-><init>([Ljava/lang/String;Landroid/os/ConditionVariable;)V

    move-object v9, v3

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v7, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const/4 v8, 0x0

    move-object v3, p3

    move-object v4, v9

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.action.REQUEST_EMAILACCOUNT_PASSWORD_INTERNAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p3, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SettingsUtils"

    const-string/jumbo v5, "password obtained"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "SettingsUtils"

    const-string/jumbo v5, "timeout while obtaining password"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object v2
.end method

.method public static getPoliciesContentUri(I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/policies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-class v3, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v6, v0

    iget v0, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v7, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v0, 0x2

    new-array v12, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v10, 0x0

    aput-object v0, v12, v10

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    const-string/jumbo v11, "smimeOwnSignCertAlias"

    goto :goto_0

    :cond_0
    const-string/jumbo v11, "smimeOwnCertificateAlias"

    :goto_0
    aput-object v11, v12, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_2

    :try_start_1
    invoke-static {v6, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v10, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string v0, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSMIMEAlias : USER space   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget v0, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v10, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string v0, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSMIMEAlias : USER space   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string v0, "SettingsUtils"

    const-string/jumbo v10, "getSMIMEAlias : get Context with no MUM Enviroment."

    invoke-static {v0, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id = "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v0

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v5, v0

    if-eqz v5, :cond_4

    const-string v0, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAccount row count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    if-eqz p4, :cond_3

    const-string/jumbo v0, "smimeOwnSignCertAlias"

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "smimeOwnCertificateAlias"

    :goto_2
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    :cond_4
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v5, :cond_5

    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :goto_4
    nop

    :try_start_3
    const-string v10, "SettingsUtils"

    const-string/jumbo v11, "getSMIMEAlias() : failed. "

    invoke-static {v10, v11, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x0

    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    :goto_5
    monitor-exit v3

    return-object v4

    :goto_6
    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static getSMIMEModeFromAction(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_5

    const-string v1, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_SIGNING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :cond_5
    :goto_2
    return v0
.end method

.method public static getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getSecurityPassword() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getSecurityPasswordFocus(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getSecurityPasswordFocus() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I
    .locals 11

    const/16 v0, 0x64

    const/4 v1, 0x6

    const/16 v2, 0x32

    const/16 v3, 0x14

    const/16 v4, 0xa

    const/4 v5, 0x3

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x5

    if-eqz p0, :cond_6

    const-string v10, "2.5"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    if-gt p1, v8, :cond_0

    return v8

    :cond_0
    if-gt p1, v9, :cond_1

    return v5

    :cond_1
    if-gt p1, v4, :cond_2

    return v7

    :cond_2
    if-gt p1, v3, :cond_3

    return v9

    :cond_3
    if-gt p1, v2, :cond_4

    return v1

    :cond_4
    if-gt p1, v0, :cond_5

    return v6

    :cond_5
    const/16 v0, 0x8

    return v0

    :cond_6
    if-gt p1, v7, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    if-gt p1, v9, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    if-gt p1, v6, :cond_9

    return v8

    :cond_9
    if-gt p1, v4, :cond_a

    return v5

    :cond_a
    if-gt p1, v3, :cond_b

    return v7

    :cond_b
    if-gt p1, v2, :cond_c

    return v9

    :cond_c
    if-gt p1, v0, :cond_d

    return v1

    :cond_d
    return v6
.end method

.method public static getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x5

    const/16 v2, 0xa

    const/16 v3, 0x14

    const/16 v4, 0x32

    const/16 v5, 0x64

    const v6, 0x7fffffff

    if-eqz p0, :cond_0

    const-string v7, "2.5"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    packed-switch p1, :pswitch_data_0

    return v6

    :pswitch_0
    return v5

    :pswitch_1
    return v4

    :pswitch_2
    return v3

    :pswitch_3
    return v2

    :pswitch_4
    return v1

    :pswitch_5
    const/4 v0, 0x2

    return v0

    :pswitch_6
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_1

    return v6

    :pswitch_7
    return v5

    :pswitch_8
    return v4

    :pswitch_9
    return v3

    :pswitch_a
    return v2

    :pswitch_b
    const/4 v0, 0x7

    return v0

    :pswitch_c
    return v1

    :pswitch_d
    const/4 v0, 0x4

    return v0

    :pswitch_e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "device_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static isPackageInstalled(Ljava/lang/String;I)Z
    .locals 7

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p0, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "SettingsUtils"

    const-string v6, "Exception in isPackageInstalled()"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    :goto_1
    return v3
.end method

.method public static isPersona(ILandroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    return v1

    :cond_0
    return v0
.end method

.method static isValidEmailAddress(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2e

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_0

    if-ne v3, v2, :cond_0

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v4, :cond_0

    if-gt v4, v5, :cond_0

    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move v0, v6

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method private static loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z
    .locals 18

    move-object/from16 v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "_id"

    const-string/jumbo v5, "protocol"

    const-string v6, "address"

    const-string/jumbo v7, "port"

    const-string/jumbo v8, "flags"

    const-string/jumbo v9, "login"

    const-string/jumbo v10, "password"

    const-string/jumbo v11, "domain"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v14

    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v4, p1

    :try_start_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    const-string v0, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadHostAuth row count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v0, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p4, :cond_3

    const-string/jumbo v10, "protocol"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string v10, "address"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    const-string/jumbo v10, "port"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    const-string/jumbo v10, "flags"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iget v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/2addr v10, v8

    if-ne v8, v10, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v7

    :goto_0
    iput-boolean v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iget v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/2addr v10, v6

    if-ne v6, v10, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    iput-boolean v6, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iget v6, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/2addr v6, v0

    if-ne v0, v6, :cond_2

    goto :goto_2

    :cond_2
    move v8, v7

    :goto_2
    iput-boolean v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    const-string/jumbo v0, "login"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    const-string/jumbo v0, "password"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    const-string/jumbo v0, "domain"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    goto/16 :goto_6

    :cond_3
    const-string/jumbo v10, "protocol"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    const-string v10, "address"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    const-string/jumbo v10, "port"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    const-string/jumbo v10, "flags"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    iget v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/2addr v10, v8

    if-ne v8, v10, :cond_4

    move v10, v8

    goto :goto_3

    :cond_4
    move v10, v7

    :goto_3
    iput-boolean v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    iget v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/2addr v10, v6

    if-ne v6, v10, :cond_5

    move v6, v8

    goto :goto_4

    :cond_5
    move v6, v7

    :goto_4
    iput-boolean v6, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    iget v6, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/2addr v6, v0

    if-ne v0, v6, :cond_6

    goto :goto_5

    :cond_6
    move v8, v7

    :goto_5
    iput-boolean v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    const-string/jumbo v0, "login"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    const-string/jumbo v0, "password"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    const-string/jumbo v0, "domain"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_6
    const/4 v0, 0x1

    move v2, v0

    :cond_7
    if-eqz v3, :cond_8

    :goto_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-wide/from16 v4, p1

    goto :goto_a

    :catch_1
    move-exception v0

    move-wide/from16 v4, p1

    :goto_8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    :goto_9
    return v2

    :catchall_1
    move-exception v0

    :goto_a
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method static declared-synchronized sendAccountsChangedBroadcast(ILandroid/content/Context;I)V
    .locals 9

    const-class v0, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    const/high16 v3, 0x10000000

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-static {v1, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string v5, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendAccountsChangedBroadcast : USER space   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string v5, "SettingsUtils"

    const-string/jumbo v6, "sendAccountsChangedBroadcast : USER space"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_1
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    nop

    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "sendAccountsChangedBroadcast()"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static setPackageNameForUid(ILjava/lang/String;)V
    .locals 3

    sput p0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackageNameForUid :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const-string v0, "SettingsUtils"

    const-string/jumbo v1, "setSecurityPassword() success"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "setSecurityPassword() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    const-string v1, "SettingsUtils"

    const-string/jumbo v2, "setSecurityPassword() failed : invalid parameter"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static setSecurityPasswordFocus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const-string v0, "SettingsUtils"

    const-string/jumbo v1, "setSecurityPasswordFocus() success"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "setSecurityPasswordFocus() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    const-string v1, "SettingsUtils"

    const-string/jumbo v2, "setSecurityPasswordFocus() failed : invalid parameter"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static updateStatus()V
    .locals 0

    return-void
.end method
