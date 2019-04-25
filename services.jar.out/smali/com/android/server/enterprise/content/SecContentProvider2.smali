.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "SecContentProvider2.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATION:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider2"

.field private static final CLIENTCERTIFICATEMANAGER:I = 0x2

.field private static final DATETIME:I = 0x4

.field private static final DEVICEACCOUNT:I = 0x3

.field private static final DUALSIM:I = 0x5

.field private static final EMAIL:I = 0x6

.field private static final EMAILACCOUNT:I = 0x7

.field private static final ENTERPRISECERTENROLL:I = 0x8

.field private static final ENTERPRISECONTAINER:I = 0x9

.field private static final ENTERPRISECONTAINERSERVICE:I = 0xa

.field private static final ENTERPRISEDEVICEMANAGER:I = 0xb

.field private static final ENTERPRISELICENSE:I = 0x15

.field private static final EXCHANGEACCOUNT:I = 0xc

.field private static final KIOSKMODESEC:I = 0xd

.field private static final KNOXCUSTOMMANAGERSERVICE1:I = 0xe

.field private static final KNOXCUSTOMMANAGERSERVICE2:I = 0xf

.field private static final MISC:I = 0x10

.field private static final MULTIUSERMANAGER:I = 0x11

.field private static final PHONERESTRICTION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "SecContentProvider2"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final VPN:I = 0x13

