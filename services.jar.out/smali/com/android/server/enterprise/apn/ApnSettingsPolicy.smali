.class public Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;
.source "ApnSettingsPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;
    }
.end annotation


# static fields
.field public static AUTH_TYPE_CHAP:I = 0x0

.field public static AUTH_TYPE_NONE:I = 0x0

.field private static AUTH_TYPE_NOTSET:I = 0x0

.field public static AUTH_TYPE_PAP:I = 0x0

.field public static AUTH_TYPE_PAP_OR_CHAP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApnSettingsPolicyService"


# instance fields
.field private dunRequired:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field mMDMConfigVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_CHAP:I

    const/4 v0, 0x3

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP_OR_CHAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->dunRequired:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const-string v0, "24"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    iput-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enforceApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_APN"

    const-string v3, "com.samsung.android.knox.permission.KNOX_APN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_APN"

    const-string v3, "com.samsung.android.knox.permission.KNOX_APN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getApnListConditionStr()Ljava/lang/String;
    .locals 13

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    if-eqz v1, :cond_4

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    new-array v5, v3, [Ljava/lang/String;

    aput-object v1, v5, v6

    :goto_0
    move-object v7, v4

    move v4, v6

    :goto_1
    array-length v8, v5

    if-ge v4, v8, :cond_3

    aget-object v8, v5, v4

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_2

    const/4 v9, 0x3

    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "(mcc = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\" AND "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "mnc"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v11, v5

    sub-int/2addr v11, v3

    if-ge v4, v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " OR "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v7

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v4

    :goto_2
    return-object v2

    :cond_6
    :goto_3
    const-string v1, "ApnSettingsPolicyService"

    const-string v3, "No SIM "

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-nez v0, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isValidApnId(J)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_4

    const-string v2, "_id"

    const-string/jumbo v3, "numeric"

    const-string/jumbo v4, "type"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v1, v5

    const-string v5, "ApnSettingsPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isValidApnId() row count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for apId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    move v0, v5

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "dun"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "mms"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-eqz v1, :cond_2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    goto :goto_3

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :cond_4
    const-string v2, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidApnId() : invalid apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return v0
.end method

.method private setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColumnValue: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validateProtocol(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7edefc9b

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x927

    if-eq v2, v3, :cond_2

    const v3, 0x226607

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "IPV6"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v2, "IP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v2, "IPV4V6"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x2

    :cond_4
    :goto_0
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private validateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J
    .locals 61

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez v3, :cond_0

    monitor-exit p0

    return-wide v5

    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getId()J

    move-result-wide v10

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPort()I

    move-result v0

    move/from16 v16, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getAuthType()I

    move-result v0

    move/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    const-wide/16 v23, -0x1

    move/from16 v25, v4

    move-object/from16 v4, v21

    if-eqz v4, :cond_2d

    move-wide/from16 v26, v5

    move-object/from16 v5, v22

    if-nez v5, :cond_1

    move-object/from16 v47, v4

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-wide/from16 v57, v10

    move/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move/from16 v8, v20

    move v9, v2

    move-object v2, v15

    goto/16 :goto_1d

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x41

    if-le v0, v6, :cond_2

    const-string v0, "ApnSettingsPolicyService"

    const-string v6, "APN name maximum length (65)"

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v23

    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x78

    if-le v0, v6, :cond_3

    const-string v0, "ApnSettingsPolicyService"

    const-string v6, "APN excedes maximum length (120)"

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide v23

    :cond_3
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v0

    iget-object v0, v3, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v31, v7

    move-object/from16 v7, v30

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ApnSettingsPolicyService"

    move-object/from16 v32, v8

    const-string v8, "Invalid protocol!"

    invoke-static {v0, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-wide v23

    :cond_4
    move-object/from16 v32, v8

    :try_start_4
    iget-object v0, v3, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    move-object v8, v0

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ApnSettingsPolicyService"

    const-string v3, "Invalid Roaming Protocol!"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-wide v23

    :cond_5
    move-object/from16 v3, v28

    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, -0x1

    move-object/from16 v33, v9

    move-object/from16 v9, v29

    :try_start_6
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v21
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v21, :cond_6

    move/from16 v34, v0

    :try_start_7
    const-string v0, "*"

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v37, v9

    move-object/from16 v39, v15

    move/from16 v7, v16

    move/from16 v8, v20

    move/from16 v38, v25

    goto/16 :goto_6

    :cond_6
    move/from16 v34, v0

    :cond_7
    move/from16 v0, v34

    :goto_0
    const-wide/16 v21, 0x1

    move-object/from16 v35, v8

    const/4 v8, -0x1

    if-nez v2, :cond_9

    cmp-long v23, v21, v10

    if-gtz v23, :cond_8

    goto :goto_1

    :cond_8
    move-object/from16 v36, v7

    move-object/from16 v37, v9

    move/from16 v7, v16

    move/from16 v8, v20

    goto :goto_2

    :cond_9
    :goto_1
    if-eqz v6, :cond_c

    :try_start_8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_c

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_c

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v23
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v23, :cond_c

    move-object/from16 v36, v7

    move/from16 v7, v16

    if-gt v8, v7, :cond_b

    if-gt v8, v0, :cond_b

    move-object/from16 v37, v9

    move/from16 v8, v20

    const/4 v9, -0x2

    if-gt v9, v8, :cond_d

    const/4 v9, 0x3

    if-ge v9, v8, :cond_a

    goto :goto_2

    :cond_a
    move-object/from16 v39, v15

    move/from16 v38, v25

    goto/16 :goto_5

    :cond_b
    move-object/from16 v37, v9

    move/from16 v8, v20

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v37, v9

    move/from16 v7, v16

    move/from16 v8, v20

    move-object/from16 v39, v15

    move/from16 v38, v25

    goto/16 :goto_6

    :cond_c
    move-object/from16 v36, v7

    move-object/from16 v37, v9

    move/from16 v7, v16

    move/from16 v8, v20

    :cond_d
    :goto_2
    const/4 v9, 0x0

    if-nez v2, :cond_e

    cmp-long v16, v21, v10

    if-lez v16, :cond_e

    move/from16 v38, v9

    :try_start_9
    const-string v9, "ApnSettingsPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v39, v15

    :try_start_a
    const-string v15, "addUpdateAp() : invalid ap Id "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v39, v15

    goto/16 :goto_6

    :cond_e
    move/from16 v38, v9

    move-object/from16 v39, v15

    :goto_3
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :cond_f
    :goto_4
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap name"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap apn"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap mcc"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap mnc"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/4 v2, -0x1

    if-le v2, v7, :cond_17

    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap port"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const/4 v2, -0x1

    if-le v2, v0, :cond_18

    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap iMmsPort"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/4 v2, -0x2

    if-gt v2, v8, :cond_19

    const/4 v2, 0x3

    if-ge v2, v8, :cond_1a

    :cond_19
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap authType"

    invoke-static {v2, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_1a
    :goto_5
    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v37, v9

    move-object/from16 v39, v15

    move/from16 v7, v16

    move/from16 v8, v20

    move/from16 v38, v25

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v33, v9

    move-object/from16 v39, v15

    move/from16 v7, v16

    move/from16 v8, v20

    move-object/from16 v37, v29

    move/from16 v38, v25

    :goto_6
    const/16 v38, 0x0

    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_7
    if-eqz v38, :cond_2c

    :try_start_c
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_29
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v15, 0x4

    if-eqz v2, :cond_1b

    :try_start_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v15, v9, :cond_1b

    const/4 v9, 0x3

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v15, v9

    move-object/from16 v9, v16

    goto :goto_9

    :catch_6
    move-exception v0

    move-object/from16 v40, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-wide/from16 v57, v10

    move-object/from16 v50, v16

    goto :goto_8

    :catch_7
    move-exception v0

    move-object/from16 v40, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-wide/from16 v57, v10

    move-object/from16 v50, v31

    :goto_8
    move-object/from16 v49, v32

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-object/from16 v48, v39

    move/from16 v9, p2

    goto/16 :goto_1b

    :cond_1b
    const/4 v15, 0x0

    move-object/from16 v9, v31

    move-object/from16 v15, v32

    :goto_9
    :try_start_f
    invoke-direct {v1, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_28
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object/from16 v2, v16

    :try_start_10
    invoke-direct {v1, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v12, v16

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, v16

    invoke-direct {v1, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_27
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object/from16 v14, v16

    move-object/from16 v40, v2

    move-object/from16 v2, v39

    :try_start_11
    invoke-direct {v1, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_26
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-object/from16 v2, v16

    move-wide/from16 v41, v10

    move-object/from16 v10, v17

    :try_start_12
    invoke-direct {v1, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_25
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object v10, v11

    move-object/from16 v11, v18

    :try_start_13
    invoke-direct {v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_24
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-object/from16 v11, v16

    move-object/from16 v43, v9

    move-object/from16 v9, v19

    :try_start_14
    invoke-direct {v1, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_23
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-object/from16 v9, v16

    move-object/from16 v44, v0

    :try_start_15
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_22
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-object/from16 v45, v15

    :try_start_16
    const-string/jumbo v15, "name"
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_21
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-object/from16 v46, v9

    move/from16 v9, p2

    :try_start_17
    invoke-direct {v1, v9, v0, v15, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "numeric"
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_20
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-object/from16 v47, v4

    if-eqz v6, :cond_1d

    if-nez v3, :cond_1c

    goto :goto_b

    :cond_1c
    :try_start_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_c

    :catch_8
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    :goto_a
    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v19, v46

    goto/16 :goto_1b

    :cond_1d
    :goto_b
    nop

    const/4 v4, 0x0

    :goto_c
    :try_start_19
    invoke-direct {v1, v9, v0, v15, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mcc"

    invoke-direct {v1, v9, v0, v4, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mnc"

    invoke-direct {v1, v9, v0, v4, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "apn"

    invoke-direct {v1, v9, v0, v4, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "user"

    invoke-direct {v1, v9, v0, v4, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "server"

    invoke-direct {v1, v9, v0, v4, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "password"

    invoke-direct {v1, v9, v0, v4, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "proxy"

    invoke-direct {v1, v9, v0, v4, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "port"
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1f
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-ltz v7, :cond_1e

    :try_start_1a
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_d

    :cond_1e
    :try_start_1b
    const-string v15, ""

    :goto_d
    invoke-direct {v1, v9, v0, v4, v15}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mmsproxy"

    invoke-direct {v1, v9, v0, v4, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mmsport"
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1f
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    move-object/from16 v15, v37

    :try_start_1c
    invoke-direct {v1, v9, v0, v4, v15}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "mmsc"

    invoke-direct {v1, v9, v0, v4, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    if-eqz v9, :cond_20

    :try_start_1d
    const-string v4, "authtype"
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-object/from16 v48, v2

    const/4 v2, -0x2

    if-ge v2, v8, :cond_1f

    const/4 v2, 0x4

    if-le v2, v8, :cond_1f

    move v2, v8

    goto :goto_e

    :cond_1f
    :try_start_1e
    sget v20, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    move/from16 v2, v20

    :goto_e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_f

    :catch_9
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    goto :goto_a

    :catch_a
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v19, v46

    goto/16 :goto_1b

    :cond_20
    move-object/from16 v48, v2

    if-nez v9, :cond_21

    const/4 v2, -0x2

    if-ge v2, v8, :cond_21

    const/4 v2, 0x4

    if-le v2, v8, :cond_21

    const-string v2, "authtype"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :cond_21
    :goto_f
    :try_start_1f
    const-string/jumbo v2, "type"
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1d
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    move-object/from16 v4, v46

    :try_start_20
    invoke-direct {v1, v9, v0, v2, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1c
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    if-eqz v45, :cond_24

    if-eqz v43, :cond_24

    move-object/from16 v2, v45

    :try_start_21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_e
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    if-eqz v16, :cond_23

    move-object/from16 v49, v2

    move-object/from16 v2, v43

    :try_start_22
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_d
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    if-eqz v16, :cond_22

    move-object/from16 v50, v2

    :try_start_23
    const-string v2, "current"
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    const/4 v3, 0x1

    :try_start_24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_b
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto/16 :goto_10

    :catch_b
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    goto/16 :goto_11

    :catch_c
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :cond_22
    move-object/from16 v50, v2

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    const/4 v3, 0x1

    goto :goto_10

    :catch_d
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :cond_23
    move-object/from16 v49, v2

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    move-object/from16 v50, v43

    const/4 v3, 0x1

    goto :goto_10

    :catch_e
    move-exception v0

    move-object/from16 v49, v2

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    move-object/from16 v50, v43

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :cond_24
    move-object/from16 v51, v3

    move-object/from16 v52, v4

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    const/4 v3, 0x1

    :goto_10
    :try_start_25
    iget v2, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1b
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    const/16 v4, 0x11

    if-lt v2, v4, :cond_25

    :try_start_26
    const-string/jumbo v2, "protocol"
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_11
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    move-object/from16 v4, v36

    :try_start_27
    invoke-direct {v1, v9, v0, v2, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "roaming_protocol"
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_10
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    move-object/from16 v3, v35

    :try_start_28
    invoke-direct {v1, v9, v0, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_f
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    goto :goto_12

    :catch_f
    move-exception v0

    move-object/from16 v54, v3

    move-object/from16 v56, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    :goto_11
    move-wide/from16 v57, v41

    goto/16 :goto_1a

    :catch_10
    move-exception v0

    move-object/from16 v56, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :catch_11
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :cond_25
    move-object/from16 v3, v35

    move-object/from16 v4, v36

    :goto_12
    :try_start_29
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1a
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    if-lez v2, :cond_2b

    if-eqz v9, :cond_28

    :try_start_2a
    iget-object v2, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_15
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    move-object/from16 v54, v3

    :try_start_2b
    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_14
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    if-eqz v2, :cond_26

    const/16 v53, 0x1

    goto :goto_13

    :cond_26
    const/16 v53, 0x0

    :goto_13
    move/from16 v3, v53

    if-eqz v3, :cond_27

    move/from16 v55, v3

    :try_start_2c
    const-string v3, "ApnSettingsPolicyService"
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_13
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    move-object/from16 v56, v4

    :try_start_2d
    const-string v4, "addUpdateAp Created rowUri : "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_12
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    move-wide v2, v3

    move-wide/from16 v26, v2

    goto :goto_14

    :catch_12
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    move/from16 v38, v55

    goto/16 :goto_1b

    :catch_13
    move-exception v0

    move-object/from16 v56, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    move/from16 v38, v55

    goto :goto_15

    :cond_27
    move/from16 v55, v3

    move-object/from16 v56, v4

    :goto_14
    move-wide/from16 v57, v41

    move/from16 v38, v55

    goto/16 :goto_18

    :catch_14
    move-exception v0

    move-object/from16 v56, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    :goto_15
    goto/16 :goto_1b

    :catch_15
    move-exception v0

    move-object/from16 v54, v3

    move-object/from16 v56, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide/from16 v57, v41

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :cond_28
    move-object/from16 v54, v3

    move-object/from16 v56, v4

    :try_start_2e
    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_18
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    move-wide/from16 v3, v41

    :try_start_2f
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_17
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    move-wide/from16 v57, v3

    :try_start_30
    iget-object v3, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_19
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    if-lez v3, :cond_29

    const/16 v53, 0x1

    goto :goto_16

    :cond_29
    const/16 v53, 0x0

    :goto_16
    move/from16 v4, v53

    if-eqz v4, :cond_2a

    move-object/from16 v59, v0

    :try_start_31
    const-string v0, "ApnSettingsPolicyService"

    move/from16 v60, v3

    const-string v3, "addUpdateAp Updated rowUri : "

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_16
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    move-wide/from16 v2, v16

    move-wide/from16 v26, v2

    goto :goto_17

    :catch_16
    move-exception v0

    move/from16 v38, v4

    goto :goto_19

    :cond_2a
    move-object/from16 v59, v0

    :goto_17
    move/from16 v38, v4

    goto :goto_18

    :catch_17
    move-exception v0

    move-wide/from16 v57, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :catch_18
    move-exception v0

    move-wide/from16 v57, v41

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :cond_2b
    move-object/from16 v59, v0

    move-object/from16 v54, v3

    move-object/from16 v56, v4

    move-wide/from16 v57, v41

    :try_start_32
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "addUpdateAp Error: Empty dataset."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_19
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    :goto_18
    goto/16 :goto_1c

    :catch_19
    move-exception v0

    :goto_19
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    :goto_1a
    move-object/from16 v19, v52

    goto/16 :goto_1b

    :catch_1a
    move-exception v0

    move-object/from16 v54, v3

    move-object/from16 v56, v4

    move-wide/from16 v57, v41

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :catch_1b
    move-exception v0

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :catch_1c
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v52, v4

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :catch_1d
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v52, v46

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :catch_1e
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v52, v46

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :catch_1f
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v52, v46

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :catch_20
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move-object/from16 v52, v46

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :catch_21
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v52, v9

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    move/from16 v9, p2

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :catch_22
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v52, v9

    move-object/from16 v49, v15

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move/from16 v9, p2

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v52

    goto/16 :goto_1b

    :catch_23
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object v4, v9

    move-object/from16 v49, v15

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move-object/from16 v50, v43

    move/from16 v9, p2

    move-object/from16 v19, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    goto/16 :goto_1b

    :catch_24
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v50, v9

    move-object/from16 v49, v15

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move/from16 v9, p2

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    goto/16 :goto_1b

    :catch_25
    move-exception v0

    move-object/from16 v48, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v50, v9

    move-object/from16 v49, v15

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-wide/from16 v57, v41

    move/from16 v9, p2

    move-object/from16 v17, v10

    goto/16 :goto_1b

    :catch_26
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v50, v9

    move-wide/from16 v57, v10

    move-object/from16 v49, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move/from16 v9, p2

    move-object/from16 v48, v2

    goto/16 :goto_1b

    :catch_27
    move-exception v0

    move-object/from16 v40, v2

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v50, v9

    move-wide/from16 v57, v10

    move-object/from16 v49, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-object/from16 v2, v39

    move/from16 v9, p2

    move-object/from16 v48, v2

    goto :goto_1b

    :catch_28
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-object/from16 v50, v9

    move-wide/from16 v57, v10

    move-object/from16 v49, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move/from16 v9, p2

    move-object v3, v2

    move-object/from16 v2, v39

    move-object/from16 v48, v2

    move-object/from16 v40, v3

    goto :goto_1b

    :catch_29
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-wide/from16 v57, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-object/from16 v2, v39

    move/from16 v9, p2

    move-object/from16 v48, v2

    move-object/from16 v50, v31

    move-object/from16 v49, v32

    move-object/from16 v40, v33

    :goto_1b
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v52, v19

    goto :goto_1c

    :cond_2c
    move-object/from16 v51, v3

    move-object/from16 v47, v4

    move-wide/from16 v57, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v54, v35

    move-object/from16 v56, v36

    move-object/from16 v15, v37

    move-object/from16 v2, v39

    move/from16 v9, p2

    move-object/from16 v48, v2

    move-object/from16 v52, v4

    move-object/from16 v50, v31

    move-object/from16 v49, v32

    move-object/from16 v40, v33

    :goto_1c
    monitor-exit p0

    return-wide v26

    :cond_2d
    move-object/from16 v47, v4

    move-wide/from16 v26, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-wide/from16 v57, v10

    move/from16 v7, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move/from16 v8, v20

    move-object/from16 v5, v22

    move v9, v2

    move-object v2, v15

    :goto_1d
    :try_start_34
    const-string v0, "ApnSettingsPolicyService"

    const-string v3, "Invalid value"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    monitor-exit p0

    return-wide v23

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-wide/16 v1, 0x1

    cmp-long v1, v1, p2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const-string v1, "ApnSettingsPolicyService"

    const-string v3, "deleteAp : apId is invalid"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    const-string v3, "ApnSettingsPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-lez v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getApnList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "_id"

    const-string/jumbo v5, "name"

    const-string/jumbo v6, "mcc"

    const-string/jumbo v7, "mnc"

    const-string v8, "apn"

    const-string/jumbo v9, "user"

    const-string/jumbo v10, "server"

    const-string/jumbo v11, "password"

    const-string/jumbo v12, "proxy"

    const-string/jumbo v13, "port"

    const-string/jumbo v14, "mmsproxy"

    const-string/jumbo v15, "mmsport"

    const-string/jumbo v16, "mmsc"

    const-string v17, "authtype"

    const-string/jumbo v18, "type"

    const-string/jumbo v19, "protocol"

    const-string/jumbo v20, "roaming_protocol"

    filled-new-array/range {v4 .. v20}, [Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListConditionStr()Ljava/lang/String;

    move-result-object v24

    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sget-object v22, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v26}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    if-eqz v2, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    const-string v4, "_id"

    invoke-direct {v1, v4, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    const-string/jumbo v6, "name"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    const-string/jumbo v6, "mcc"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string/jumbo v6, "mnc"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string v6, "apn"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string/jumbo v6, "user"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string/jumbo v6, "server"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string/jumbo v6, "password"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string/jumbo v6, "proxy"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string/jumbo v6, "port"

    invoke-direct {v1, v6, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    :cond_1
    const-string/jumbo v7, "mmsproxy"

    invoke-direct {v1, v7, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string/jumbo v7, "mmsport"

    invoke-direct {v1, v7, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string/jumbo v7, "mmsc"

    invoke-direct {v1, v7, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string v7, "authtype"

    invoke-direct {v1, v7, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    :cond_2
    const-string/jumbo v8, "type"

    invoke-direct {v1, v8, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    iget v8, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_3

    const-string/jumbo v8, "protocol"

    invoke-direct {v1, v8, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string/jumbo v8, "roaming_protocol"

    invoke-direct {v1, v8, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :cond_4
    if-eqz v2, :cond_5

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return-object v3

    :goto_2
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    cmp-long v1, v1, p2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const-string v1, "ApnSettingsPolicyService"

    const-string/jumbo v3, "getApnSettings : apId is invalid"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {v1}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    const-string v3, "_id"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    const-string/jumbo v3, "name"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    const-string/jumbo v3, "mcc"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string/jumbo v3, "mnc"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string v3, "apn"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string/jumbo v3, "user"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string/jumbo v3, "server"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string/jumbo v3, "password"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string/jumbo v3, "proxy"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string/jumbo v3, "port"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    :cond_1
    const-string/jumbo v7, "mmsproxy"

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string/jumbo v7, "mmsport"

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string/jumbo v7, "mmsc"

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string v7, "authtype"

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    :cond_2
    const-string/jumbo v8, "type"

    invoke-direct {p0, v8, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_3

    const-string/jumbo v8, "protocol"

    invoke-direct {p0, v8, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string/jumbo v8, "roaming_protocol"

    invoke-direct {p0, v8, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    nop

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :cond_5
    if-eqz v0, :cond_6

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    return-object v2

    :goto_2
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method

.method public declared-synchronized getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "ApnSettingsPolicyService"

    const-string/jumbo v3, "getPreferredApn():"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const-string v2, "_id"

    const-string/jumbo v5, "name"

    const-string v6, "apn"

    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "name ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPreferredApn():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    :cond_0
    if-eqz v1, :cond_1

    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "ApnSettingsPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPreferredApn Ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
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

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    cmp-long v3, v1, p2

    if-eqz v3, :cond_0

    cmp-long v3, v1, p2

    if-lez v3, :cond_0

    :try_start_1
    const-string v1, "ApnSettingsPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "apn_id"

    cmp-long v1, v1, p2

    if-nez v1, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_1
    move-wide v1, p2

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move v0, v2

    const-string v2, "ApnSettingsPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferedAp() row count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