.field private static final WIFI:I = 0x14


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ApplicationPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ClientCertificateManager"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "DeviceAccountPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "DualSimPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EmailPolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EmailAccountPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseContainerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseContainerService"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseDeviceManager"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ExchangeAccountPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KioskMode"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KnoxCustomManagerService1"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KnoxCustomManagerService2"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "MiscPolicy"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "MultiUserManager"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "PhoneRestrictionPolicy"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "vpnPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "WifiPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseLicenseService"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "fail to get caller name"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-object v1, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string v1, "SecContentProvider2"

    const-string/jumbo v2, "do notifyChange() for knoxCustomManagerService2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string v1, "SecContentProvider2"

    const-string/jumbo v2, "do notifyChange() for knoxCustomManagerService1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "eas_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz v1, :cond_3

    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v4, "setAccountEmailPassword"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v5, "password"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    :cond_2
    nop

    :cond_3
    :goto_0
    return-object v3

    nop

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v0, "SecContentProvider2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "query(), uri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v11, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " selection = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecContentProvider2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "called from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->getCallerName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v16, 0x6

    const/4 v10, 0x5

    const/16 v17, 0x4

    const/4 v11, 0x3

    const/16 v18, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_d0

    :pswitch_1
    const-string/jumbo v0, "enterprise_license_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-eqz v0, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x60245cde

    if-eq v10, v11, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v10, "isServiceAvailable"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move/from16 v18, v15

    :cond_1
    :goto_0
    if-eqz v18, :cond_2

    const-string v10, "SecContentProvider2"

    const-string v11, "ENTERPRISELICENSEPOLICY : return null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_2
    if-eqz v4, :cond_4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-gt v10, v14, :cond_3

    goto :goto_1

    :cond_3
    aget-object v10, v4, v15

    aget-object v11, v4, v14

    invoke-virtual {v0, v10, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isServiceAvailable"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v15

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    nop

    return-object v8

    :cond_4
    :goto_1
    return-object v13

    :pswitch_2
    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-eqz v0, :cond_e2

    if-eqz v3, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string/jumbo v10, "isWifiScanningAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v19, 0xc

    goto/16 :goto_3

    :sswitch_1
    const-string/jumbo v10, "getAllowUserProfiles"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move/from16 v19, v14

    goto/16 :goto_3

    :sswitch_2
    const-string/jumbo v10, "getAllSsidBlacklist"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v19, 0x9

    goto/16 :goto_3

    :sswitch_3
    const-string/jumbo v10, "isWifiApSettingUserModificationAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move/from16 v19, v16

    goto/16 :goto_3

    :sswitch_4
    const-string/jumbo v10, "getAutomaticConnectionToWifi"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move/from16 v19, v12

    goto :goto_3

    :sswitch_5
    const-string/jumbo v10, "getPromptCredentialsEnabled"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move/from16 v19, v17

    goto :goto_3

    :sswitch_6
    const-string/jumbo v10, "getAllowUserPolicyChanges"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move/from16 v19, v15

    goto :goto_3

    :sswitch_7
    const-string/jumbo v10, "isWifiSsidRestrictionActive"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v19, 0xb

    goto :goto_3

    :sswitch_8
    const-string/jumbo v10, "isOpenWifiApAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v19, 0x8

    goto :goto_3

    :sswitch_9
    const-string/jumbo v10, "getPasswordHidden"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move/from16 v19, v11

    goto :goto_3

    :sswitch_a
    const-string/jumbo v10, "getAllSsidWhitelist"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v19, 0xa

    goto :goto_3

    :sswitch_b
    const-string/jumbo v11, "isEnterpriseNetwork"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move/from16 v19, v10

    goto :goto_3

    :sswitch_c
    const-string/jumbo v10, "isWifiStateChangeAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v19, 0x7

    goto :goto_3

    :cond_5
    :goto_2
    move/from16 v19, v18

    :goto_3
    packed-switch v19, :pswitch_data_1

    return-object v13

    :pswitch_3
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isWifiScanningAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v15

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_4
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isWifiSsidRestrictionActive"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v15

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_5
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidWhitelist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllSsidWhitelist"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "SecContentProvider2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WIFIPOLICY_ALLSSIDWHITELIST_METHOD = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v14, v13

    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto :goto_4

    :cond_6
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_6
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidBlacklist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllSsidBlacklist"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "SecContentProvider2"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WIFIPOLICY_ALLSSIDBLACKLIST_METHOD = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v14, v13

    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_7
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isOpenWifiApAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_8
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isWifiStateChangeAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_9
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isWifiApSettingUserModificationAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_a
    if-eqz v4, :cond_9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-gtz v10, :cond_8

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isEnterpriseNetwork"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_9
    :goto_6
    return-object v13

    :pswitch_b
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getPromptCredentialsEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_c
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getPasswordHidden"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_d
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAutomaticConnectionToWifi"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_e
    if-eqz v4, :cond_b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-gtz v10, :cond_a

    goto :goto_7

    :cond_a
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v0, v10, v11, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllowUserProfiles"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_8

    :cond_b
    :goto_7
    return-object v13

    :pswitch_f
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllowUserPolicyChanges"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :cond_c
    :goto_8
    return-object v8

    :pswitch_10
    const-string/jumbo v0, "vpn_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    if-eqz v0, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v14, 0x20839282

    if-eq v10, v14, :cond_10

    const v14, 0x20e4e472

    if-eq v10, v14, :cond_f

    const v14, 0x528665ad

    if-eq v10, v14, :cond_e

    const v11, 0x75693779

    if-eq v10, v11, :cond_d

    goto :goto_9

    :cond_d
    const-string/jumbo v10, "isUserChangeProfilesAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    move v11, v12

    goto :goto_a

    :cond_e
    const-string/jumbo v10, "isUserSetAlwaysOnAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_a

    :cond_f
    const-string/jumbo v10, "isUserAddProfilesAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v11, 0x1

    goto :goto_a

    :cond_10
    const-string v10, "checkRacoonSecurity"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v11, 0x0

    goto :goto_a

    :cond_11
    :goto_9
    move/from16 v11, v18

    :goto_a
    packed-switch v11, :pswitch_data_2

    return-object v13

    :pswitch_11
    const/4 v10, 0x0

    if-eqz v4, :cond_12

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_12

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    :cond_12
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v11, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v11

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isUserSetAlwaysOnAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_12
    const/4 v10, 0x0

    if-eqz v4, :cond_13

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_13

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    :cond_13
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v11, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v11

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isUserChangeProfilesAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_b

    :pswitch_13
    const/4 v10, 0x0

    if-eqz v4, :cond_14

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_14

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    :cond_14
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v11, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v11

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isUserAddProfilesAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_b

    :pswitch_14
    if-eqz v4, :cond_16

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-gtz v10, :cond_15

    goto :goto_c

    :cond_15
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkRacoonSecurity(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;)Z

    move-result v11

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v12, "checkRacoonSecurity"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v10, v13

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_b
    move v10, v11

    return-object v8

    :cond_16
    :goto_c
    return-object v13

    :pswitch_15
    const-string/jumbo v0, "phone_restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-eqz v0, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_1

    goto/16 :goto_d

    :sswitch_d
    const-string v10, "checkEnableUseOfPacketData"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    move v10, v12

    goto/16 :goto_e

    :sswitch_e
    const-string/jumbo v10, "isOutgoingSmsAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    move/from16 v10, v16

    goto/16 :goto_e

    :sswitch_f
    const-string v10, "canIncomingCall"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0xe

    goto/16 :goto_e

    :sswitch_10
    const-string/jumbo v14, "isLimitNumberOfSmsEnabled"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    goto/16 :goto_e

    :sswitch_11
    const-string/jumbo v10, "isSimLockedByAdmin"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0x10

    goto/16 :goto_e

    :sswitch_12
    const-string v10, "canOutgoingSms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v10, 0x7

    goto/16 :goto_e

    :sswitch_13
    const-string/jumbo v10, "getDisclaimerText"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0x11

    goto/16 :goto_e

    :sswitch_14
    const-string v10, "canOutgoingCall"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0xf

    goto/16 :goto_e

    :sswitch_15
    const-string v10, "canIncomingSms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    move/from16 v10, v17

    goto/16 :goto_e

    :sswitch_16
    const-string/jumbo v10, "isCopyContactToSimAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v10, 0x0

    goto/16 :goto_e

    :sswitch_17
    const-string/jumbo v10, "isIncomingMmsAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0x8

    goto :goto_e

    :sswitch_18
    const-string/jumbo v10, "isBlockSmsWithStorageEnabled"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v10, 0x1

    goto :goto_e

    :sswitch_19
    const-string/jumbo v10, "isRCSEnabled"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0x12

    goto :goto_e

    :sswitch_1a
    const-string/jumbo v10, "isCallerIDDisplayAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0xc

    goto :goto_e

    :sswitch_1b
    const-string/jumbo v10, "getEmergencyCallOnly"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0xb

    goto :goto_e

    :sswitch_1c
    const-string/jumbo v10, "isOutgoingMmsAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0xa

    goto :goto_e

    :sswitch_1d
    const-string/jumbo v10, "isIncomingSmsAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0x9

    goto :goto_e

    :sswitch_1e
    const-string/jumbo v10, "isWapPushAllowed"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0xd

    goto :goto_e

    :sswitch_1f
    const-string/jumbo v10, "isBlockMmsWithStorageEnabled"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    move v10, v11

    goto :goto_e

    :cond_17
    :goto_d
    move/from16 v10, v18

    :goto_e
    packed-switch v10, :pswitch_data_3

    const-string v2, "SecContentProvider2"

    const-string/jumbo v10, "return null"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_16
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-eqz v4, :cond_1a

    if-ge v10, v11, :cond_18

    goto :goto_f

    :cond_18
    const/4 v11, 0x0

    aget-object v13, v4, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    new-instance v14, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v14, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v14, v11, v13}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v14

    if-eqz v14, :cond_19

    new-instance v15, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v15, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v15, v11, v13, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    move-result v14

    :cond_19
    new-instance v15, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "isRCSEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v15

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v2, v16

    invoke-virtual {v8, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_1a
    :goto_f
    return-object v13

    :pswitch_17
    const/4 v2, 0x0

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getDisclaimerText"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_18
    const/4 v11, 0x0

    if-eqz v4, :cond_1c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1b

    goto :goto_10

    :cond_1b
    aget-object v2, v4, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isSimLockedByAdmin"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_1c
    :goto_10
    return-object v13

    :pswitch_19
    if-eqz v4, :cond_1e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1d

    goto :goto_11

    :cond_1d
    const/4 v2, 0x0

    aget-object v10, v4, v2

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v11, "canOutgoingCall"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_1e
    :goto_11
    return-object v13

    :pswitch_1a
    if-eqz v4, :cond_20

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v2, 0x0

    aget-object v10, v4, v2

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v11, "canIncomingCall"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_20
    :goto_12
    return-object v13

    :pswitch_1b
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isWapPushAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1c
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCallerIDDisplayAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1d
    const/4 v10, 0x1

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getEmergencyCallOnly"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isOutgoingMmsAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1f
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isIncomingSmsAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_20
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isIncomingMmsAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_21
    if-eqz v4, :cond_22

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_21

    goto :goto_13

    :cond_21
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_15

    :cond_22
    :goto_13
    return-object v13

    :pswitch_22
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isOutgoingSmsAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_23
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isLimitNumberOfSmsEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_24
    if-eqz v4, :cond_24

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_23

    goto :goto_14

    :cond_23
    const/4 v2, 0x0

    aget-object v10, v4, v2

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v11, "canIncomingSms"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_24
    :goto_14
    return-object v13

    :pswitch_25
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBlockMmsWithStorageEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_26
    const/4 v2, 0x0

    if-eqz v4, :cond_25

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_25

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_25
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v12, "checkEnableUseOfPacketData"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_27
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBlockSmsWithStorageEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_28
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCopyContactToSimAllowed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCopyContactToSimAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_15
    return-object v8

    :pswitch_29
    const-string/jumbo v0, "multi_user_manager_service"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    if-eqz v2, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v10, -0xa355b0c

    if-eq v0, v10, :cond_29

    const v10, -0x7ddb46f

    if-eq v0, v10, :cond_28

    const v10, 0x9914b0

    if-eq v0, v10, :cond_27

    const v10, 0x274445b6

    if-eq v0, v10, :cond_26

    goto :goto_16

    :cond_26
    const-string/jumbo v0, "multipleUsersSupported"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_17

    :cond_27
    const-string/jumbo v0, "multipleUsersAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v11, 0x0

    goto :goto_17

    :cond_28
    const-string/jumbo v0, "isUserRemovalAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v11, v12

    goto :goto_17

    :cond_29
    const-string/jumbo v0, "isUserCreationAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v11, 0x1

    goto :goto_17

    :cond_2a
    :goto_16
    move/from16 v11, v18

    :goto_17
    packed-switch v11, :pswitch_data_4

    return-object v13

    :pswitch_2a
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    new-array v10, v11, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18

    :catch_0
    move-exception v0

    return-object v13

    :pswitch_2b
    const/4 v0, 0x0

    if-eqz v4, :cond_2b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_2b

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_2b
    move v10, v0

    :try_start_1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    nop

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUserRemovalAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18

    :catch_1
    move-exception v0

    return-object v13

    :pswitch_2c
    const/4 v0, 0x0

    if-eqz v4, :cond_2c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_2c

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_2c
    move v10, v0

    :try_start_2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    nop

    nop

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUserCreationAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_18

    :catch_2
    move-exception v0

    return-object v13

    :pswitch_2d
    const/4 v0, 0x0

    if-eqz v4, :cond_2d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_2d

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_2d
    move v10, v0

    :try_start_3
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    nop

    nop

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "multipleUsersAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_18
    return-object v8

    :catch_3
    move-exception v0

    return-object v13

    :pswitch_2e
    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v0, :cond_e2

    if-eqz v3, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v10, -0x7cedec35

    if-eq v2, v10, :cond_2f

    const v10, 0x30468cc8

    if-eq v2, v10, :cond_2e

    goto :goto_19

    :cond_2e
    const-string/jumbo v2, "isNFCStateChangeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/16 v18, 0x1

    goto :goto_19

    :cond_2f
    const-string/jumbo v2, "getCurrentLockScreenString"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/16 v18, 0x0

    :cond_30
    :goto_19
    packed-switch v18, :pswitch_data_5

    return-object v13

    :pswitch_2f
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNFCStateChangeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1a

    :pswitch_30
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getCurrentLockScreenString"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_1a
    return-object v8

    :pswitch_31
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v7

    if-eqz v7, :cond_3b

    if-eqz v3, :cond_3b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    goto/16 :goto_1b

    :sswitch_20
    const-string/jumbo v0, "getScreenOffOnStatusBarDoubleTapState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0xc

    goto/16 :goto_1c

    :sswitch_21
    const-string/jumbo v0, "getVolumeButtonRotationState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x9

    goto/16 :goto_1c

    :sswitch_22
    const-string/jumbo v0, "getSealedHideNotificationMessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    move/from16 v10, v16

    goto/16 :goto_1c

    :sswitch_23
    const-string/jumbo v0, "getSealedPowerDialogCustomItemsState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v10, v12

    goto/16 :goto_1c

    :sswitch_24
    const-string/jumbo v0, "getSettingsEnabledItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x1d

    goto/16 :goto_1c

    :sswitch_25
    const-string/jumbo v0, "getLoadingLogoPath"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x26

    goto/16 :goto_1c

    :sswitch_26
    const-string/jumbo v0, "getRecentLongPressMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x8

    goto/16 :goto_1c

    :sswitch_27
    const-string/jumbo v0, "getWifiAutoSwitchThreshold"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0xe

    goto/16 :goto_1c

    :sswitch_28
    const-string/jumbo v0, "getScreenOffOnHomeLongPressState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0xb

    goto/16 :goto_1c

    :sswitch_29
    const-string/jumbo v0, "getToastGravityYOffset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x16

    goto/16 :goto_1c

    :sswitch_2a
    const-string/jumbo v0, "getToastShowPackageNameState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x12

    goto/16 :goto_1c

    :sswitch_2b
    const-string/jumbo v0, "getToastGravity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x14

    goto/16 :goto_1c

    :sswitch_2c
    const-string/jumbo v0, "getSealedHardKeyIntentState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x1b

    goto/16 :goto_1c

    :sswitch_2d
    const-string/jumbo v0, "getSealedNotificationMessagesState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v10, 0x0

    goto/16 :goto_1c

    :sswitch_2e
    const-string/jumbo v0, "getUsbConnectionTypeInternal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x1f

    goto/16 :goto_1c

    :sswitch_2f
    const-string/jumbo v0, "getUltraPowerSavingPackages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x25

    goto/16 :goto_1c

    :sswitch_30
    const-string/jumbo v0, "getToastEnabledState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x11

    goto/16 :goto_1c

    :sswitch_31
    const-string/jumbo v0, "getAppBlockDownloadState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x17

    goto/16 :goto_1c

    :sswitch_32
    const-string/jumbo v0, "getToastGravityXOffset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x15

    goto/16 :goto_1c

    :sswitch_33
    const-string/jumbo v0, "getAutoCallNumberDelay"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x23

    goto/16 :goto_1c

    :sswitch_34
    const-string/jumbo v0, "getUsbConnectionType"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x20

    goto/16 :goto_1c

    :sswitch_35
    const-string/jumbo v0, "getAppBlockDownloadNamespaces"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x18

    goto/16 :goto_1c

    :sswitch_36
    const-string/jumbo v0, "isDexAutoOpenLastApp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x28

    goto/16 :goto_1c

    :sswitch_37
    const-string/jumbo v0, "getToastGravityEnabledState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x13

    goto/16 :goto_1c

    :sswitch_38
    const-string/jumbo v0, "getAutoCallPickupState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x21

    goto/16 :goto_1c

    :sswitch_39
    const-string/jumbo v0, "getAutoCallNumberAnswerMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x24

    goto/16 :goto_1c

    :sswitch_3a
    const-string/jumbo v0, "getSealedPowerDialogItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v10, 0x1

    goto/16 :goto_1c

    :sswitch_3b
    const-string/jumbo v0, "getExtendedCallInfoState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    move/from16 v10, v17

    goto/16 :goto_1c

    :sswitch_3c
    const-string/jumbo v0, "getEthernetConfigurationType"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x1a

    goto/16 :goto_1c

    :sswitch_3d
    const-string/jumbo v0, "getSealedVolumeKeyAppsList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x1e

    goto/16 :goto_1c

    :sswitch_3e
    const-string/jumbo v0, "getSealedVolumeKeyAppState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x1c

    goto/16 :goto_1c

    :sswitch_3f
    const-string/jumbo v0, "getLockScreenHiddenItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x10

    goto/16 :goto_1c

    :sswitch_40
    const-string/jumbo v0, "getAirGestureOptionState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x27

    goto/16 :goto_1c

    :sswitch_41
    const-string/jumbo v0, "getSealedPowerDialogCustomItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v10, v11

    goto :goto_1c

    :sswitch_42
    const-string/jumbo v0, "getWifiAutoSwitchState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0xd

    goto :goto_1c

    :sswitch_43
    const-string/jumbo v0, "getSettingsHiddenState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_1c

    :sswitch_44
    const-string/jumbo v0, "getWifiAutoSwitchDelay"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0xf

    goto :goto_1c

    :sswitch_45
    const-string/jumbo v0, "getRecentLongPressActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v10, 0x7

    goto :goto_1c

    :sswitch_46
    const-string/jumbo v0, "getEthernetState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x19

    goto :goto_1c

    :sswitch_47
    const-string/jumbo v0, "getAutoCallNumberList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x22

    goto :goto_1c

    :sswitch_48
    const-string/jumbo v0, "getDexHDMIAutoEnter"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0x29

    goto :goto_1c

    :sswitch_49
    const-string/jumbo v0, "getGearNotificationState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v10, 0xa

    goto :goto_1c

    :cond_31
    :goto_1b
    move/from16 v10, v18

    :goto_1c
    packed-switch v10, :pswitch_data_6

    return-object v13

    :pswitch_32
    move/from16 v2, v18

    :try_start_4
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move v2, v0

    goto :goto_1d

    :catch_4
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getDexHDMIAutoEnter"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_33
    move/from16 v2, v18

    :try_start_5
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move v2, v0

    goto :goto_1e

    :catch_5
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isDexAutoOpenLastApp"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_34
    const/4 v10, 0x1

    const/4 v11, 0x0

    move v2, v10

    :try_start_6
    invoke-interface {v7, v11}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAirGestureOptionState(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    move v2, v0

    goto :goto_1f

    :catch_6
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAirGestureOptionState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_35
    move-object v2, v13

    :try_start_7
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    move-object v2, v0

    goto :goto_20

    :catch_7
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getLoadingLogoPath"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_36
    move-object v2, v13

    :try_start_8
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    move-object v2, v0

    goto :goto_21

    :catch_8
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    nop

    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getUltraPowerSavingPackages"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_32

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_32

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_22

    :cond_32
    goto/16 :goto_4e

    :pswitch_37
    if-eqz v4, :cond_34

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_33

    goto :goto_24

    :cond_33
    move/from16 v2, v18

    const/4 v10, 0x0

    :try_start_9
    aget-object v0, v4, v10

    invoke-interface {v7, v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    move v2, v0

    goto :goto_23

    :catch_9
    move-exception v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAutoCallNumberAnswerMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :cond_34
    :goto_24
    nop

    return-object v13

    :pswitch_38
    if-eqz v4, :cond_36

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_35

    goto :goto_26

    :cond_35
    move/from16 v2, v18

    const/4 v10, 0x0

    :try_start_a
    aget-object v0, v4, v10

    invoke-interface {v7, v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    move v2, v0

    goto :goto_25

    :catch_a
    move-exception v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAutoCallNumberDelay"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :cond_36
    :goto_26
    nop

    return-object v13

    :pswitch_39
    move-object v2, v13

    :try_start_b
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    move-object v2, v0

    goto :goto_27

    :catch_b
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    nop

    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAutoCallNumberList"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_37

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_37

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_28
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_37

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_28

    :cond_37
    goto/16 :goto_4e

    :pswitch_3a
    move/from16 v2, v18

    :try_start_c
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    move v2, v0

    goto :goto_29

    :catch_c
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAutoCallPickupState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_3b
    const/4 v11, 0x0

    move v2, v11

    :try_start_d
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    move v2, v0

    goto :goto_2a

    :catch_d
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getUsbConnectionType"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_3c
    const/4 v11, 0x0

    move v2, v11

    :try_start_e
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    move v2, v0

    goto :goto_2b

    :catch_e
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getUsbConnectionTypeInternal"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_3d
    move-object v2, v13

    :try_start_f
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    move-object v2, v0

    goto :goto_2c

    :catch_f
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    nop

    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedVolumeKeyAppsList"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_38

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_38

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_38

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2d

    :cond_38
    goto/16 :goto_4e

    :pswitch_3e
    const/4 v2, 0x0

    move v10, v2

    :try_start_10
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_10

    move v10, v0

    goto :goto_2e

    :catch_10
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getSettingsEnabledItems"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_3f
    const/4 v11, 0x0

    move v2, v11

    :try_start_11
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    move v2, v0

    goto :goto_2f

    :catch_11
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedVolumeKeyAppState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_40
    const/4 v11, 0x0

    move v2, v11

    :try_start_12
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_12

    move v2, v0

    goto :goto_30

    :catch_12
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedHardKeyIntentState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_41
    const/4 v11, 0x0

    move v2, v11

    :try_start_13
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetConfigurationType()I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13

    move v2, v0

    goto/16 :goto_31

    :catch_13
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getEthernetConfigurationType"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_42
    const/4 v10, 0x1

    move v2, v10

    :try_start_14
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetState()Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_14

    move v2, v0

    goto/16 :goto_32

    :catch_14
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getEthernetState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_43
    move-object v2, v13

    :try_start_15
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_15

    move-object v2, v0

    goto/16 :goto_33

    :catch_15
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    nop

    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAppBlockDownloadNamespaces"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_39

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_39

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_34
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_39

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_34

    :cond_39
    goto/16 :goto_4e

    :pswitch_44
    const/4 v2, 0x0

    move v10, v2

    :try_start_16
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_16

    move v10, v0

    goto/16 :goto_35

    :catch_16
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getAppBlockDownloadState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_45
    const/4 v11, 0x0

    move v2, v11

    :try_start_17
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_17

    move v2, v0

    goto/16 :goto_36

    :catch_17
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getToastGravityYOffset"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_46
    const/4 v11, 0x0

    move v2, v11

    :try_start_18
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18

    move v2, v0

    goto/16 :goto_37

    :catch_18
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getToastGravityXOffset"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_47
    const/4 v11, 0x0

    move v2, v11

    :try_start_19
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    move v2, v0

    goto/16 :goto_38

    :catch_19
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getToastGravity"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_48
    const/4 v11, 0x0

    move v2, v11

    :try_start_1a
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    move v2, v0

    goto/16 :goto_39

    :catch_1a
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_39
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getToastGravityEnabledState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_49
    const/4 v11, 0x0

    move v2, v11

    :try_start_1b
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1b

    move v2, v0

    goto/16 :goto_3a

    :catch_1b
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3a
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getToastShowPackageNameState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_4a
    const/4 v10, 0x1

    move v2, v10

    :try_start_1c
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_1c

    move v2, v0

    goto/16 :goto_3b

    :catch_1c
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3b
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getToastEnabledState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_4b
    const/4 v11, 0x0

    move v2, v11

    :try_start_1d
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I

    move-result v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_1d

    move v2, v0

    goto/16 :goto_3c

    :catch_1d
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getLockScreenHiddenItems"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_4c
    const/16 v0, 0x14

    move v2, v0

    :try_start_1e
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchDelay()I

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1e

    move v2, v0

    goto/16 :goto_3d

    :catch_1e
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getWifiAutoSwitchDelay"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_4d
    const/16 v0, -0xc8

    move v2, v0

    :try_start_1f
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchThreshold()I

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_1f

    move v2, v0

    goto/16 :goto_3e

    :catch_1f
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3e
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getWifiAutoSwitchThreshold"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_4e
    const/4 v11, 0x0

    move v2, v11

    :try_start_20
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchState()Z

    move-result v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_20

    move v2, v0

    goto/16 :goto_3f

    :catch_20
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getWifiAutoSwitchState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_4f
    const/4 v11, 0x0

    move v2, v11

    :try_start_21
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_21

    move v2, v0

    goto/16 :goto_40

    :catch_21
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getScreenOffOnStatusBarDoubleTapState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_50
    const/4 v11, 0x0

    move v2, v11

    :try_start_22
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z

    move-result v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_22

    move v2, v0

    goto/16 :goto_41

    :catch_22
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_41
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getScreenOffOnHomeLongPressState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_51
    const/4 v10, 0x1

    move v2, v10

    :try_start_23
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    move-result v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_23

    move v2, v0

    goto/16 :goto_42

    :catch_23
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_42
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getGearNotificationState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_52
    const/4 v11, 0x0

    move v2, v11

    :try_start_24
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z

    move-result v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_24

    move v2, v0

    goto/16 :goto_43

    :catch_24
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_43
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getVolumeButtonRotationState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_53
    move/from16 v2, v18

    :try_start_25
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressMode()I

    move-result v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_25

    move v2, v0

    goto/16 :goto_44

    :catch_25
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getRecentLongPressMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_54
    move-object v2, v13

    :try_start_26
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_26

    move-object v2, v0

    goto/16 :goto_45

    :catch_26
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_45
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getRecentLongPressActivity"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_55
    move/from16 v2, v18

    :try_start_27
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHideNotificationMessages()I

    move-result v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_27

    move v2, v0

    goto/16 :goto_46

    :catch_27
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedHideNotificationMessages"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_56
    const/4 v11, 0x0

    move v2, v11

    :try_start_28
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I

    move-result v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_28

    move v2, v0

    goto/16 :goto_47

    :catch_28
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSettingsHiddenState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_57
    const/4 v11, 0x0

    move v2, v11

    :try_start_29
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExtendedCallInfoState()Z

    move-result v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_29

    move v2, v0

    goto/16 :goto_48

    :catch_29
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getExtendedCallInfoState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_58
    move-object v2, v13

    :try_start_2a
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_2a

    move-object v2, v0

    goto/16 :goto_49

    :catch_2a
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_49
    nop

    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedPowerDialogCustomItems"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_3a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3a

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/custom/PowerItem;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    invoke-virtual {v10}, Lcom/samsung/android/knox/custom/PowerItem;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4a

    :cond_3a
    goto/16 :goto_4e

    :pswitch_59
    const/4 v2, 0x0

    move v10, v2

    :try_start_2b
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    move-result v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_2b

    move v10, v0

    goto/16 :goto_4b

    :catch_2b
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getSealedPowerDialogCustomItemsState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4e

    :pswitch_5a
    move/from16 v2, v18

    :try_start_2c
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    move-result v0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_2c

    move v2, v0

    goto/16 :goto_4c

    :catch_2c
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedPowerDialogItems"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4e

    :pswitch_5b
    const/4 v10, 0x1

    move v2, v10

    :try_start_2d
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskNotificationMessagesState()Z

    move-result v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_2d

    move v2, v0

    goto/16 :goto_4d

    :catch_2d
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4d
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedNotificationMessagesState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_4e
    return-object v0

    :cond_3b
    goto/16 :goto_d0

    :pswitch_5c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v7

    if-eqz v7, :cond_4a

    if-eqz v3, :cond_4a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    goto/16 :goto_4f

    :sswitch_4a
    const-string/jumbo v0, "getSealedUsbNetAddress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0xb

    goto/16 :goto_50

    :sswitch_4b
    const-string/jumbo v0, "getSealedStatusBarClockState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v10, 0x7

    goto/16 :goto_50

    :sswitch_4c
    const-string/jumbo v0, "getPowerMenuLockedState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x19

    goto/16 :goto_50

    :sswitch_4d
    const-string/jumbo v0, "getVolumePanelEnabledState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x13

    goto/16 :goto_50

    :sswitch_4e
    const-string/jumbo v0, "getStatusBarTextSize"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x17

    goto/16 :goto_50

    :sswitch_4f
    const-string/jumbo v0, "getSealedStatusBarMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move/from16 v10, v16

    goto/16 :goto_50

    :sswitch_50
    const-string/jumbo v0, "getLTESettingState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0xf

    goto/16 :goto_50

    :sswitch_51
    const-string/jumbo v0, "getScreenWakeupOnPowerState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0xe

    goto/16 :goto_50

    :sswitch_52
    const-string/jumbo v0, "getSealedStatusBarIconsState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x8

    goto/16 :goto_50

    :sswitch_53
    const-string/jumbo v0, "setSealedState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v10, 0x0

    goto/16 :goto_50

    :sswitch_54
    const-string/jumbo v0, "getVolumeControlStream"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x14

    goto/16 :goto_50

    :sswitch_55
    const-string/jumbo v0, "getSealedUsbNetState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0xa

    goto/16 :goto_50

    :sswitch_56
    const-string/jumbo v0, "getStatusBarText"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x15

    goto/16 :goto_50

    :sswitch_57
    const-string/jumbo v0, "getSealedUsbMassStorageState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x9

    goto/16 :goto_50

    :sswitch_58
    const-string/jumbo v0, "getPowerSavingMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0xc

    goto/16 :goto_50

    :sswitch_59
    const-string/jumbo v0, "getUltraPowerSavingPackages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x1a

    goto/16 :goto_50

    :sswitch_5a
    const-string/jumbo v0, "getTorchOnVolumeButtonsState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x18

    goto/16 :goto_50

    :sswitch_5b
    const-string/jumbo v0, "getInfraredState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x11

    goto/16 :goto_50

    :sswitch_5c
    const-string/jumbo v0, "getStatusBarTextStyle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x16

    goto :goto_50

    :sswitch_5d
    const-string/jumbo v0, "getSealedExitUI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move/from16 v10, v17

    goto/16 :goto_50

    :sswitch_5e
    const-string/jumbo v0, "getSealedHomeActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto/16 :goto_50

    :sswitch_5f
    const-string/jumbo v0, "getCallScreenDisabledItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x10

    goto/16 :goto_50

    :sswitch_60
    const-string/jumbo v0, "getSensorDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0x12

    goto/16 :goto_50

    :sswitch_61
    const-string/jumbo v0, "getSealedState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v10, 0x1

    goto/16 :goto_50

    :sswitch_62
    const-string/jumbo v0, "getSealedPowerDialogOptionMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v10, v12

    goto/16 :goto_50

    :sswitch_63
    const-string/jumbo v0, "getSealedModeString"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v10, v11

    goto/16 :goto_50

    :sswitch_64
    const-string/jumbo v0, "getChargingLEDState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v10, 0xd

    goto/16 :goto_50

    :cond_3c
    :goto_4f
    move/from16 v10, v18

    :goto_50
    packed-switch v10, :pswitch_data_7

    return-object v13

    :pswitch_5d
    move-object v2, v13

    :try_start_2e
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_2e

    move-object v2, v0

    goto/16 :goto_51

    :catch_2e
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_51
    nop

    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getUltraPowerSavingPackages"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3d

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_52
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_52

    :cond_3d
    goto/16 :goto_71

    :pswitch_5e
    const/4 v2, 0x1

    move v10, v2

    :try_start_2f
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    move-result v0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_2f

    move v10, v0

    goto/16 :goto_53

    :catch_2f
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_53
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getPowerMenuLockedState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_5f
    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "torchlight_enable"

    invoke-static {v0, v2, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    goto/16 :goto_54

    :cond_3e
    const/4 v0, 0x0

    :goto_54
    new-instance v2, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getTorchOnVolumeButtonsState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_60

    :pswitch_60
    const/4 v11, 0x0

    move v2, v11

    :try_start_30
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I

    move-result v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_30

    move v2, v0

    goto/16 :goto_55

    :catch_30
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_55
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getStatusBarTextSize"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_61
    const/4 v11, 0x0

    move v2, v11

    :try_start_31
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I

    move-result v0
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_31

    move v2, v0

    goto/16 :goto_56

    :catch_31
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getStatusBarTextStyle"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_62
    move-object v2, v13

    :try_start_32
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_32} :catch_32

    move-object v2, v0

    goto/16 :goto_57

    :catch_32
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_57
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getStatusBarText"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_63
    const/4 v10, 0x0

    move v2, v10

    :try_start_33
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I

    move-result v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_33

    move v2, v0

    goto/16 :goto_58

    :catch_33
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_58
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getVolumeControlStream"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_64
    const/4 v10, 0x1

    move v2, v10

    :try_start_34
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z

    move-result v0
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_34} :catch_34

    move v2, v0

    goto/16 :goto_59

    :catch_34
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_59
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getVolumePanelEnabledState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_65
    const/4 v11, 0x0

    move v2, v11

    :try_start_35
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I

    move-result v0
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_35} :catch_35

    move v2, v0

    goto/16 :goto_5a

    :catch_35
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5a
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSensorDisabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_66
    const/4 v10, 0x1

    move v2, v10

    :try_start_36
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z

    move-result v0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_36} :catch_36

    move v2, v0

    goto/16 :goto_5b

    :catch_36
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5b
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getInfraredState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_67
    const/4 v11, 0x0

    move v2, v11

    :try_start_37
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I

    move-result v0
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_37} :catch_37

    move v2, v0

    goto/16 :goto_5c

    :catch_37
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5c
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getCallScreenDisabledItems"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_68
    const/4 v11, 0x0

    move v2, v11

    :try_start_38
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z

    move-result v0
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_38} :catch_38

    move v2, v0

    goto/16 :goto_5d

    :catch_38
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5d
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getLTESettingState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_69
    const/4 v10, 0x1

    move v2, v10

    :try_start_39
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result v0
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_39} :catch_39

    move v2, v0

    goto/16 :goto_5e

    :catch_39
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5e
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getScreenWakeupOnPowerState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_6a
    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "led_indicator_charing"

    const/4 v10, 0x1

    invoke-static {v0, v2, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    goto/16 :goto_5f

    :cond_3f
    const/4 v0, 0x0

    :goto_5f
    new-instance v2, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getChargingLEDState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_60
    move-object v0, v2

    goto/16 :goto_71

    :pswitch_6b
    const/4 v11, 0x0

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v10, "ultra_powersaving_mode"

    invoke-static {v2, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_40

    const/4 v0, 0x2

    goto/16 :goto_61

    :cond_40
    const/4 v10, 0x0

    iget-object v11, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_switch"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_41

    const/4 v0, 0x0

    goto/16 :goto_61

    :cond_41
    const/4 v0, 0x1

    :goto_61
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getPowerSavingMode"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    move-object v0, v8

    goto/16 :goto_71

    :pswitch_6c
    if-eqz v4, :cond_43

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_42

    goto/16 :goto_63

    :cond_42
    const/4 v2, 0x0

    aget-object v0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object v10, v13

    :try_start_3a
    invoke-interface {v7, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3a} :catch_3a

    move-object v10, v0

    goto/16 :goto_62

    :catch_3a
    move-exception v0

    move-object v11, v0

    const-string v11, "SecContentProvider2"

    const-string v12, "Failed talking with KnoxCustomManager service"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_62
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getSealedUsbNetAddress"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :cond_43
    :goto_63
    nop

    return-object v13

    :pswitch_6d
    const/4 v2, 0x0

    move v10, v2

    :try_start_3b
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetStateInternal()Z

    move-result v0
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3b} :catch_3b

    move v10, v0

    goto/16 :goto_64

    :catch_3b
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_64
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getSealedUsbNetState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_6e
    const/4 v2, 0x1

    move v10, v2

    :try_start_3c
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z

    move-result v0
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3c} :catch_3c

    move v10, v0

    goto/16 :goto_65

    :catch_3c
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_65
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getSealedUsbMassStorageState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_6f
    const/4 v2, 0x1

    move v10, v2

    :try_start_3d
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarIconsState()Z

    move-result v0
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3d} :catch_3d

    move v10, v0

    goto/16 :goto_66

    :catch_3d
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_66
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getSealedStatusBarIconsState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_70
    const/4 v2, 0x1

    move v10, v2

    :try_start_3e
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarClockState()Z

    move-result v0
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_3e} :catch_3e

    move v10, v0

    goto/16 :goto_67

    :catch_3e
    move-exception v0

    move-object v2, v0

    const-string v2, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_67
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v2, "getSealedStatusBarClockState"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v2, v11

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_71
    move v2, v12

    :try_start_3f
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarMode()I

    move-result v0
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_3f} :catch_3f

    move v2, v0

    goto/16 :goto_68

    :catch_3f
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_68
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedStatusBarMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_72
    move-object v2, v13

    :try_start_40
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;

    move-result-object v0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_40} :catch_40

    move-object v2, v0

    goto/16 :goto_69

    :catch_40
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_69
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedHomeActivity"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_73
    const/4 v10, 0x0

    if-eqz v4, :cond_45

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_44

    goto/16 :goto_6b

    :cond_44
    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object v10, v13

    :try_start_41
    invoke-interface {v7, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    move-result-object v0
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_41} :catch_41

    move-object v10, v0

    goto/16 :goto_6a

    :catch_41
    move-exception v0

    move-object v11, v0

    const-string v11, "SecContentProvider2"

    const-string v12, "Failed talking with KnoxCustomManager service"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6a
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getSealedExitUI"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :cond_45
    :goto_6b
    nop

    return-object v13

    :pswitch_74
    if-eqz v4, :cond_47

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_46

    goto/16 :goto_6d

    :cond_46
    const/4 v2, 0x0

    aget-object v0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object v10, v13

    :try_start_42
    invoke-interface {v7, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_42} :catch_42

    move-object v10, v0

    goto/16 :goto_6c

    :catch_42
    move-exception v0

    move-object v11, v0

    const-string v11, "SecContentProvider2"

    const-string v12, "Failed talking with KnoxCustomManager service"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6c
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getSealedModeString"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :cond_47
    :goto_6d
    nop

    return-object v13

    :pswitch_75
    move v2, v12

    :try_start_43
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    move-result v0
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_43} :catch_43

    move v2, v0

    goto/16 :goto_6e

    :catch_43
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with KnoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6e
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedPowerDialogOptionMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_76
    const/4 v11, 0x0

    move v2, v11

    :try_start_44
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    move-result v0
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_44} :catch_44

    move v2, v0

    goto/16 :goto_6f

    :catch_44
    move-exception v0

    move-object v10, v0

    const-string v10, "SecContentProvider2"

    const-string v11, "Failed talking with knoxCustomManager service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6f
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getSealedState"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :pswitch_77
    if-eqz v4, :cond_49

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_48

    goto/16 :goto_72

    :cond_48
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    aget-object v11, v4, v2

    move/from16 v2, v18

    :try_start_45
    invoke-interface {v7, v10, v11}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    move-result v0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_45} :catch_45

    move v2, v0

    goto/16 :goto_70

    :catch_45
    move-exception v0

    move-object v12, v0

    const-string v12, "SecContentProvider2"

    const-string v13, "Failed talking with KnoxCustomManager service"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_70
    new-instance v0, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "setSealedState"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v8, v13

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_71
    return-object v0

    :cond_49
    :goto_72
    nop

    return-object v13

    :cond_4a
    goto/16 :goto_d0

    :pswitch_78
    const-string/jumbo v0, "kioskmode"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    if-eqz v0, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4

    goto/16 :goto_73

    :sswitch_65
    const-string/jumbo v2, "isNightClockAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/16 v10, 0x9

    goto/16 :goto_74

    :sswitch_66
    const-string/jumbo v2, "isInformationStreamAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/16 v10, 0xc

    goto/16 :goto_74

    :sswitch_67
    const-string/jumbo v2, "isAirCommandModeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    move v10, v11

    goto/16 :goto_74

    :sswitch_68
    const-string/jumbo v2, "isAppsEdgeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/16 v10, 0xd

    goto/16 :goto_74

    :sswitch_69
    const-string/jumbo v2, "isNavigationBarHidden"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v10, 0x0

    goto/16 :goto_74

    :sswitch_6a
    const-string/jumbo v2, "getKioskHomePackage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/16 v10, 0x8

    goto/16 :goto_74

    :sswitch_6b
    const-string/jumbo v2, "isMultiWindowModeAllowedAsUser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    move v10, v12

    goto/16 :goto_74

    :sswitch_6c
    const-string/jumbo v2, "isAirViewModeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    move/from16 v10, v17

    goto/16 :goto_74

    :sswitch_6d
    const-string/jumbo v2, "getBlockedHwKeysCache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto/16 :goto_74

    :sswitch_6e
    const-string/jumbo v2, "isMultiWindowModeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v10, 0x1

    goto/16 :goto_74

    :sswitch_6f
    const-string/jumbo v2, "isKioskModeEnabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v10, 0x7

    goto/16 :goto_74

    :sswitch_70
    const-string/jumbo v2, "isPeopleEdgeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/16 v10, 0xa

    goto/16 :goto_74

    :sswitch_71
    const-string/jumbo v2, "isEdgeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/16 v10, 0xe

    goto/16 :goto_74

    :sswitch_72
    const-string/jumbo v2, "isEdgeLightingAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/16 v10, 0xb

    goto/16 :goto_74

    :sswitch_73
    const-string/jumbo v2, "isTaskManagerAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    move/from16 v10, v16

    goto/16 :goto_74

    :cond_4b
    :goto_73
    move/from16 v10, v18

    :goto_74
    packed-switch v10, :pswitch_data_8

    goto/16 :goto_7b

    :pswitch_79
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isEdgeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :pswitch_7a
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAppsEdgeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :pswitch_7b
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isInformationStreamAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :pswitch_7c
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isEdgeLightingAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :pswitch_7d
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isPeopleEdgeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :pswitch_7e
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNightClockAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :pswitch_7f
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getKioskHomePackage"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :pswitch_80
    if-nez v4, :cond_4c

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    goto/16 :goto_75

    :cond_4c
    const/4 v2, 0x0

    aget-object v10, v4, v2

    array-length v2, v4

    if-lt v2, v12, :cond_4d

    const/4 v2, 0x1

    aget-object v11, v4, v2

    const-string/jumbo v2, "emergency"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeProcessingOrEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const-string v11, "SecContentProvider2"

    const-string/jumbo v12, "isKioskModeEnabled param EMERGENCY"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75

    :cond_4d
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v2, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const-string v11, "SecContentProvider2"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isKioskModeEnabled param UID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_75
    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isKioskModeEnabled return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isKioskModeEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :pswitch_81
    if-eqz v4, :cond_4f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_4e

    goto/16 :goto_76

    :cond_4e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v0, v2, v10}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isTaskManagerAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :cond_4f
    :goto_76
    return-object v13

    :pswitch_82
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getBlockedHwKeysCache"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :pswitch_83
    if-nez v4, :cond_50

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    goto/16 :goto_77

    :cond_50
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isAirViewModeAllowed uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v13, v4, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_77
    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isAirViewModeAllowed return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAirViewModeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :pswitch_84
    if-nez v4, :cond_51

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    goto/16 :goto_78

    :cond_51
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isAirCommandModeAllowed uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v13, v4, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isAirCommandModeAllowed return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAirCommandModeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :pswitch_85
    const/4 v10, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_53

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v10, :cond_52

    goto/16 :goto_79

    :cond_52
    aget-object v2, v4, v12

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v2

    const-string v10, "SecContentProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isMultiWindowModeAllowedAsUser return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isMultiWindowModeAllowedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :cond_53
    :goto_79
    return-object v13

    :pswitch_86
    if-eqz v4, :cond_55

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_54

    goto/16 :goto_7a

    :cond_54
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v0, v2, v10}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isMultiWindowModeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7b

    :cond_55
    :goto_7a
    return-object v13

    :pswitch_87
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNavigationBarHidden"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_7b
    return-object v8

    :pswitch_88
    const-string/jumbo v0, "eas_account_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz v0, :cond_e2

    if-eqz v3, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_5

    goto/16 :goto_7c

    :sswitch_74
    const-string/jumbo v2, "getMaxEmailHTMLBodyTruncationSize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v10, 0x7

    goto/16 :goto_7d

    :sswitch_75
    const-string/jumbo v2, "getMaxCalendarAgeFilter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    goto/16 :goto_7d

    :sswitch_76
    const-string/jumbo v2, "getMaxEmailBodyTruncationSize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    move/from16 v10, v16

    goto/16 :goto_7d

    :sswitch_77
    const-string/jumbo v2, "getForceSMIMECertificateForSigning"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/16 v10, 0x8

    goto/16 :goto_7d

    :sswitch_78
    const-string/jumbo v2, "isIncomingAttachmentsAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    move v10, v11

    goto/16 :goto_7d

    :sswitch_79
    const-string/jumbo v2, "getForceSMIMECertificate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    move v10, v12

    goto/16 :goto_7d

    :sswitch_7a
    const-string/jumbo v2, "getAccountEmailPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/16 v10, 0xa

    goto/16 :goto_7d

    :sswitch_7b
    const-string/jumbo v2, "getRequiredEncryptedMIMEMessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v10, 0x1

    goto/16 :goto_7d

    :sswitch_7c
    const-string/jumbo v2, "getForceSMIMECertificateForEncryption"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/16 v10, 0x9

    goto/16 :goto_7d

    :sswitch_7d
    const-string/jumbo v2, "getAccountCertificatePassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/16 v10, 0xb

    goto/16 :goto_7d

    :sswitch_7e
    const-string/jumbo v2, "getRequiredSignedMIMEMessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v10, 0x0

    goto/16 :goto_7d

    :sswitch_7f
    const-string/jumbo v2, "getMaxEmailAgeFilter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/16 v10, 0xc

    goto/16 :goto_7d

    :sswitch_80
    const-string/jumbo v2, "setAccountEmailPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/16 v10, 0xd

    goto/16 :goto_7d

    :sswitch_81
    const-string/jumbo v2, "getIncomingAttachmentSize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    move/from16 v10, v17

    goto/16 :goto_7d

    :cond_56
    :goto_7c
    move/from16 v10, v18

    :goto_7d
    packed-switch v10, :pswitch_data_9

    const-string v2, "SecContentProvider2"

    const-string/jumbo v10, "return null"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_89
    if-eqz v4, :cond_58

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v10, 0x1

    if-ge v2, v10, :cond_57

    goto/16 :goto_7e

    :cond_57
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v2, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v10

    new-instance v2, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "setAccountEmailPassword"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v8, v13

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    move-object v8, v2

    goto/16 :goto_8b

    :cond_58
    :goto_7e
    return-object v13

    :pswitch_8a
    if-eqz v4, :cond_5a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_59

    goto/16 :goto_7f

    :cond_59
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaxEmailAgeFilter"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_5a
    :goto_7f
    return-object v13

    :pswitch_8b
    if-eqz v4, :cond_5c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_5b

    goto/16 :goto_80

    :cond_5b
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getAccountCertificatePassword"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_5c
    :goto_80
    return-object v13

    :pswitch_8c
    if-eqz v4, :cond_5e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_5d

    goto/16 :goto_81

    :cond_5d
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getAccountEmailPassword"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_5e
    :goto_81
    return-object v13

    :pswitch_8d
    if-eqz v4, :cond_60

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_5f

    goto/16 :goto_82

    :cond_5f
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getForceSMIMECertificateForEncryption"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_60
    :goto_82
    return-object v13

    :pswitch_8e
    if-eqz v4, :cond_62

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_61

    goto/16 :goto_83

    :cond_61
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getForceSMIMECertificateForSigning"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_62
    :goto_83
    return-object v13

    :pswitch_8f
    if-eqz v4, :cond_64

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_63

    goto/16 :goto_84

    :cond_63
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaxEmailHTMLBodyTruncationSize"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_64
    :goto_84
    return-object v13

    :pswitch_90
    if-eqz v4, :cond_66

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_65

    goto/16 :goto_85

    :cond_65
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaxEmailBodyTruncationSize"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_66
    :goto_85
    return-object v13

    :pswitch_91
    if-eqz v4, :cond_68

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_67

    goto/16 :goto_86

    :cond_67
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaxCalendarAgeFilter"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_68
    :goto_86
    return-object v13

    :pswitch_92
    if-eqz v4, :cond_6a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_69

    goto/16 :goto_87

    :cond_69
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getIncomingAttachmentSize"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_6a
    :goto_87
    return-object v13

    :pswitch_93
    if-eqz v4, :cond_6c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_6b

    goto/16 :goto_88

    :cond_6b
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isIncomingAttachmentsAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_6c
    :goto_88
    return-object v13

    :pswitch_94
    if-eqz v4, :cond_6e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_6d

    goto/16 :goto_89

    :cond_6d
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getForceSMIMECertificate"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_6e
    :goto_89
    return-object v13

    :pswitch_95
    if-eqz v4, :cond_70

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_6f

    goto/16 :goto_8a

    :cond_6f
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getRequiredEncryptedMIMEMessages"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_70
    :goto_8a
    return-object v13

    :pswitch_96
    if-eqz v4, :cond_72

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_71

    goto/16 :goto_8c

    :cond_71
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getRequiredSignedMIMEMessages"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_8b
    return-object v8

    :cond_72
    :goto_8c
    return-object v13

    :pswitch_97
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v2

    if-eqz v2, :cond_e2

    if-eqz v3, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_6

    goto/16 :goto_8d

    :sswitch_82
    const-string/jumbo v0, "isAdminRemovable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    move/from16 v19, v11

    goto/16 :goto_8e

    :sswitch_83
    const-string/jumbo v0, "getRemoveWarning"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    move/from16 v19, v12

    goto/16 :goto_8e

    :sswitch_84
    const-string/jumbo v0, "removeActiveAdmin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    move/from16 v19, v10

    goto/16 :goto_8e

    :sswitch_85
    const-string/jumbo v0, "setActiveAdmin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    move/from16 v19, v17

    goto/16 :goto_8e

    :sswitch_86
    const-string/jumbo v0, "isMdmAdminPresent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/16 v19, 0x9

    goto/16 :goto_8e

    :sswitch_87
    const-string/jumbo v0, "getEnterpriseSdkVer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/16 v19, 0xa

    goto/16 :goto_8e

    :sswitch_88
    const-string/jumbo v0, "getAdminRemovable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/16 v19, 0x0

    goto/16 :goto_8e

    :sswitch_89
    const-string/jumbo v0, "updateAdminPermissions"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/16 v19, 0x7

    goto/16 :goto_8e

    :sswitch_8a
    const-string/jumbo v0, "getActiveAdmins"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/16 v19, 0x1

    goto/16 :goto_8e

    :sswitch_8b
    const-string/jumbo v0, "setAdminRemovable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    move/from16 v19, v16

    goto/16 :goto_8e

    :sswitch_8c
    const-string/jumbo v0, "getMyKnoxAdmin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/16 v19, 0x8

    goto/16 :goto_8e

    :cond_73
    :goto_8d
    move/from16 v19, v18

    :goto_8e
    packed-switch v19, :pswitch_data_a

    goto/16 :goto_97

    :pswitch_98
    const-string v0, "24"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getEnterpriseSdkVer"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_97

    :pswitch_99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_46
    invoke-virtual {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresent()Z

    move-result v0

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    invoke-direct {v12, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    new-array v12, v13, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    goto/16 :goto_97

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_9a
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getMyKnoxAdmin(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMyKnoxAdmin"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_97

    :pswitch_9b
    goto/16 :goto_97

    :pswitch_9c
    const/4 v10, 0x1

    if-eqz v4, :cond_75

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v10, :cond_74

    goto/16 :goto_8f

    :cond_74
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    aget-object v12, v4, v10

    invoke-virtual {v2, v0, v11, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v0

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "setAdminRemovable"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_97

    :cond_75
    :goto_8f
    return-object v13

    :pswitch_9d
    if-eqz v4, :cond_77

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-ge v0, v10, :cond_76

    goto/16 :goto_90

    :cond_76
    const/4 v10, 0x0

    :try_start_47
    aget-object v0, v4, v10

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_47} :catch_46

    goto/16 :goto_97

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_97

    :cond_77
    :goto_90
    return-object v13

    :pswitch_9e
    if-eqz v4, :cond_79

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_78

    goto/16 :goto_91

    :cond_78
    const/4 v10, 0x0

    :try_start_48
    aget-object v0, v4, v10

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_48} :catch_47

    goto/16 :goto_97

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_97

    :cond_79
    :goto_91
    return-object v13

    :pswitch_9f
    if-eqz v4, :cond_7b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-ge v0, v10, :cond_7a

    goto/16 :goto_92

    :cond_7a
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAdminRemovable"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_97

    :cond_7b
    :goto_92
    return-object v13

    :pswitch_a0
    if-eqz v4, :cond_7d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-gt v0, v10, :cond_7c

    goto/16 :goto_93

    :cond_7c
    const/4 v11, 0x0

    :try_start_49
    aget-object v0, v4, v11

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    aget-object v10, v4, v10

    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/RemoteCallback;

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_49} :catch_48

    goto/16 :goto_97

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_97

    :cond_7d
    :goto_93
    return-object v13

    :pswitch_a1
    if-eqz v4, :cond_7f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_7e

    goto/16 :goto_95

    :cond_7e
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getActiveAdmins"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    if-eqz v0, :cond_82

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_82

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_94
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_82

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-virtual {v8, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_94

    :cond_7f
    :goto_95
    return-object v13

    :pswitch_a2
    if-eqz v4, :cond_81

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_80

    goto/16 :goto_96

    :cond_80
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getAdminRemovable"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_97

    :cond_81
    :goto_96
    return-object v13

    :cond_82
    :goto_97
    return-object v8

    :pswitch_a3
    goto/16 :goto_d0

    :pswitch_a4
    goto/16 :goto_d0

    :pswitch_a5
    goto/16 :goto_d0

    :pswitch_a6
    const-string/jumbo v0, "email_account_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    if-eqz v0, :cond_e2

    if-eqz v3, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v10, -0x5ed62634

    if-eq v2, v10, :cond_86

    const v10, 0x655a3d46

    if-eq v2, v10, :cond_85

    const v10, 0x705941e0

    if-eq v2, v10, :cond_84

    const v10, 0x7378391a

    if-eq v2, v10, :cond_83

    goto/16 :goto_98

    :cond_83
    const-string/jumbo v2, "getSecurityIncomingServerPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    const/4 v11, 0x0

    goto/16 :goto_99

    :cond_84
    const-string/jumbo v2, "getSecurityOutgoingServerPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    const/4 v11, 0x1

    goto/16 :goto_99

    :cond_85
    const-string/jumbo v2, "setSecurityInComingServerPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    move v11, v12

    goto/16 :goto_99

    :cond_86
    const-string/jumbo v2, "setSecurityOutGoingServerPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    goto/16 :goto_99

    :cond_87
    :goto_98
    move/from16 v11, v18

    :goto_99
    packed-switch v11, :pswitch_data_b

    return-object v13

    :pswitch_a7
    if-eqz v4, :cond_89

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v10, 0x1

    if-ge v2, v10, :cond_88

    goto/16 :goto_9a

    :cond_88
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-virtual {v0, v2, v12}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v12

    new-instance v2, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v14, v10, [Ljava/lang/String;

    aput-object v3, v14, v11

    invoke-direct {v2, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v8, v10, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v11

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_9b

    :cond_89
    :goto_9a
    return-object v13

    :pswitch_a8
    if-eqz v4, :cond_8b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v10, 0x1

    if-ge v2, v10, :cond_8a

    goto/16 :goto_9c

    :cond_8a
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-virtual {v0, v2, v12}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v12

    new-instance v2, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v14, v10, [Ljava/lang/String;

    aput-object v3, v14, v11

    invoke-direct {v2, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v8, v10, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v11

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_9b
    move-object v8, v2

    goto/16 :goto_9e

    :cond_8b
    :goto_9c
    return-object v13

    :pswitch_a9
    if-eqz v4, :cond_8d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_8c

    goto/16 :goto_9d

    :cond_8c
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getSecurityOutgoingServerPassword"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_9e

    :cond_8d
    :goto_9d
    return-object v13

    :pswitch_aa
    if-eqz v4, :cond_8f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_8e

    goto/16 :goto_9f

    :cond_8e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getSecurityIncomingServerPassword"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_9e
    return-object v8

    :cond_8f
    :goto_9f
    return-object v13

    :pswitch_ab
    const-string/jumbo v0, "email_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/EmailPolicy;

    if-eqz v0, :cond_e2

    if-eqz v3, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_7

    goto/16 :goto_a0

    :sswitch_8d
    const-string/jumbo v2, "isAccountAdditionAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    const/4 v10, 0x0

    goto/16 :goto_a1

    :sswitch_8e
    const-string/jumbo v2, "getAllowEmailForwarding"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    const/4 v10, 0x1

    goto/16 :goto_a1

    :sswitch_8f
    const-string/jumbo v2, "isEmailNotificationsEnabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    move v10, v11

    goto/16 :goto_a1

    :sswitch_90
    const-string/jumbo v2, "isEmailSettingsChangesAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    move v10, v12

    goto/16 :goto_a1

    :sswitch_91
    const-string/jumbo v2, "getEnterpriseEmailAccountObject"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    move/from16 v10, v16

    goto/16 :goto_a1

    :sswitch_92
    const-string/jumbo v2, "getEnterpriseExchangeAccountObject"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    goto/16 :goto_a1

    :sswitch_93
    const-string/jumbo v2, "getAllowHtmlEmail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    move/from16 v10, v17

    goto/16 :goto_a1

    :cond_90
    :goto_a0
    move/from16 v10, v18

    :goto_a1
    packed-switch v10, :pswitch_data_c

    return-object v13

    :pswitch_ac
    if-eqz v4, :cond_93

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_91

    goto/16 :goto_a2

    :cond_91
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v2, v10, v11}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getEnterpriseEmailAccountObject"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    if-nez v9, :cond_92

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v9, v10

    :cond_92
    const-string/jumbo v10, "email.account"

    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_a8

    :cond_93
    :goto_a2
    return-object v13

    :pswitch_ad
    if-eqz v4, :cond_96

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_94

    goto/16 :goto_a3

    :cond_94
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v2, v10, v11}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getEnterpriseExchangeAccountObject"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    if-nez v9, :cond_95

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v9, v10

    :cond_95
    const-string/jumbo v10, "eas.account"

    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_a8

    :cond_96
    :goto_a3
    return-object v13

    :pswitch_ae
    if-eqz v4, :cond_98

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_97

    goto/16 :goto_a4

    :cond_97
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v2, v11}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getAllowHtmlEmail"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a8

    :cond_98
    :goto_a4
    return-object v13

    :pswitch_af
    if-eqz v4, :cond_9a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_99

    goto/16 :goto_a5

    :cond_99
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isEmailNotificationsEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a8

    :cond_9a
    :goto_a5
    return-object v13

    :pswitch_b0
    if-eqz v4, :cond_9c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_9b

    goto/16 :goto_a6

    :cond_9b
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isEmailSettingsChangesAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a8

    :cond_9c
    :goto_a6
    return-object v13

    :pswitch_b1
    if-eqz v4, :cond_9e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_9d

    goto/16 :goto_a7

    :cond_9d
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v2, v11}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getAllowEmailForwarding"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a8

    :cond_9e
    :goto_a7
    return-object v13

    :pswitch_b2
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAccountAdditionAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_a8
    return-object v8

    :pswitch_b3
    const-string/jumbo v0, "dualsim_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    if-eqz v0, :cond_e2

    if-eqz v3, :cond_e2

    const-string/jumbo v2, "getpreferredsimslot"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getpreferredsimslot"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v8

    :pswitch_b4
    const-string v0, "device_account_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    if-eqz v0, :cond_e2

    if-eqz v3, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v10, -0x7117b61

    if-eq v2, v10, :cond_a0

    const v10, 0x4fb7d6e9    # 6.1686298E9f

    if-eq v2, v10, :cond_9f

    goto/16 :goto_a9

    :cond_9f
    const-string/jumbo v2, "isAccountAdditionAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    const/16 v18, 0x1

    goto/16 :goto_a9

    :cond_a0
    const-string/jumbo v2, "isAccountRemovalAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    const/16 v18, 0x0

    :cond_a1
    :goto_a9
    packed-switch v18, :pswitch_data_d

    return-object v13

    :pswitch_b5
    if-eqz v4, :cond_a3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v11, :cond_a2

    goto/16 :goto_aa

    :cond_a2
    const/4 v2, 0x0

    aget-object v10, v4, v2

    const/4 v2, 0x1

    aget-object v11, v4, v2

    aget-object v2, v4, v12

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v10, v11, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAccountAdditionAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ab

    :cond_a3
    :goto_aa
    return-object v13

    :pswitch_b6
    if-eqz v4, :cond_a5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v11, :cond_a4

    goto/16 :goto_ac

    :cond_a4
    const/4 v2, 0x0

    aget-object v10, v4, v2

    const/4 v2, 0x1

    aget-object v11, v4, v2

    aget-object v2, v4, v12

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v10, v11, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isAccountRemovalAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_ab
    nop

    return-object v8

    :cond_a5
    :goto_ac
    return-object v13

    :pswitch_b7
    const-string/jumbo v0, "knox_ccm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    if-eqz v0, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v10, -0x602f3b04

    if-eq v2, v10, :cond_a9

    const v10, -0x148747ff

    if-eq v2, v10, :cond_a8

    const v10, 0x37b7b049

    if-eq v2, v10, :cond_a7

    const v10, 0x7a36baec

    if-eq v2, v10, :cond_a6

    goto/16 :goto_ad

    :cond_a6
    const-string v2, "deleteCertificate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    const/16 v18, 0x1

    goto/16 :goto_ad

    :cond_a7
    const-string/jumbo v2, "isCCMPolicyEnabledForPackage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    move/from16 v18, v12

    goto/16 :goto_ad

    :cond_a8
    const-string/jumbo v2, "getCCMVersion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    move/from16 v18, v11

    goto/16 :goto_ad

    :cond_a9
    const-string/jumbo v2, "installCertificate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    const/16 v18, 0x0

    :cond_aa
    :goto_ad
    packed-switch v18, :pswitch_data_e

    return-object v13

    :pswitch_b8
    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getCCMVersion"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b1

    :pswitch_b9
    if-eqz v4, :cond_ac

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_ab

    goto/16 :goto_ae

    :cond_ab
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v2, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b1

    :cond_ac
    :goto_ae
    return-object v13

    :pswitch_ba
    if-eqz v4, :cond_ae

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_ad

    goto/16 :goto_af

    :cond_ad
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v2, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v11, "deleteCertificate"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b1

    :cond_ae
    :goto_af
    return-object v13

    :pswitch_bb
    if-eqz v4, :cond_b1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v12, :cond_af

    goto/16 :goto_b2

    :cond_af
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v13}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    const/4 v14, 0x0

    aget-object v15, v4, v14

    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    iput-boolean v14, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    const/4 v14, 0x1

    aget-object v15, v4, v14

    iput-object v15, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    aget-object v14, v4, v12

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    iput-boolean v14, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    nop

    :goto_b0
    move/from16 v11, v17

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    sub-int/2addr v14, v12

    if-ge v11, v14, :cond_b0

    aget-object v14, v4, v11

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v11, 0x1

    goto :goto_b0

    :cond_b0
    iput-object v10, v13, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    add-int/lit8 v12, v2, -0x2

    aget-object v12, v4, v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    add-int/lit8 v14, v2, -0x1

    aget-object v14, v4, v14

    invoke-virtual {v0, v11, v13, v12, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v11

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v14, "installCertificate"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v12, v15

    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_b1
    return-object v8

    :cond_b1
    :goto_b2
    return-object v13

    :pswitch_bc
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v2, :cond_e2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_8

    goto/16 :goto_b3

    :sswitch_94
    const-string/jumbo v0, "getAppInstallToSdCard"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    move/from16 v0, v17

    goto/16 :goto_b4

    :sswitch_95
    const-string/jumbo v0, "getApplicationUninstallationEnabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/4 v0, 0x0

    goto/16 :goto_b4

    :sswitch_96
    const-string/jumbo v0, "getApplicationStateDisabledList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x12

    goto/16 :goto_b4

    :sswitch_97
    const-string/jumbo v0, "isPackageUpdateAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x9

    goto/16 :goto_b4

    :sswitch_98
    const-string/jumbo v0, "isIntentDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    move v0, v12

    goto/16 :goto_b4

    :sswitch_99
    const-string/jumbo v0, "getPackagesFromDisableClipboardBlackList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x17

    goto/16 :goto_b4

    :sswitch_9a
    const-string/jumbo v0, "isUsbDevicePermittedForPackage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0xc

    goto/16 :goto_b4

    :sswitch_9b
    const-string/jumbo v0, "isChangeSmsDefaultAppAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0xe

    goto/16 :goto_b4

    :sswitch_9c
    const-string/jumbo v0, "getApplicationIconFromDb"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0xd

    goto/16 :goto_b4

    :sswitch_9d
    const-string/jumbo v0, "isApplicationForceStopDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    move v0, v10

    goto/16 :goto_b4

    :sswitch_9e
    const-string/jumbo v0, "isApplicationSetToDefault"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x10

    goto/16 :goto_b4

    :sswitch_9f
    const-string/jumbo v0, "getApplicationStateEnabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0xb

    goto/16 :goto_b4

    :sswitch_a0
    const-string/jumbo v0, "isApplicationClearCacheDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/4 v0, 0x7

    goto/16 :goto_b4

    :sswitch_a1
    const-string/jumbo v0, "getApplicationNameFromDb"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x8

    goto/16 :goto_b4

    :sswitch_a2
    const-string/jumbo v0, "getDefaultApplicationInternal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x11

    goto/16 :goto_b4

    :sswitch_a3
    const-string/jumbo v0, "getAllPackagesFromBatteryOptimizationWhiteList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x16

    goto/16 :goto_b4

    :sswitch_a4
    const-string/jumbo v0, "isChangeAssistDefaultAppAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0xf

    goto/16 :goto_b4

    :sswitch_a5
    const-string/jumbo v0, "isApplicationClearDataDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    move/from16 v0, v16

    goto/16 :goto_b4

    :sswitch_a6
    const-string/jumbo v0, "getApplicationUninstallationMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x15

    goto/16 :goto_b4

    :sswitch_a7
    const-string/jumbo v0, "getApplicationInstallUninstallList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x13

    goto/16 :goto_b4

    :sswitch_a8
    const-string/jumbo v0, "getApplicationNotificationMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    move v0, v11

    goto/16 :goto_b4

    :sswitch_a9
    const-string/jumbo v0, "getPackagesFromDisableClipboardBlackListPerUidInternal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x19

    goto/16 :goto_b4

    :sswitch_aa
    const-string/jumbo v0, "isApplicationInstalled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/4 v0, 0x1

    goto/16 :goto_b4

    :sswitch_ab
    const-string/jumbo v0, "getApplicationComponentState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0xa

    goto/16 :goto_b4

    :sswitch_ac
    const-string/jumbo v0, "getPackagesFromDisableClipboardWhiteListPerUidInternal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x1a

    goto/16 :goto_b4

    :sswitch_ad
    const-string/jumbo v0, "getPackagesFromDisableClipboardWhiteList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x18

    goto/16 :goto_b4

    :sswitch_ae
    const-string/jumbo v0, "getAppInstallationMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0x14

    goto/16 :goto_b4

    :cond_b2
    :goto_b3
    move/from16 v0, v18

    :goto_b4
    packed-switch v0, :pswitch_data_f

    const-string v0, "SecContentProvider2"

    const-string/jumbo v10, "return null"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_bd
    const/4 v0, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_b4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_b4

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v12, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v12, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v12, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v12

    move-object v10, v12

    check-cast v10, Ljava/util/HashMap;

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    aput-object v3, v13, v11

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    if-nez v9, :cond_b3

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object v9, v11

    :cond_b3
    const-string v11, "clipboard_whitelist_perUid"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_ce

    :cond_b4
    return-object v13

    :pswitch_be
    const/4 v0, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_b6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_b6

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v12, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v12, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v0, v13}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v12

    move-object v10, v12

    check-cast v10, Ljava/util/HashMap;

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v13, v13, [Ljava/lang/String;

    aput-object v3, v13, v11

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    if-nez v9, :cond_b5

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object v9, v11

    :cond_b5
    const-string v11, "clipboard_blacklist_perUid"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_ce

    :cond_b6
    return-object v13

    :pswitch_bf
    const/4 v0, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_b7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_b7

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v11, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_b5

    :cond_b7
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    :goto_b5
    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v14, v12

    invoke-direct {v11, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    if-eqz v10, :cond_b8

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b8

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v14, v13

    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_b6

    :cond_b8
    return-object v13

    :pswitch_c0
    const/4 v0, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_b9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_b9

    const/4 v11, 0x0

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v11, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_b7

    :cond_b9
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v10

    :goto_b7
    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v14, v12

    invoke-direct {v11, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    if-eqz v10, :cond_ba

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_ba

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v14, v13

    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_b8

    :cond_ba
    return-object v13

    :pswitch_c1
    invoke-virtual {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAllPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;

    move-result-object v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v12, v11

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    if-eqz v0, :cond_e0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_b9

    :pswitch_c2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    new-array v10, v11, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :pswitch_c3
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    new-array v10, v11, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :pswitch_c4
    if-eqz v4, :cond_bd

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-ge v0, v10, :cond_bb

    goto/16 :goto_bb

    :cond_bb
    const-string v0, "SecContentProvider2"

    const-string/jumbo v11, "getApplicationInstallUninstallList"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    aget-object v0, v4, v11

    invoke-virtual {v2, v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v14, v10, [Ljava/lang/String;

    aput-object v3, v14, v11

    invoke-direct {v12, v14}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    if-eqz v0, :cond_bc

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_bc

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_ba
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "SecContentProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getApplicationInstallUninstallList value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_ba

    :cond_bc
    const-string v10, "SecContentProvider2"

    const-string/jumbo v11, "getApplicationInstallUninstallList null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_bd
    :goto_bb
    const-string v0, "SecContentProvider2"

    const-string/jumbo v10, "getApplicationInstallUninstallList selectionArgs is null"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_c5
    invoke-virtual {v2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateDisabledList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_be

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_be

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v12, v11

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_bc
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "SecContentProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getApplicationStateDisabledList value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_bc

    :cond_be
    const-string v10, "SecContentProvider2"

    const-string/jumbo v11, "getApplicationStateDisabledList null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_c6
    if-eqz v4, :cond_c0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_bf

    goto/16 :goto_be

    :cond_bf
    move-object v10, v13

    const/4 v11, 0x0

    :try_start_4a
    aget-object v0, v4, v11

    invoke-static {v0, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_4a
    .catch Ljava/net/URISyntaxException; {:try_start_4a .. :try_end_4a} :catch_49

    move-object v10, v0

    goto/16 :goto_bd

    :catch_49
    move-exception v0

    const-string v11, "SecContentProvider2"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "URISyntaxException "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bd
    const/4 v11, 0x1

    aget-object v0, v4, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v10, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getDefaultApplicationInternal"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    if-eqz v0, :cond_e0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_c0
    :goto_be
    return-object v13

    :pswitch_c7
    if-eqz v4, :cond_c2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_c1

    goto/16 :goto_bf

    :cond_c1
    const/4 v10, 0x0

    aget-object v0, v4, v10

    const/4 v10, 0x1

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isApplicationSetToDefault"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_c2
    :goto_bf
    return-object v13

    :pswitch_c8
    if-eqz v4, :cond_c4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-ge v0, v10, :cond_c3

    goto/16 :goto_c0

    :cond_c3
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeAssistDefaultAppAllowed(I)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isChangeAssistDefaultAppAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_c4
    :goto_c0
    return-object v13

    :pswitch_c9
    if-eqz v4, :cond_c6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_c5

    goto/16 :goto_c1

    :cond_c5
    const/4 v10, 0x0

    aget-object v0, v4, v10

    const/4 v10, 0x1

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeSmsDefaultAppAllowed(Ljava/lang/String;I)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isChangeSmsDefaultAppAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_c6
    :goto_c1
    return-object v13

    :pswitch_ca
    if-eqz v4, :cond_c8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-ge v0, v10, :cond_c7

    goto/16 :goto_c2

    :cond_c7
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getApplicationIconFromDb"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    const/4 v11, 0x1

    new-array v11, v11, [[B

    aput-object v0, v11, v10

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_c8
    :goto_c2
    return-object v13

    :pswitch_cb
    if-eqz v4, :cond_ca

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v12, :cond_c9

    goto/16 :goto_c3

    :cond_c9
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x1

    aget-object v11, v4, v10

    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/usb/UsbDevice;

    aget-object v11, v4, v12

    invoke-virtual {v2, v0, v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isUsbDevicePermittedForPackage"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_ca
    :goto_c3
    return-object v13

    :pswitch_cc
    if-eqz v4, :cond_cc

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_cb

    goto/16 :goto_c4

    :cond_cb
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getApplicationStateEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_cc
    :goto_c4
    return-object v13

    :pswitch_cd
    if-eqz v4, :cond_ce

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_cd

    goto/16 :goto_c5

    :cond_cd
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getApplicationComponentState"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_ce
    :goto_c5
    return-object v13

    :pswitch_ce
    if-eqz v4, :cond_d0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-gt v0, v10, :cond_cf

    goto/16 :goto_c6

    :cond_cf
    const/4 v11, 0x0

    aget-object v0, v4, v11

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isPackageUpdateAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_d0
    :goto_c6
    return-object v13

    :pswitch_cf
    if-eqz v4, :cond_d2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, 0x1

    if-gt v0, v10, :cond_d1

    goto/16 :goto_c7

    :cond_d1
    const/4 v11, 0x0

    aget-object v0, v4, v11

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getApplicationNameFromDb"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_d2
    :goto_c7
    return-object v13

    :pswitch_d0
    if-eqz v4, :cond_d4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v12, :cond_d3

    goto/16 :goto_c8

    :cond_d3
    const/4 v10, 0x0

    aget-object v0, v4, v10

    const/4 v10, 0x1

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v11, v4, v12

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v2, v0, v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isApplicationClearCacheDisabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_d4
    :goto_c8
    return-object v13

    :pswitch_d1
    if-eqz v4, :cond_d6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v12, :cond_d5

    goto/16 :goto_c9

    :cond_d5
    const/4 v10, 0x0

    aget-object v0, v4, v10

    const/4 v10, 0x1

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v11, v4, v12

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v2, v0, v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isApplicationClearDataDisabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_d6
    :goto_c9
    return-object v13

    :pswitch_d2
    if-eqz v4, :cond_d8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v10, :cond_d7

    goto/16 :goto_ca

    :cond_d7
    const/4 v13, 0x0

    aget-object v22, v4, v13

    const/4 v13, 0x1

    aget-object v0, v4, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    aget-object v24, v4, v12

    aget-object v25, v4, v11

    aget-object v26, v4, v17

    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v27

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isApplicationForceStopDisabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_d8
    :goto_ca
    return-object v13

    :pswitch_d3
    const/4 v0, 0x1

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getAppInstallToSdCard"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :pswitch_d4
    if-eqz v4, :cond_da

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_d9

    goto/16 :goto_cb

    :cond_d9
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getApplicationNotificationMode"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_da
    :goto_cb
    return-object v13

    :pswitch_d5
    if-eqz v4, :cond_dc

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_db

    goto/16 :goto_cc

    :cond_db
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isIntentDisabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_dc
    :goto_cc
    return-object v13

    :pswitch_d6
    if-eqz v4, :cond_de

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_dd

    goto/16 :goto_cd

    :cond_dd
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isApplicationInstalled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_de
    :goto_cd
    return-object v13

    :pswitch_d7
    if-eqz v4, :cond_e1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_df

    goto/16 :goto_cf

    :cond_df
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getApplicationUninstallationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :cond_e0
    :goto_ce
    return-object v8

    :cond_e1
    :goto_cf
    return-object v13

    :cond_e2
    :goto_d0
    return-object v13

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_b7
        :pswitch_b4
        :pswitch_0
        :pswitch_b3
        :pswitch_ab
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_97
        :pswitch_88
        :pswitch_78
        :pswitch_5c
        :pswitch_31
        :pswitch_2e
        :pswitch_29
        :pswitch_15
        :pswitch_10
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x741f137a -> :sswitch_c
        -0x5d7bb47d -> :sswitch_b
        -0x511c5d9f -> :sswitch_a
        -0x44588ee5 -> :sswitch_9
        -0x420e1f50 -> :sswitch_8
        -0x23226268 -> :sswitch_7
        -0x208922d -> :sswitch_6
        0x1b40829f -> :sswitch_5
        0x2e222643 -> :sswitch_4
        0x5a7559bf -> :sswitch_3
        0x60eb8b37 -> :sswitch_2
        0x6406da08 -> :sswitch_1
        0x68ddea58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7c20b2e4 -> :sswitch_1f
        -0x75b6adce -> :sswitch_1e
        -0x516c3a61 -> :sswitch_1d
        -0x4b848555 -> :sswitch_1c
        -0x45f6c0db -> :sswitch_1b
        -0x3f23242a -> :sswitch_1a
        -0x36ade6b7 -> :sswitch_19
        -0x308af1de -> :sswitch_18
        -0xb24e11b -> :sswitch_17
        0x1134efad -> :sswitch_16
        0x1410b963 -> :sswitch_15
        0x14e927da -> :sswitch_14
        0x174ab65e -> :sswitch_13
        0x42bd705d -> :sswitch_12
        0x617af081 -> :sswitch_11
        0x6b27fd59 -> :sswitch_10
        0x6dfeff94 -> :sswitch_f
        0x6e342165 -> :sswitch_e
        0x7be8d885 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7d00b11f -> :sswitch_49
        -0x7cda2990 -> :sswitch_48
        -0x7bf265f6 -> :sswitch_47
        -0x7bc370bc -> :sswitch_46
        -0x757aa1fb -> :sswitch_45
        -0x6ff99d8b -> :sswitch_44
        -0x6f61ea52 -> :sswitch_43
        -0x6f1f927d -> :sswitch_42
        -0x6cd5112c -> :sswitch_41
        -0x6c8256b9 -> :sswitch_40
        -0x68231777 -> :sswitch_3f
        -0x5f479d3d -> :sswitch_3e
        -0x5d96bdfd -> :sswitch_3d
        -0x49039c7d -> :sswitch_3c
        -0x3eeccaaa -> :sswitch_3b
        -0x3b6d6c7b -> :sswitch_3a
        -0x3169f913 -> :sswitch_39
        -0x24629eae -> :sswitch_38
        -0x105b68f3 -> :sswitch_37
        -0xb98097b -> :sswitch_36
        -0x63922de -> :sswitch_35
        -0x4a6fada -> :sswitch_34
        -0x2cd0269 -> :sswitch_33
        -0x2246832 -> :sswitch_32
        -0x117c459 -> :sswitch_31
        0x4fd98e1 -> :sswitch_30
        0x85fa496 -> :sswitch_2f
        0x1086aa03 -> :sswitch_2e
        0x12bb4d48 -> :sswitch_2d
        0x18e41b33 -> :sswitch_2c
        0x1d261c9d -> :sswitch_2b
        0x240ce64e -> :sswitch_2a
        0x32c1d30f -> :sswitch_29
        0x438d32f5 -> :sswitch_28
        0x4875c45d -> :sswitch_27
        0x4a948f99 -> :sswitch_26
        0x4abdeb96 -> :sswitch_25
        0x64defd38 -> :sswitch_24
        0x67050a1d -> :sswitch_23
        0x6c8af02b -> :sswitch_22
        0x6db77171 -> :sswitch_21
        0x6ec40bb4 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x75228db3 -> :sswitch_64
        -0x5e8b707a -> :sswitch_63
        -0x535b24ed -> :sswitch_62
        -0x5344faa1 -> :sswitch_61
        -0x49b19ab4 -> :sswitch_60
        -0x477f69dc -> :sswitch_5f
        -0x47062780 -> :sswitch_5e
        -0x2d0232dc -> :sswitch_5d
        -0x1b1e2f47 -> :sswitch_5c
        -0x6441366 -> :sswitch_5b
        -0x2067e91 -> :sswitch_5a
        0x85fa496 -> :sswitch_59
        0x10dc886c -> :sswitch_58
        0x27deb5dc -> :sswitch_57
        0x376703d8 -> :sswitch_56
        0x3e24f8e6 -> :sswitch_55
        0x428f670d -> :sswitch_54
        0x432078d3 -> :sswitch_53
        0x433f1786 -> :sswitch_52
        0x4f9505ac -> :sswitch_51
        0x5afa1a68 -> :sswitch_50
        0x5b05ced2 -> :sswitch_4f
        0x6238abf9 -> :sswitch_4e
        0x694839c4 -> :sswitch_4d
        0x6ad3e979 -> :sswitch_4c
        0x6c630712 -> :sswitch_4b
        0x75760f09 -> :sswitch_4a
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x678cfb16 -> :sswitch_73
        -0x5d1cb00b -> :sswitch_72
        -0x58dab65f -> :sswitch_71
        -0x55d0d0ee -> :sswitch_70
        -0x495e7741 -> :sswitch_6f
        -0x1abb5fa -> :sswitch_6e
        0xf077a09 -> :sswitch_6d
        0x1fa36ac0 -> :sswitch_6c
        0x2f421cc3 -> :sswitch_6b
        0x32574534 -> :sswitch_6a
        0x34565e5f -> :sswitch_69
        0x38ab60cf -> :sswitch_68
        0x3ab3e61a -> :sswitch_67
        0x4ed22f86 -> :sswitch_66
        0x6c0df1e8 -> :sswitch_65
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x7f6b9b80 -> :sswitch_81
        -0x7a29af54 -> :sswitch_80
        -0x7672ed17 -> :sswitch_7f
        -0x6a25634f -> :sswitch_7e
        -0x437f6e25 -> :sswitch_7d
        -0x1e01c219 -> :sswitch_7c
        -0x14b468b1 -> :sswitch_7b
        0xb8321a0 -> :sswitch_7a
        0x26b3fb45 -> :sswitch_79
        0x2a7ba768 -> :sswitch_78
        0x37929121 -> :sswitch_77
        0x6e37395a -> :sswitch_76
        0x77ba6b2b -> :sswitch_75
        0x7ec2cd45 -> :sswitch_74
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x76e9095f -> :sswitch_8c
        -0x755ab0b2 -> :sswitch_8b
        -0x69b477e0 -> :sswitch_8a
        -0x5fd37362 -> :sswitch_89
        -0x3d5118be -> :sswitch_88
        -0x4e0d4c0 -> :sswitch_87
        0x1d6710b8 -> :sswitch_86
        0x2fe3c227 -> :sswitch_85
        0x3854fcc5 -> :sswitch_84
        0x47a72ec2 -> :sswitch_83
        0x7ac2a216 -> :sswitch_82
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x793fada2 -> :sswitch_93
        -0x5c3258ae -> :sswitch_92
        -0x3c3a3ab9 -> :sswitch_91
        -0x394ec066 -> :sswitch_90
        0x1733e8eb -> :sswitch_8f
        0x4e985da6 -> :sswitch_8e
        0x4fb7d6e9 -> :sswitch_8d
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_b5
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        -0x777467f8 -> :sswitch_ae
        -0x75f653b4 -> :sswitch_ad
        -0x526f4ac4 -> :sswitch_ac
        -0x4de6cfb2 -> :sswitch_ab
        -0x4378abac -> :sswitch_aa
        -0x42f2906e -> :sswitch_a9
        -0x308e1a98 -> :sswitch_a8
        -0x29404601 -> :sswitch_a7
        -0x2360eeb0 -> :sswitch_a6
        -0xf8e19f3 -> :sswitch_a5
        0x14014325 -> :sswitch_a4
        0x16233ecf -> :sswitch_a3
        0x1a458c22 -> :sswitch_a2
        0x1e373fed -> :sswitch_a1
        0x21074337 -> :sswitch_a0
        0x22e592aa -> :sswitch_9f
        0x2383ddea -> :sswitch_9e
        0x2952fe03 -> :sswitch_9d
        0x2d2b575b -> :sswitch_9c
        0x2dd7b5a9 -> :sswitch_9b
        0x38dd3e65 -> :sswitch_9a
        0x3c119522 -> :sswitch_99
        0x3c3b0102 -> :sswitch_98
        0x3d4c4243 -> :sswitch_97
        0x3d73f371 -> :sswitch_96
        0x49cef874 -> :sswitch_95
        0x767a17ac -> :sswitch_94
    .end sparse-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
