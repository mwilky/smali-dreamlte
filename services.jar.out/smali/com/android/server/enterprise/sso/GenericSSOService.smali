.class public Lcom/android/server/enterprise/sso/GenericSSOService;
.super Lcom/samsung/android/knox/sso/common/IGenericSSO$Stub;
.source "GenericSSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;,
        Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;,
        Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;,
        Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;,
        Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;,
        Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;,
        Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final COMMON_VALUE:Ljava/lang/String; = "value"

.field private static final CONFIGURESSO:I = 0x5

.field private static final DATA_KEY_LENGTH:I = 0x10

.field private static final DELETE_KEYS:I = 0x6

.field private static final ENCODING_UTF8:Ljava/lang/String; = "UTF_8"

.field private static final GENERIC_SSO_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SSO"

.field private static final GENERIC_SSO_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SSO"

.field private static final KEYSPEC_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEYSTORE_PASSWORD:Ljava/lang/String; = "password_for_secret_key"

.field private static final KEYWORD_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEYWORD_CUSTOMERBRAND:Ljava/lang/String; = "customerbrand"

.field private static final KEYWORD_DEVICE_CERTIFICATE:Ljava/lang/String; = "devicecertificate"

.field private static final KEYWORD_SSOPROVIDER:Ljava/lang/String; = "ssoprovider"

.field private static final KEYWORD_TOKEN_APPPKGNAME:Ljava/lang/String; = "packagename"

.field private static final KEYWORD_TOKEN_CACHE:Ljava/lang/String; = "apptoken"

.field private static final KEYWORD_USER_CERTIFICATE:Ljava/lang/String; = "usercertificate"

.field private static final KEYWORD_VENDORCONFIG:Ljava/lang/String; = "vendorconfigs"

.field private static final KEYWORD_WHITELISTPACKAGE:Ljava/lang/String; = "whitelistpackage"

.field private static final KEY_STORE_CERT_ALIAS:Ljava/lang/String; = "KnoxSSOKey"

.field private static final KNOXSSO_CONF_DATA_FILENAME:Ljava/lang/String; = "ssoconfig.xml"

.field private static final KNOXSSO_DATASYSTEM_DIR:Ljava/lang/String; = "/data/system/"

.field private static final KNOXSSO_SECRETKEY_FILE:Ljava/lang/String; = "KnoxSSO_SCKF"

.field private static final KNOXSSO_TMP_CONF_DATA_FILENAME:Ljava/lang/String; = "tmpssoconfig.xml"

.field private static final KNOXSSO_TOKEN_FILENAME:Ljava/lang/String; = "ssotoken.xml"

.field private static final KNOXSSO_USERX_SSOCONF_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final NTP_CONNECTION_TIMEOUT:J = 0x7d0L

.field private static final PKGCERT:I = 0x1

.field private static final PKGNAME:I = 0x0

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "GenericSSOService"

.field private static final TIMA_KEYSTORE:Ljava/lang/String; = "TIMAKeyStore"

.field private static final TOKEN:I = 0x2

.field private static final UNREGISTER:I = 0x1

.field private static final USERINFO:I = 0x3

.field private static final WRAP_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

.field private static final mCacheLock:Ljava/lang/Object;

.field private static mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

.field private static mKeyPair:Ljava/security/KeyPair;

.field private static mKeystore:Ljava/security/KeyStore;

.field private static mSSOInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static mSecretKey:Ljava/security/Key;

.field private static final mSecretKeyLock:Ljava/lang/Object;

.field private static requestConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

.field private static tokenConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

.field private WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

.field private initElapsedTime:J

.field private initUTCTime:J

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKeyLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/sso/common/IGenericSSO$Stub;-><init>()V

    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    iput-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    const-string/jumbo v0, "genericsso_whitelist_all_apps"

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

    const-string/jumbo v0, "genericsso_unenroll_ad_authenticator"

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initTokenConfigDoc(I)V

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In GenericSSOService: registerReceiverForKeyClear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->registerReceiverForKeyClear()V

    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    iget-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    const-string v0, "GenericSSOService"

    const-string v1, "In GenericSSOService: Generic SSO Service start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private _addWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sso/config/WhiteListPackage;",
            ">;I)I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const/4 v0, -0x3

    if-nez v2, :cond_1

    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "GenericSSOService"

    const-string v5, "In _addWhiteListPackages: cxtInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v1, v3, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v5

    if-nez v5, :cond_3

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GenericSSOService"

    const-string v5, "In _addWhiteListPackages: MDM uid is not matched"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v0, -0xa

    return v0

    :cond_3
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "GenericSSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In _addWhiteListPackage: UserId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez p2, :cond_6

    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "GenericSSOService"

    const-string v7, "In addWhiteListPackage: Invalid Parameters."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :cond_6
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "GenericSSOService"

    const-string v6, "In _addWhiteListPackage: No SSO Vendors have been enrolled."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, -0x6

    return v0

    :cond_8
    :try_start_0
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/sso/config/WhiteListPackage;

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v11

    move-object v8, v11

    invoke-virtual {v10}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v11, :cond_a

    :try_start_1
    sget-boolean v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_9

    const-string v9, "GenericSSOService"

    const-string v11, "In _addWhiteListPackage: Invalid Parameters. Package Name or Certificate is null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    return v0

    :catch_0
    move-exception v0

    move/from16 v18, v4

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move/from16 v18, v4

    goto/16 :goto_6

    :cond_a
    :try_start_2
    invoke-virtual {v10}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getConfigMap()Ljava/util/Map;

    move-result-object v11

    const-string v12, "clientpackagename"

    invoke-virtual {v10}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v8, v12, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v12, :cond_c

    :try_start_3
    sget-boolean v13, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v13, :cond_b

    const-string v13, "GenericSSOService"

    const-string v14, "In _addWhiteListPackage: the given whitelistpkg has already been registered"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_b
    move/from16 v18, v4

    goto/16 :goto_4

    :cond_c
    :try_start_4
    sget-boolean v13, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v13, :cond_d

    :try_start_5
    const-string v13, "GenericSSOService"

    const-string v14, "In _addWhiteListPackage: the package hasn\'t been whitelisted"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_d
    :try_start_6
    iget-object v13, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v14, "whitelistpackage"

    invoke-interface {v13, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    const-string v15, "clientpackagename"

    invoke-virtual {v10}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v15, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-nez v0, :cond_e

    :try_start_7
    const-string v0, "clientpackagesignature"

    invoke-virtual {v10}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getSignature()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v0, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :cond_e
    :try_start_8
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    if-eqz v0, :cond_f

    :try_start_9
    const-string v0, "GenericSSOService"

    const-string v15, "In _addWhiteListPackage: the package signature hasn\'t been specified"

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :cond_f
    :goto_1
    if-eqz v11, :cond_12

    :try_start_a
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v2, "value"

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move/from16 v18, v4

    :try_start_b
    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    const-string v0, "In _addWhiteListPackage:  <"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> parameter for - packageName "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is added"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_10
    move/from16 v18, v4

    :cond_11
    :goto_3
    move-object/from16 v0, v17

    move/from16 v4, v18

    move-object/from16 v2, p1

    goto/16 :goto_2

    :cond_12
    move/from16 v18, v4

    invoke-interface {v7, v14}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    nop

    :goto_4
    move/from16 v4, v18

    const/4 v0, -0x3

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_13
    move/from16 v18, v4

    invoke-direct {v1, v3, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    const-string v0, "GenericSSOService"

    const-string v2, "In _addWhiteListPackages: removing whitelistAll flag"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {v1, v0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v2

    const-string v4, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In _addWhiteListPackages: return from remove whitelisting all apps = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    return v0

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move/from16 v18, v4

    :goto_5
    const-string v2, "GenericSSOService"

    const-string v4, "In _addWhiteListPackage: Exception."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_5
    move-exception v0

    move/from16 v18, v4

    :goto_6
    const-string v2, "GenericSSOService"

    const-string v4, "In _addWhiteListPackage: NullPointerException."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_7
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_14

    const-string v0, "GenericSSOService"

    const-string v2, "In _addWhiteListPackage: Returning Fail."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method private _configureSSOByFile(Lcom/samsung/android/knox/ContextInfo;[BI)I
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    iget v5, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v6, 0x0

    invoke-direct {v1, v3, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In _configureSSOByFile: MDM uid is not matched = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, -0xa

    return v0

    :cond_1
    if-eqz v2, :cond_16

    array-length v0, v2

    if-nez v0, :cond_2

    move/from16 v22, v5

    goto/16 :goto_1d

    :cond_2
    :try_start_0
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    move-object v8, v0

    invoke-static {v8}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v0

    const/4 v0, 0x0

    if-eqz v9, :cond_3

    nop

    :try_start_1
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "servicepackagename"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move/from16 v22, v5

    goto/16 :goto_1b

    :catch_0
    move-exception v0

    move/from16 v22, v5

    goto/16 :goto_12

    :catch_1
    move-exception v0

    move/from16 v22, v5

    goto/16 :goto_15

    :catch_2
    move-exception v0

    move/from16 v22, v5

    goto/16 :goto_18

    :cond_3
    move-object v10, v0

    :goto_0
    :try_start_2
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTempConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    const/4 v14, 0x0

    invoke-direct {v13, v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v0

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    move-object v13, v0

    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    move-object v15, v0

    invoke-virtual {v15, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    move-object/from16 v16, v0

    move-object/from16 v14, v16

    invoke-interface {v14}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    new-instance v0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    invoke-static {v7}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v19, v0

    const-string/jumbo v0, "mdmuid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v19

    invoke-interface {v4, v0, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "servicepackagename"

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    const-string/jumbo v0, "servicepackagesignature"

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    invoke-static {v7}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1200(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "GenericSSOService"

    move-object/from16 v21, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v22, v5

    :try_start_3
    const-string v5, "In _configureSSOByFile: tmp sso config doc is updated in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object/from16 v21, v4

    move/from16 v22, v5

    :goto_1
    iget-object v0, v7, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {v1, v0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In _configureSSOByFile: updated sso config doc is saved at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object/from16 v23, v0

    move-object/from16 v24, v7

    move-object/from16 v7, v23

    if-eqz v7, :cond_9

    invoke-virtual {v7, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "GenericSSOService"

    move-object/from16 v25, v7

    const-string v7, "In _configureSSOByFile: Authenticator not installed"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move-object/from16 v25, v7

    :goto_2
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v7, -0xc

    nop

    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v16, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :goto_3
    nop

    :goto_4
    return v7

    :cond_7
    move-object/from16 v25, v7

    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v26, v8

    move-object/from16 v8, v20

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "GenericSSOService"

    move-object/from16 v27, v7

    const-string v7, "In _configureSSOByFile: Authenticator signature is not matched"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :cond_8
    move-object/from16 v27, v7

    :goto_5
    const/16 v7, -0xd

    nop

    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v16, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :goto_6
    nop

    :goto_7
    return v7

    :cond_9
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v8, v20

    :cond_a
    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {v1, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v28, v4

    const-string v4, "In _configureSSOByFile: there\'s already one sso vendor enrolled for userId "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", please unenroll the existing one first"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_b
    move-wide/from16 v28, v4

    :goto_8
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v4, -0x9

    nop

    :try_start_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v5, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :goto_9
    nop

    :goto_a
    return v4

    :cond_c
    move-wide/from16 v28, v4

    :try_start_9
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_d
    invoke-virtual {v12, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    move v7, v0

    if-nez v7, :cond_f

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "GenericSSOService"

    move-object/from16 v30, v4

    const-string v4, "In _configureSSOByFile: tempConfigFile failed to be saved to ssoconfig.xml"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_b

    :cond_e
    move-object/from16 v30, v4

    :goto_b
    nop

    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v4, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :goto_c
    nop

    :goto_d
    const/4 v4, -0x1

    return v4

    :cond_f
    move-object/from16 v30, v4

    :try_start_b
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    move/from16 v16, v0

    if-eqz v16, :cond_11

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "GenericSSOService"

    const-string v1, "In configureSSOByFile: failed because of pushAuthenticatorConfig()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_10
    const/16 v1, -0x10

    nop

    :try_start_c
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    move-object/from16 v17, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :goto_e
    nop

    :goto_f
    return v1

    :cond_11
    nop

    :try_start_d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :goto_10
    nop

    :goto_11
    const/4 v1, 0x0

    return v1

    :catch_9
    move-exception v0

    goto :goto_12

    :catch_a
    move-exception v0

    goto :goto_15

    :catch_b
    move-exception v0

    goto :goto_18

    :catchall_1
    move-exception v0

    move/from16 v22, v5

    move-object v1, v0

    goto :goto_1b

    :catch_c
    move-exception v0

    move/from16 v22, v5

    :goto_12
    move-object v1, v0

    :try_start_e
    const-string v0, "GenericSSOService"

    const-string v2, "In configureSSOByFile: Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    nop

    if-eqz v6, :cond_12

    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    :cond_12
    :goto_13
    nop

    :goto_14
    const/4 v2, -0x1

    return v2

    :catch_e
    move-exception v0

    move/from16 v22, v5

    :goto_15
    move-object v1, v0

    :try_start_10
    const-string v0, "GenericSSOService"

    const-string v2, "In configureSSOByFile: IO exception in configureSSOByFile"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    nop

    if-eqz v6, :cond_13

    :try_start_11
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    goto :goto_16

    :catch_f
    move-exception v0

    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    :cond_13
    :goto_16
    nop

    :goto_17
    const/4 v2, -0x1

    return v2

    :catch_10
    move-exception v0

    move/from16 v22, v5

    :goto_18
    move-object v1, v0

    :try_start_12
    const-string v0, "GenericSSOService"

    const-string v2, "In _configureSSOByFile: File not found exception in configureSSOByFile"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    const/4 v2, -0x5

    if-eqz v6, :cond_14

    :try_start_13
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    goto :goto_19

    :catch_11
    move-exception v0

    move-object v4, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    :cond_14
    :goto_19
    nop

    :goto_1a
    return v2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_1b
    if-eqz v6, :cond_15

    :try_start_14
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_12

    goto :goto_1c

    :catch_12
    move-exception v0

    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_15
    :goto_1c
    throw v1

    :cond_16
    move/from16 v22, v5

    :goto_1d
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "GenericSSOService"

    const-string v1, "In _configureSSOByFile: config is null or is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v0, -0x3

    return v0
.end method

.method private _enrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p1

    iget v7, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In _enrollSSOVendor mdmUid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x0

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In _enrollSSOVendor userid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {v1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GenericSSOService"

    const-string v12, "In _enrollSSOVendor: there\'s already one sso vendor enrolled"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v0, -0x9

    return v0

    :cond_3
    invoke-direct {v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "GenericSSOService"

    const-string v12, "In _enrollSSOVendor: authenticator is null or empty"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, -0x3

    return v0

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_7

    sget-boolean v14, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_6

    const-string v14, "GenericSSOService"

    const-string v15, "In _enrollSSOVendor: Authenticator not installed"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v14, -0xc

    return v14

    :cond_7
    invoke-direct {v1, v5, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    sget-boolean v15, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_8

    const-string v15, "GenericSSOService"

    move-object/from16 v16, v0

    const-string v0, "In _enrollSSOVendor: Authenticator signature is not matched"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    move-object/from16 v16, v0

    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xd

    return v0

    :cond_9
    move-object/from16 v16, v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_0
    iget-object v0, v9, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    move-object v11, v13

    if-eqz v10, :cond_e

    if-eqz v11, :cond_e

    :try_start_1
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-direct {v1, v5, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v14

    if-nez v14, :cond_b

    sget-boolean v13, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v13, :cond_a

    const-string v13, "GenericSSOService"

    const-string v14, "In _enrollSSOVendor: MDM uid is not matched"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :cond_a
    const/16 v13, -0xa

    return v13

    :cond_b
    const/4 v8, 0x1

    :try_start_2
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v15, v13, :cond_d

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/w3c/dom/DOMException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v17, v8

    :try_start_3
    const-string/jumbo v8, "whitelistpackage"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-interface {v10, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/w3c/dom/DOMException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_c
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v17

    move-object/from16 v6, p1

    goto :goto_1

    :catch_0
    move-exception v0

    move/from16 v19, v7

    move/from16 v8, v17

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move/from16 v19, v7

    move/from16 v8, v17

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move/from16 v19, v7

    move/from16 v8, v17

    goto/16 :goto_b

    :cond_d
    move/from16 v17, v8

    goto :goto_3

    :catch_3
    move-exception v0

    move/from16 v17, v8

    move/from16 v19, v7

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move/from16 v17, v8

    move/from16 v19, v7

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move/from16 v17, v8

    move/from16 v19, v7

    goto/16 :goto_b

    :catch_6
    move-exception v0

    move/from16 v19, v7

    goto/16 :goto_9

    :catch_7
    move-exception v0

    move/from16 v19, v7

    goto/16 :goto_a

    :catch_8
    move-exception v0

    move/from16 v19, v7

    goto/16 :goto_b

    :cond_e
    :try_start_4
    const-string/jumbo v6, "ssoprovider"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    move-object v12, v6

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Lorg/w3c/dom/DOMException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    if-nez v6, :cond_f

    :try_start_5
    const-string/jumbo v6, "servicepackagesignature"

    invoke-interface {v12, v6, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lorg/w3c/dom/DOMException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_2

    :cond_f
    :try_start_6
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Lorg/w3c/dom/DOMException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    if-eqz v6, :cond_10

    :try_start_7
    const-string v6, "GenericSSOService"

    const-string v13, "In _enrollSSOVendor: Authenticator signature is not specified"

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/w3c/dom/DOMException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_10
    :goto_2
    :try_start_8
    const-string/jumbo v6, "servicepackagename"

    invoke-interface {v12, v6, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "mdmuid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v6, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-direct {v1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, v9, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v13, "vendorconfigs"

    invoke-interface {v6, v13}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_13

    const/4 v15, 0x0

    invoke-direct {v1, v6, v14}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Lorg/w3c/dom/DOMException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    move-object/from16 v15, v16

    if-nez v16, :cond_11

    move-object/from16 v18, v0

    :try_start_9
    iget-object v0, v9, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    move-object v15, v0

    invoke-interface {v6, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lorg/w3c/dom/DOMException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    :cond_11
    move-object/from16 v18, v0

    :goto_5
    :try_start_a
    const-string/jumbo v0, "value"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v0, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_e
    .catch Lorg/w3c/dom/DOMException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    move/from16 v19, v7

    :try_start_b
    const-string v7, "In _enrollSSOVendor:  <"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "> parameter for - packageName  is added"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_12
    move/from16 v19, v7

    goto :goto_6

    :cond_13
    move-object/from16 v18, v0

    move/from16 v19, v7

    :goto_6
    move-object/from16 v0, v18

    move/from16 v7, v19

    move-object/from16 v3, p3

    goto :goto_4

    :cond_14
    move-object/from16 v18, v0

    move/from16 v19, v7

    if-nez v8, :cond_15

    invoke-interface {v12, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_7

    :cond_15
    invoke-interface {v10, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_7

    :cond_16
    move-object/from16 v18, v0

    move/from16 v19, v7

    :goto_7
    if-nez v8, :cond_17

    iget-object v0, v9, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, v12}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_8

    :catch_9
    move-exception v0

    goto :goto_9

    :catch_a
    move-exception v0

    goto :goto_a

    :catch_b
    move-exception v0

    goto :goto_b

    :cond_17
    :goto_8
    iget-object v0, v9, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    invoke-direct {v1, v5, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p6, :cond_19

    invoke-direct {v1, v5, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v6

    if-eqz v6, :cond_19

    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_18

    const-string v7, "GenericSSOService"

    const-string v13, "In _enrollSSOVendor: failed because of pushAuthenticatorConfig()"

    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v7, -0x10

    return v7

    :cond_19
    invoke-direct {v1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_b
    .catch Lorg/w3c/dom/DOMException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    const/4 v6, 0x0

    return v6

    :catch_c
    move-exception v0

    move/from16 v19, v7

    :goto_9
    const-string v6, "GenericSSOService"

    const-string v7, "In _enrollSSOVendor: Exception"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :catch_d
    move-exception v0

    move/from16 v19, v7

    :goto_a
    const-string v6, "GenericSSOService"

    const-string v7, "In _enrollSSOVendor: DOMException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :catch_e
    move-exception v0

    move/from16 v19, v7

    :goto_b
    const-string v6, "GenericSSOService"

    const-string v7, "In _enrollSSOVendor: NullPointerException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    nop

    :goto_d
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromConfigData(ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;[BI)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->configureSSOByFile2(Lcom/samsung/android/knox/ContextInfo;[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Ljava/security/KeyPair;)Ljava/security/KeyPair;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/sso/GenericSSOService;->enrollSSOVendor2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/sso/GenericSSOService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/server/enterprise/sso/GenericSSOService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    return-wide p1
.end method

.method static synthetic access$2200()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/sso/GenericSSOService;I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/sso/GenericSSOService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    return-void
.end method

.method static synthetic access$700()Ljava/security/KeyStore;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$702(Ljava/security/KeyStore;)Ljava/security/KeyStore;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    return-object p0
.end method

.method static synthetic access$802(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method static synthetic access$902(Ljava/security/Key;)Ljava/security/Key;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    return-object p0
.end method

.method private addAppTokenToSecureStorageForUser(ILjava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 8

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    if-nez v1, :cond_1

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In addAppTokenToSecureStorageForUser: the token for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v3, "apptoken"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    move-object v1, v2

    const-string/jumbo v2, "packagename"

    invoke-interface {v1, v2, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    const-string/jumbo v2, "protocoltype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getProtocolType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0, v0, v1, v5, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    return v4

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In addAppTokenToSecureStorageForUser: error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In addAppTokenToSecureStorageForUser: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method private addTokenToGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In addTokenToGenericSSO: appPkgName is null or empty string"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, -0x1

    return v3

    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: appPkgName is authenticator packagename, we add share token"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addUserAndDeviceCertificatesForUser(ILcom/samsung/android/knox/sso/common/TokenInfo;)I

    move-result v3

    return v3

    :cond_4
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: appPkgName is not application packagename, we add app token"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addAppTokenToSecureStorageForUser(ILjava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I

    move-result v3

    return v3
.end method

.method private addTokenToSecureStorage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 2

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addTokenToSecureStorageForUser(ILjava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I

    move-result v1

    return v1
.end method

.method private addTokenToSecureStorageForUser(ILjava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 10

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1500(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    if-nez v1, :cond_2

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GenericSSOService"

    const-string v3, "In addTokenToSecureStorageForUser: the usercert doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "usercertificate"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    move-object v1, v2

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1600(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    if-nez v2, :cond_4

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToSecureStorageForUser: the deviceCert doesn\'t exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v4, "devicecertificate"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    iget-object v3, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    if-nez v3, :cond_6

    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In addTokenToSecureStorageForUser: the token for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v5, "apptoken"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    move-object v3, v4

    const-string/jumbo v4, "packagename"

    invoke-interface {v3, v4, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    const-string/jumbo v4, "protocoltype"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getProtocolType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    const-string v9, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_2

    :cond_7
    const-string v9, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_1

    :cond_8
    invoke-direct {p0, v0, v3, v7, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    :goto_1
    invoke-direct {p0, v0, v2, v7, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    :goto_2
    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    goto :goto_0

    :cond_c
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    return v6

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In addTokenToSecureStorageForUser: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In addTokenToSecureStorageForUser: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_4
    const/4 v0, -0x1

    return v0

    :cond_d
    :goto_5
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "GenericSSOService"

    const-string v1, "In addTokenToSecureStorageForUser: token to save is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v0, -0x3

    return v0
.end method

.method private addUserAndDeviceCertificatesForUser(ILcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 9

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1500(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    if-nez v1, :cond_1

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    const-string v3, "In addUserAndDeviceCertificates: the usercert doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "usercertificate"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    move-object v1, v2

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1600(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    if-nez v2, :cond_3

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GenericSSOService"

    const-string v4, "In addUserAndDeviceCertificates: the deviceCert doesn\'t exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v4, "devicecertificate"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    iget-object v3, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    const-string v8, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_5
    invoke-direct {p0, v0, v2, v6, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-direct {p0, v0, v1, v6, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    return v5

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In addUserAndDeviceCertificates: error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In addUserAndDeviceCertificates: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_3
    const/4 v0, -0x1

    return v0
.end method

.method private bindToService(ILandroid/content/Intent;)V
    .locals 6

    new-instance v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;-><init>(I)V

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v2, "In bindToService: The SSO Service is already bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "GenericSSOService"

    const-string v3, "In bindToService: Binding to the service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, p2, v0, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    :try_start_1
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x4e20

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GenericSSOService"

    const-string v4, "In bindToService: CoutnDownLatch return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "GenericSSOService"

    const-string v4, "In bindToService: InterruptedException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    nop

    monitor-exit v1

    return-void

    :cond_3
    const-string v2, "GenericSSOService"

    const-string v3, "In bindToService: Fail to bind to sso service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z
    .locals 6

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In callingAppIsPermitted: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "clientpackagesignature"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "clientpackagesignature"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In callingAppIsPermitted: Fail to pass the callingApp cert check: (ondevice vs config) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " vs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "clientpackagesignature"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :cond_5
    return v1

    :cond_6
    :goto_1
    const-string v1, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In callingAppIsPermitted: Bundle configData is null or empty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not whitelisted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private cleanUpSSOConnections(I)V
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In cleanUpSSOConnections: SSO service is unbounded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GenericSSOService"

    const-string v1, "In cleanUpSSOConnections: SSO connection is remove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private clearConfigAndTokenForAuthenticator(I)I
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->unregisterByAuthenticator(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v2, "In clearConfigAndTokenForAuthenticator: Fail to clear records remotely"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, -0x10

    return v1

    :cond_1
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "clearConfigAndTokenForAuthenticator: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "clearConfigAndTokenForAuthenticator: SecurityException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private clearUserCertAndAppToken(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 8

    nop

    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "GenericSSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In clearUserCertAndAppToken: Processing packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteAppTokenForUser(ILjava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1500(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    return v4

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In clearUserCertAndAppToken: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In clearUserCertAndAppToken: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method private configureSSOByFile2(Lcom/samsung/android/knox/ContextInfo;[BI)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In configureSSOByFile2: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x3

    return v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->_configureSSOByFile(Lcom/samsung/android/knox/ContextInfo;[BI)I

    move-result v0

    if-nez v0, :cond_2

    const-string v1, "GenericSSOService"

    const-string v2, "In configureSSOByFile2: success in unenrolling, removing whitelist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In configureSSOByFile2: return from remove whitelisting all apps(Remove log later) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In configureSSOByFile2: Failed to configure file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private createSecretKey()Ljavax/crypto/SecretKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    const-string/jumbo v3, "secret key is created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "GenericSSOService"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->loadKey(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    instance-of v3, v3, Ljavax/crypto/SecretKey;

    if-nez v3, :cond_2

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GenericSSOService"

    const-string v3, "In decrypt: the retrieved key in keystore is not SecretKey"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    :cond_2
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In decrypt: Provider is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_6

    array-length v4, v2

    const/16 v5, 0x10

    sub-int/2addr v4, v5

    const/4 v6, 0x2

    sget-object v7, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    check-cast v7, Ljavax/crypto/SecretKey;

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v2, v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    invoke-virtual {v3, v6, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, v2, v0, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF_8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In decrypt: Decrypted output is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In decrypt: the length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v5

    :cond_6
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "GenericSSOService"

    const-string v4, "In decrypt: cipher is null"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In decrypt: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In decrypt: GeneralSecurityException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In decrypt: InvalidAlgorithmParameterException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In decrypt: IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In decrypt: UnrecoverableKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In decrypt: BadPaddingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In decrypt: IllegalBlockSizeException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_7
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: NoSuchPaddingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_8
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In decrypt: InvalidKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_9
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In decrypt: KeyStoreException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_a
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In decrypt: NoSuchAlgorithmException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_0
    nop

    :goto_1
    return-object v1

    :cond_8
    :goto_2
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "GenericSSOService"

    const-string v2, "In decrypt: Key alias or token to encrypt is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v1
.end method

.method private deleteAppTokenForUser(ILjava/lang/String;)I
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In deleteAppTokenForUser: packageName is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x3

    return v0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_2

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In deleteAppTokenForUser: the token for packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In deleteAppTokenForUser: the token for packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In deleteAppTokenForUser: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In deleteAppTokenForUser: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method private deleteUserAndDeviceCertForUser(I)I
    .locals 5

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1500(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GenericSSOService"

    const-string v3, "In deleteUserAndDeviceCertForUser: userCertNode is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GenericSSOService"

    const-string v3, "In deleteUserAndDeviceCertForUser: userCertNode is removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1600(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GenericSSOService"

    const-string v4, "In deleteUserAndDeviceCertForUser: deviceCertNode is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GenericSSOService"

    const-string v4, "In deleteUserAndDeviceCertForUser: deviceCertNode is removed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In deleteUserAndDeviceCertForUser: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In deleteUserAndDeviceCertForUser: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "GenericSSOService"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    const-string v0, "UTF_8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->loadKey(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    instance-of v2, v2, Ljavax/crypto/SecretKey;

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: the retrieved key in keystore is not SecretKey"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    :cond_2
    const/16 v2, 0x10

    new-array v2, v2, [B

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In encrypt: Provider is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v5, :cond_6

    const/4 v6, 0x1

    sget-object v7, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    check-cast v7, Ljavax/crypto/SecretKey;

    invoke-virtual {v5, v6, v7, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    array-length v7, v6

    array-length v8, v2

    add-int/2addr v7, v8

    new-array v7, v7, [B

    array-length v8, v6

    const/4 v9, 0x0

    invoke-static {v6, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v8, v6

    array-length v10, v2

    invoke-static {v2, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v9

    const-string v10, "UTF_8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-boolean v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In encrypt: Encrypted output "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In encrypt: the length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v8

    :catch_0
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: UnrecoverableKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: KeyStoreException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: ProviderException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: BadPaddingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: IllegalBlockSizeException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_7
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: NoSuchPaddingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_8
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: NoSuchAlgorithmException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_9
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: NoSuchProviderException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_a
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: InvalidKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_b
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In encrypt: InvalidAlgorithmParameterException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    nop

    :goto_1
    return-object v1

    :cond_7
    :goto_2
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "GenericSSOService"

    const-string v2, "In encrypt: Key alias or token to encrypt is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v1
.end method

.method private enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.mdm.permission.MDM_SSO"

    const-string v3, "com.samsung.android.knox.permission.KNOX_SSO"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enrollSSOVendor2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 9

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor2: context infor before enforce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_2

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GenericSSOService"

    const-string v1, "In enrollSSOVendor2: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x3

    return v0

    :cond_2
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor2: context infor after enforce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->_enrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I

    move-result v0

    if-nez v0, :cond_4

    const-string v1, "GenericSSOService"

    const-string v2, "In enrollSSOVendor2: success in enrolling, whitelisting false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, v1, p5}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In enrollSSOVendor2: return from whitelisting all apps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In enrollSSOVendor2: Failed to enroll = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_3
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In ExistedNode: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In ExistedNode: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    if-nez p4, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    move-object v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2, p3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    move-object v1, v2

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_1
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the original value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/sso/GenericSSOService;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object p4, v2

    if-nez p4, :cond_5

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "GenericSSOService"

    const-string v3, "In fillChildNodes: encrypted token value is null, failed to fillChildNodes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v2, "value"

    invoke-interface {v1, v2, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_8
    :goto_4
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "GenericSSOService"

    const-string v1, "In fillChildNodes: parameters are not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Node;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getAccessTokenByProtocolType(Lcom/samsung/android/knox/sso/common/TokenInfo;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getProtocolType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v2

    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string v0, "SAML_RESPONSE_ASSERTION"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "OAUTH_RESPONSE_ACCESS_TOKEN"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const-string v0, "SAML_RESPONSE_ASSERTION"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GenericSSOService"

    const-string v2, "In getAccessTokenByProtocolType: token is not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 10

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v2, "In getAppTokenFromSecureStorageForUser: appPkgName is null or empty"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :cond_1
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    if-nez v3, :cond_3

    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In getAppTokenFromSecureStorageForUser: the token for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1

    :cond_3
    const-string/jumbo v4, "protocoltype"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setProtocolType(I)V

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Node;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "value"

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_5

    nop

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-direct {p0, v7, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    goto :goto_0

    :cond_6
    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In getAppTokenFromSecureStorageForUser: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In getAppTokenFromSecureStorageForUser: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    return-object v1
.end method

.method private getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getChildNodes: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getChildNodes: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    return-object v0
.end method

.method private getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getChildNodes: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getChildNodes: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    return-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private getConfigData(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    goto :goto_1

    :cond_3
    return-object v2
.end method

.method private getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const-string v7, "clientpackagename"

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "clientpackagename"

    invoke-virtual {v4, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "clientpackagesignature"

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v7, "clientpackagesignature"

    const-string v9, "clientpackagesignature"

    invoke-direct {p0, v6, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Node;

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    if-eq v11, v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "value"

    invoke-direct {p0, v10, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    goto :goto_0

    :cond_5
    return-object v4

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getConfigDataForPkgName: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getConfigDataForPkgName: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_2
    return-object v0
.end method

.method private getConfigDataForSSOVendor(I)Landroid/os/Bundle;
    .locals 10

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In getConfigDataForSSOVendor: start getConfigDataForSSOVendor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    const-string/jumbo v3, "servicepackagename"

    const-string/jumbo v4, "servicepackagename"

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "servicepackagesignature"

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "servicepackagesignature"

    const-string/jumbo v4, "servicepackagesignature"

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "vendorconfigs"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Node;

    const-string/jumbo v8, "value"

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_2

    nop

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-direct {p0, v7, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getConfigDataForSSOVendor: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method

.method private getDeviceCertificate(I)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 10

    new-instance v0, Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1600(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getExpirationTimeByProtocolType(Lcom/samsung/android/knox/sso/common/TokenInfo;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getProtocolType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v2

    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string v0, "SAML_RESPONSE_EXPIRED_TIME"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "OAUTH_RESPONSE_EXPIRES_IN"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const-string v0, "SAML_RESPONSE_EXPIRED_TIME"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GenericSSOService"

    const-string/jumbo v2, "token is not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GenericSSOService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;-><init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    return-object v0
.end method

.method private getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is initialized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getInstanceOfKeyStore: CertificateException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getInstanceOfKeyStore: NoSuchAlgorithmException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getInstanceOfKeyStore: IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getInstanceOfKeyStore: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    goto :goto_1

    :catch_4
    move-exception v1

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getInstanceOfKeyStore: KeyStore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " initializaiton failed (Android API level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GenericSSOService"

    const-string v3, "In getInstanceOfKeyStore: KeyStoreException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method private declared-synchronized getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v2, "KnoxSSOKey"

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    const-string v3, "In getKeyPairFromAndroidKeyStore: Key entry is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->add(II)V

    const-string v4, "CN=%s, OU=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "KnoxSSOKey"

    aput-object v8, v6, v7

    iget-object v7, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "KnoxSSOKey"

    invoke-virtual {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v6, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v5

    const-string v6, "RSA"

    const-string v7, "AndroidKeyStore"

    invoke-static {v6, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v6}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key entry is generated for cert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "GenericSSOService"

    const-string v3, "In getKeyPairFromAndroidKeyStore: Key entry is available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "GenericSSOService"

    const-string v3, "In getKeyPairFromAndroidKeyStore: Reading Key entry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v2, "KnoxSSOKey"

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    new-instance v2, Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In getPackageCertForPkgname: User id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, p2, v4, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_2

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "GenericSSOService"

    const-string v6, "In getPackageCertForPkgname: pkgInfo is null"

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
    const-string v4, "GenericSSOService"

    const-string v5, "In getPackageCertForPkgname: Exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "GenericSSOService"

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

.method private getPackageInfoForPid(II)Ljava/lang/String;
    .locals 2

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    invoke-static {p1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    nop

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageNameForPid(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageNameForPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPackageNameForPid(I)Ljava/lang/String;
    .locals 7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In getPackageNameForPid:  pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " package name = android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_4

    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    goto :goto_1

    :cond_4
    goto :goto_0

    :cond_5
    :goto_1
    nop

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In getPackageNameForPid:  pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " package name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v0

    :catch_0
    move-exception v4

    const-string v5, "GenericSSOService"

    const-string v6, "In getPackageNameForPid: Exception in getPackageNameForPid"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_1
    move-exception v4

    const-string v5, "GenericSSOService"

    const-string v6, "In getPackageNameForPid: null pointer exception in getPackageNameForPid"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private getRefreshTokenByProtocolType(Lcom/samsung/android/knox/sso/common/TokenInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getProtocolType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    return-object v0

    :cond_1
    const-string v0, "OAUTH_RESPONSE_REFRESH_TOKEN"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "GenericSSOService"

    const-string v2, "In getRefreshTokenByProtocolType: token is not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private getRequestConfigFilePath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ssoconfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In getSSOConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In getSSOService: SSO service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->access$1400(Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".genericssoconnection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In getSSOServiceIntent: action is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In getSSOServiceIntent: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In getSSOServiceIntent: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKeyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In getSecretKeyFromAndroidKeyStore: Key file does not exists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "GenericSSOService"

    const-string v5, "In getSecretKeyFromAndroidKeyStore: Wrapping SecretKey"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "GenericSSOService"

    const-string v6, "In getSecretKeyFromAndroidKeyStore: Writing SecretKey"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v2, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->writeKeyData(Ljava/io/File;[B)V

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "GenericSSOService"

    const-string v6, "In getSecretKeyFromAndroidKeyStore: Finished writing SecretKey"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "GenericSSOService"

    const-string v4, "In getSecretKeyFromAndroidKeyStore: Reading SecretKey"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->readKeyData(Ljava/io/File;)[B

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;

    move-result-object v4

    sput-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "GenericSSOService"

    const-string v5, "In getSecretKeyFromAndroidKeyStore: Finished reading SecretKey"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getTempConfigFilePath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tmpssoconfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 1

    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    return-object v0
.end method

.method private getTokenByRefreshToken(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 11

    nop

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const-string/jumbo v2, "servicepackagename"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenByRefreshToken: cannot get SSO Service intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v4, "GenericSSOService"

    const-string v5, "In getTokenByRefreshToken: sso service is not ready to use"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    new-instance v10, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    const-string/jumbo v4, "servicepackagename"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "clientpackagename"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    move-object v4, v10

    nop

    invoke-interface {v3, v4}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireTokenByRefreshToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v6, "GenericSSOService"

    const-string v7, "In getTokenByRefreshToken: Fail to acquire valid token from sso service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_3
    return-object v5

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getTokenByRefreshToken: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getTokenByRefreshToken: RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getTokenByRefreshToken: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method private getTokenConfigFilePath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ssotoken.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initTokenConfigDoc(I)V

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getTokenFromConfigData(ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: cannot get SSO Service intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v2

    if-nez v2, :cond_3

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromConfigData: sso service is not ready to use"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :cond_3
    const-string v3, "clientpackagename"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    const-string/jumbo v4, "servicepackagename"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v4

    if-nez v4, :cond_5

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "GenericSSOService"

    const-string v7, "In getTokenFromConfigData: Fail to acquire valid token from sso service"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :cond_5
    return-object v4

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method private getTokenFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In getTokenFromGenericSSO: appPkgName is null or empty string"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    return-object v3

    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: appPkgName is authenticator packagename, we return share token back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserAndDeviceCertificatesForUser(I)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v3

    return-object v3

    :cond_4
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: appPkgName is not application packagename, we return app token back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v3

    return-object v3
.end method

.method private getTokenFromLocalCache(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 7

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In getTokenFromLocalCache: get Token from cache for user Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string v1, "clientpackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAccessTokenByProtocolType(Lcom/samsung/android/knox/sso/common/TokenInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getExpirationTimeByProtocolType(Lcom/samsung/android/knox/sso/common/TokenInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->hasTokenExpired(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v2

    :cond_1
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->hasTokenExpired(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "GenericSSOService"

    const-string v6, "In getTokenFromLocalCache: token in cache expired, so getTokenByRefreshToken is called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenByRefreshToken(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_3

    return-object v5

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In getTokenFromLocalCache: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getUserAndDeviceCertificatesForUser(I)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 12

    new-instance v0, Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1500(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v7, v4

    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1600(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    nop

    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v4, v8, :cond_3

    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v5, :cond_2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    return-object v4

    :cond_4
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getUserCertificate(I)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 10

    new-instance v0, Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1500(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getUserId()I
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getUserId: The uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In getWhitelistAppNode: In getWhitelistAppNode: solution node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In getWhitelistAppNode: In getWhitelistAppNode: child node whitelistpackage is searched for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string/jumbo v3, "servicepackagename"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "whitelistpackage"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private hasTokenExpired(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 8

    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->setInitTime()V

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    add-long/2addr v2, v4

    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "In hasTokenExpired: SystemClock.elapsedRealtime()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "In hasTokenExpired: initElapsedTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "In hasTokenExpired: initUTCTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentUTCtime vs expireOn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " vs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    if-eqz v1, :cond_7

    const-string v0, "GenericSSOService"

    const-string v6, "In hasTokenExpired: the token obtained has expired"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string v0, "GenericSSOService"

    const-string v6, "In hasTokenExpired: the token obtained is still valid"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In hasTokenExpired: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v1
.end method

.method private initKeyStore()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    const-string v0, "TIMAKeyStore"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v0}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timakeystore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "KnoxSSOKey"

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In initKeyStore: Starting doing the migration from AndroidKeyStore to TIMA keystore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;

    move-result-object v3

    sput-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GenericSSOService"

    const-string v4, "In initKeyStore: Saving the secretKey to TIMA 3.0 KeyStore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    const-string v4, "GenericSSOService"

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    const-string/jumbo v6, "password_for_secret_key"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6, v2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GenericSSOService"

    const-string v4, "In initKeyStore: Cleaning up variables from memory, as well as keypair and keyfile from storage."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v2, "KnoxSSOKey"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v0, :cond_5

    const-string v0, "AndroidKeyStore"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    :cond_5
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "GenericSSOService"

    const-string v1, "In initKeyStore: no KeyStore instance is running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In initKeyStore: Keystore Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void
.end method

.method private initRequestConfigDoc(I)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "GenericSSOService"

    const-string v5, "In initRequestConfigDoc: ssoconfig.xml does exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In initRequestConfigDoc: ssoconfig.xml doesn\'t exist for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", an empty config file is created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    const-string v5, "configuration"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Element;->normalize()V

    new-instance v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    nop

    :goto_1
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is loaded for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_4
    :goto_2
    goto :goto_5

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "GenericSSOService"

    const-string v4, "In initRequestConfigDoc: SAXException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_4
    const-string v3, "GenericSSOService"

    const-string v4, "In initRequestConfigDoc: ParserConfigurationException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_6
    const-string v3, "GenericSSOService"

    const-string v4, "In initRequestConfigDoc: IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :goto_3
    nop

    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_5
    :goto_4
    throw v2

    :cond_6
    :goto_5
    return-void
.end method

.method private initTokenConfigDoc(I)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "GenericSSOService"

    const-string v5, "In initTokenConfigDoc: ssotoken.xml does exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In initTokenConfigDoc: ssotoken.xml doesn\'t exist for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", an empty config file is created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    const-string/jumbo v5, "ssotoken"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Element;->normalize()V

    new-instance v6, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    nop

    :goto_1
    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In initTokenConfigDoc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is loaded for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_4
    :goto_2
    goto :goto_5

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "GenericSSOService"

    const-string v4, "In initTokenConfigDoc: SAXException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_4
    const-string v3, "GenericSSOService"

    const-string v4, "In initTokenConfigDoc: ParserConfigurationException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_6
    const-string v3, "GenericSSOService"

    const-string v4, "In initTokenConfigDoc: IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :goto_3
    nop

    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_5
    :goto_4
    throw v2

    :cond_6
    :goto_5
    return-void
.end method

.method private installedServiceIsPermitted(ILandroid/os/Bundle;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "servicepackagesignature"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In installedServiceIsPermitted: service package cert is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "GenericSSOService"

    const-string v6, "In installedServiceIsPermitted: service package cert is matched between configured and installed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3

    :cond_2
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In installedServiceIsPermitted: Fail to pass the servicePkg cert check: (ondevice vs config) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v0

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In installedServiceIsPermitted: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private isCallingMDMMatch(II)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    if-nez v2, :cond_1

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "GenericSSOService"

    const-string v6, "In isCallingMDMMatch: the enrolledVendor is null, return true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v4

    :cond_1
    const-string/jumbo v5, "mdmuid"

    invoke-direct {p0, v2, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    if-nez v3, :cond_3

    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "GenericSSOService"

    const-string v5, "In isCallingMDMMatch: the mDmUidNode is null, return false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    return v0

    :cond_4
    return v4

    :cond_5
    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "GenericSSOService"

    const-string v6, "In isCallingMDMMatch: the configDoc is null, return true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return v4

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In isCallingMDMMatch: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isNetworkAvailable()Z
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_1

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "GenericSSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network type detected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4
.end method

.method private isNullOrEmpty(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

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

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private loadKey(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In loadKey: SecretKey is already loaded. It\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GenericSSOService"

    const-string v1, "In loadKey: loadkey() failed, because keystore is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timakeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    const-string/jumbo v4, "password_for_secret_key"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v3, v4, v5}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: keystore doesn\'t contain key with alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", so a new one is stored"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    const-string/jumbo v3, "password_for_secret_key"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    :cond_5
    :goto_0
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: secreteKey got from TIMAKeystore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidkeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: secreteKey protected by AndroidKeyStore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private nextSessionId()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x82

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I
    .locals 9

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    const-string v3, "In pushAuthenticatorConfig: cannot get SSO Service intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v4

    if-nez v4, :cond_3

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "GenericSSOService"

    const-string v6, "In pushAuthenticatorConfig: sso service is not ready to use"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    invoke-interface {v4, p3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    move-result v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_5

    if-nez v5, :cond_4

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In pushAuthenticatorConfig: sso vendor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " successfully complete this request"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In pushAuthenticatorConfig: sso vendor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " fails to complete this request with error code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return v5

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In pushAuthenticatorConfig: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In pushAuthenticatorConfig: RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    return v0
.end method

.method private reAuthenInAuthenticator(I)I
    .locals 12

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "servicepackagename"

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "servicepackagename"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string/jumbo v6, "servicepackagesignature"

    invoke-direct {p0, v2, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "servicepackagesignature"

    invoke-direct {p0, v2, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "servicepackagesignature"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "GenericSSOService"

    const-string v7, "In reAuthenInAuthenticator: Fail to pass the service package cert check"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, -0xd

    return v0

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_4

    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "GenericSSOService"

    const-string v8, "In reAuthenInAuthenticator: cannot get SSO Service intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v7

    if-nez v7, :cond_6

    sget-boolean v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "GenericSSOService"

    const-string v9, "In reAuthenInAuthenticator: sso service is not ready to use"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :cond_6
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Node;

    const-string v11, "clientpackagename"

    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    :cond_7
    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->forceAuthenticate(Landroid/os/Bundle;)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v11

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In reAuthenInAuthenticator: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In reAuthenInAuthenticator: RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In reAuthenInAuthenticator: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return v0
.end method

.method private static readKeyData(Ljava/io/File;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In readKeyData: Reading key data from a file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method private registerReceiverForKeyClear()V
    .locals 7

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;

    invoke-direct {v2}, Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;-><init>()V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    const-string/jumbo v4, "indent"

    const-string/jumbo v5, "yes"

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v0, v4

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5}, Ljavax/xml/transform/dom/DOMSource;-><init>()V

    move-object v4, v5

    goto :goto_0

    :cond_0
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v4, v5

    :goto_0
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenConfigForUserId: IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenConfigForUserId: FileNotFoundException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v2

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenConfigForUserId: TransformerException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception v2

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenConfigForUserId: TransformerConfigurationException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    nop

    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private setInitTime()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    new-instance v0, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;-><init>(Lcom/android/server/enterprise/sso/GenericSSOService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v2, "In setInitTime: CountDownLatch return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setInitTime: exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In setInitTime: UTC time when service is up is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In setInitTime: elapsedRealtime() when service is up is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private setWhitelistAllAppsState(ZI)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v2, v3, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method private stopAuthenticatorApplication(Ljava/lang/String;I)V
    .locals 6

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In stopAuthenticatorApplication: packageName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In stopAuthenticatorApplication: could not stop app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private unRegisterInAuthenticator(ILjava/lang/String;Landroid/os/Bundle;)I
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    const-string v3, "In unRegisterInAuthenticator: cannot get SSO Service intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v2

    if-nez v2, :cond_3

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GenericSSOService"

    const-string v4, "In unRegisterInAuthenticator: sso service is not ready to use"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    invoke-interface {v2, p3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->unregister(Landroid/os/Bundle;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In unRegisterInAuthenticator"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In unRegisterInAuthenticator: RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In unRegisterInAuthenticator: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return v0
.end method

.method private unregisterByAuthenticator(I)I
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    const/4 v4, 0x0

    const-string/jumbo v5, "servicepackagename"

    invoke-direct {p0, v3, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "servicepackagename"

    invoke-direct {p0, v3, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    :cond_1
    const/4 v5, 0x0

    const-string/jumbo v6, "servicepackagesignature"

    invoke-direct {p0, v3, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "servicepackagesignature"

    invoke-direct {p0, v3, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    :cond_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "servicepackagename"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "servicepackagesignature"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "GenericSSOService"

    const-string v7, "In unregisterByAuthenticator: Fail to pass the service package cert check"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v0, -0xd

    return v0

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    const-string v9, "clientpackagename"

    invoke-direct {p0, v0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :cond_5
    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    invoke-direct {p0, p1, v4, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->unRegisterInAuthenticator(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v11

    move v1, v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In unregisterByAuthenticator: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In unregisterByAuthenticator: NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    :goto_0
    nop

    :goto_1
    return v1
.end method

.method private unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "AES"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    .locals 4

    invoke-static {p2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1200(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In updateCacheAndFile: updated sso config doc is updated in requestConfigXMLDocs array"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In updateCacheAndFile: updated sso request config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    .locals 4

    invoke-static {p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1300(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In updateCacheAndFile: updated sso token doc is updated in tokenConfigXMLDocs array"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In updateCacheAndFile: updated sso token config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private vendorPermissionCheck(ILjava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    const-string/jumbo v3, "servicepackagename"

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    :cond_0
    const-string/jumbo v5, "servicepackagesignature"

    invoke-direct {p0, v2, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v0

    :cond_1
    const-string/jumbo v5, "servicepackagesignature"

    invoke-direct {p0, v2, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    return v0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In vendorPermissionCheck: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "enterprise_policy_new"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SharedDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_4

    const-string v3, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v0

    :cond_4
    const-string v0, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method private static writeKeyData(Ljava/io/File;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In writeKeyData: Writing key data to a file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method


# virtual methods
.method public _unenrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I
    .locals 6

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p3, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v2, "In unenrollSSOVendor: MDM uid is not matched"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, -0xa

    return v1

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GenericSSOService"

    const-string v2, "In unenrollSSOVendor: authenticatorPkgName is null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, -0x3

    return v1

    :cond_3
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->clearConfigAndTokenForAuthenticator(I)I

    move-result v3

    if-eqz v3, :cond_5

    const-string v4, "GenericSSOService"

    const-string v5, "In unenrollSSOVendor: failed clearConfigAndTokenFor Authenticator"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x10

    return v4

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V

    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->stopAuthenticatorApplication(Ljava/lang/String;I)V

    return v3

    :cond_6
    :goto_0
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In unenrollSSOVendor: this authenticator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not enrolled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    const/4 v3, -0x6

    return v3

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In unenrollSSOVendor: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In unenrollSSOVendor: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    const/4 v1, -0x1

    return v1
.end method

.method protected acquireUserInfo(ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/UserInfo;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "GenericSSOService"

    const-string v3, "In acquireUserInfo: cannot get SSO Service intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In acquireUserInfo: sso service is not ready to use"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance v9, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    const-string/jumbo v3, "servicepackagename"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "clientpackagename"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    move-object v3, v9

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireUserInfo(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/UserInfo;

    move-result-object v4

    if-nez v4, :cond_3

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "GenericSSOService"

    const-string v6, "In acquireUserInfo: Fail to get valid UserInfo from sso service"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :cond_3
    return-object v4

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In acquireUserInfo: Exception in getToken"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In acquireUserInfo: Remote Exception error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In acquireUserInfo: null pointer exception in getToken"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method public addAppTokenToGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addUserAndDeviceCertToGenericSSO(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sso/config/WhiteListPackage;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In addWhiteListPackages: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x3

    return v0

    :cond_1
    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->_addWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public addWhiteListPackages2(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sso/config/WhiteListPackage;",
            ">;I)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In addWhiteListPackages2: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x3

    return v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->_addWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public configureSSOByFile(Lcom/samsung/android/knox/ContextInfo;[B)I
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In configureSSOByFile: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x3

    return v0

    :cond_1
    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->_configureSSOByFile(Lcom/samsung/android/knox/ContextInfo;[BI)I

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "GenericSSOService"

    const-string v3, "In configureSSOByFile: success in unenrolling, removing whitelist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v2

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In configureSSOByFile: return from remove whitelisting all apps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In configureSSOByFile: Failed to configure file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public deleteWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, -0x3

    if-nez p1, :cond_1

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v2, "In deleteWhiteListPackages: cxtInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GenericSSOService"

    const-string v3, "In deleteWhiteListPackages: MDM uid is not matched"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v0, -0xa

    return v0

    :cond_3
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x6

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "GenericSSOService"

    const-string v4, "In deleteWhiteListPackages: No SSO Vendors have been enrolled."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3

    :cond_6
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-nez v4, :cond_8

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "GenericSSOService"

    const-string v6, "In deleteWhiteListPackages: this sso vendor is not registered"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v3

    :cond_8
    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v3, v7

    const-string v7, "clientpackagename"

    invoke-direct {p0, v3, v7, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_a

    sget-boolean v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "GenericSSOService"

    const-string v9, "In deleteWhiteListPackages: the package hasn\'t been whitelisted"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    sget-boolean v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_b

    const-string v8, "GenericSSOService"

    const-string v9, "In deleteWhiteListPackages: package name is found in the whitelist of the given sso ssolution service"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-interface {v4, v7}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_c

    const-string v8, "GenericSSOService"

    const-string v9, "In deleteWhiteListPackages: package name is removed from the whitelist of the given sso ssolution service"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    goto :goto_0

    :cond_d
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    const-string v5, "GenericSSOService"

    const-string v6, "In deleteWhiteListPackages: removing whitelistall flag"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-direct {p0, v5, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v6

    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In deleteWhiteListPackages: return from remove whitelisting all apps(Remove log later) = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v0

    const-string v3, "GenericSSOService"

    const-string v4, "In deleteWhiteListPackages: Exception."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "GenericSSOService"

    const-string v4, "In deleteWhiteListPackages: NullPointerException."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    const/4 v0, -0x1

    return v0

    :cond_e
    :goto_2
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_f

    const-string v3, "GenericSSOService"

    const-string v4, "In deleteWhiteListPackages: Invalid Parameters."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v0
.end method

.method public enrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 10

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor context infor before enforce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v2, "In enrollSSOVendor: cxtInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x3

    return v1

    :cond_1
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In enrollSSOVendor: mdmUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->_enrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "GenericSSOService"

    const-string v3, "In enrollSSOVendor: success in enrolling, whitelisting false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v2

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In enrollSSOVendor: return from whitelisting all apps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In enrollSSOVendor: Failed to enroll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public enrollSSOVendorInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    const-string v3, "In enrollSSOVendorInternal: there\'s already one sso vendor enrolled so user configuration is rejected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v2, -0x9

    return v2

    :cond_1
    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->_enrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I

    move-result v2

    if-nez v2, :cond_2

    const-string v3, "GenericSSOService"

    const-string v4, "In enrollSSOVendorInternal: success in enrolling, whitelisting all apps."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-direct {p0, v3, p5}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v3

    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In enrollSSOVendorInternal: return from whitelisting all apps = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need to be system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forceAuthenticate(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In forceAuthenticate: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x3

    return v0

    :cond_1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    nop

    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "GenericSSOService"

    const-string v3, "In forceAuthenticate: MDM uid is not matched"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v2, -0xa

    return v2

    :cond_3
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In forceAuthenticate: UserID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->reAuthenInAuthenticator(I)I

    move-result v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_5

    const-string v5, "GenericSSOService"

    const-string v6, "In forceAuthenticate: Fail to clear authenticator\'s records"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x10

    return v5

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->clearUserCertAndAppToken(Lcom/samsung/android/knox/ContextInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In forceAuthenticate: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    return v1
.end method

.method public getAppTokenFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 6

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v2, "In getAppTokenFromGenericSSO: appPkgName is null or empty string"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :cond_1
    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "GenericSSOService"

    const-string v5, "In getAppTokenFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1

    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v1

    return-object v1
.end method

.method public getAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/AuthenticationConfig;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationConfigForContainer(I)Lcom/samsung/android/knox/container/AuthenticationConfig;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthenticationConfig(I)Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfigDataForSSOVendorInternal(I)Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need to be system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCustomerBrandInfo(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v1, p0

    nop

    const/4 v2, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "GenericSSOService"

    const-string v6, "In getCustomerBrandInfo: authenticator is not permitted to call this API"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v2

    :cond_1
    invoke-direct {v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Node;

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "customerbrand"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-direct {v1, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Node;

    const-string/jumbo v14, "value"

    invoke-direct {v1, v13, v14}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, "value"

    invoke-direct {v1, v13, v14}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v14

    nop

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15, v14}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    return-object v8

    :catch_0
    move-exception v0

    const-string v3, "GenericSSOService"

    const-string v4, "In getCustomerBrandInfo: Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public getEnrolledSSOVendor(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEnrolledSSOVendor(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getToken(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;)V
    .locals 9

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GenericSSOService"

    const-string v1, "In getToken: Checking networking connection - Failed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/16 v0, -0xf

    invoke-interface {p3, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    :cond_0
    return-void

    :cond_1
    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v3, "GenericSSOService"

    const-string v4, "In getToken: the SSO Vendor is not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    const/4 v3, -0x6

    invoke-interface {p3, v3}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "GenericSSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In getToken: cannot find the package name based on the pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4

    const/4 v5, -0x1

    invoke-interface {p3, v5}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In getToken: the callingApp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "is not permitted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_6

    const/4 v6, -0x7

    invoke-interface {p3, v6}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    :cond_6
    return-void

    :cond_7
    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v5, v6

    if-eqz p2, :cond_9

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromLocalCache(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v6

    if-eqz v6, :cond_9

    if-eqz p3, :cond_8

    invoke-interface {p3, v6}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->tokenInfoSuccess(Lcom/samsung/android/knox/sso/common/TokenInfo;)V

    const-string v7, "GenericSSOService"

    const-string v8, "In getToken: Getting a token successfully"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "GenericSSOService"

    const-string v7, "In getToken: Fail to pass the service package cert check"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_a

    const/16 v6, -0xd

    invoke-interface {p3, v6}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    :cond_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iput v0, v6, Landroid/os/Message;->arg1:I

    iput-object p3, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In getToken: Exception in getToken"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In getToken: null pointer exception in getToken"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public getUserAndDeviceCertFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 5

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSSOService"

    const-string v4, "In getUserAndDeviceCertFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    return-object v3

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserAndDeviceCertificatesForUser(I)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v3

    return-object v3
.end method

.method public getUserInfo(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;)V
    .locals 9

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GenericSSOService"

    const-string v1, "In getUserInfo: Checking networking connection - Failed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/16 v0, -0xf

    invoke-interface {p2, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    :cond_0
    return-void

    :cond_1
    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v3, "GenericSSOService"

    const-string v4, "In getUserInfo: the SSO Vendor is not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    const/4 v3, -0x6

    invoke-interface {p2, v3}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In getUserInfo: the callingApp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "is not permitted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    const/4 v6, -0x7

    invoke-interface {p2, v6}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v5, v6

    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "GenericSSOService"

    const-string v7, "In getUserInfo: Fail to pass the service package cert check"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    const/16 v6, -0xd

    invoke-interface {p2, v6}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    :cond_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iput v0, v6, Landroid/os/Message;->arg1:I

    iput-object p2, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v7, "GenericSSOService"

    const-string v8, "In getUserInfo: Getting user info successfully"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In getUserInfo: exception in getUserInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 10
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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v3, "In getWhiteListPackages: No SSO Vendors have been enrolled."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v2

    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "whitelistpackage"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    nop

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "clientpackagename"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-object v5

    :catch_0
    move-exception v1

    const-string v3, "GenericSSOService"

    const-string v4, "In getWhiteListPackages: Exception."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "GenericSSOService"

    const-string v4, "In getWhiteListPackages: NullPointerException."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    return-object v2
.end method

.method public isNetworkAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generic SSO service is added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure add service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In onAdminRemoved: Admin removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "GenericSSOService"

    const-string v2, "In onAdminRemoved: Generic SSO was not used"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "GenericSSOService"

    const-string v2, "In onAdminRemoved: MDM uid is not matched"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->unregisterByAuthenticator(I)I

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "GenericSSOService"

    const-string v2, "In onAdminRemoved: Fail to clear records remotely"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->onAdminRemoved(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_7
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    sput-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    sput-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v0, v3, Landroid/os/Message;->arg1:I

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In onAdminRemoved: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In onAdminRemoved: SecurityException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->onAdminRemoved(I)V

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre Admin removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->performUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public processWebServiceRequest(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;
    .locals 15

    move-object v1, p0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v3, "In processWebServiceRequest: Checking networking connection - Failed."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    nop

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v6

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In processWebServiceRequest: the callingApp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "is not permitted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2

    :cond_2
    invoke-direct {v1, v0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v5, v6

    invoke-direct {v1, v0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "GenericSSOService"

    const-string v7, "In processWebServiceRequest: Fail to pass the service package cert check"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v2

    :cond_4
    const-string/jumbo v6, "servicepackagename"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_6

    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "GenericSSOService"

    const-string v8, "In processWebServiceRequest: cannot get SSO Service intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v2

    :cond_6
    invoke-direct {v1, v0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v7

    move-object v13, v7

    if-nez v13, :cond_7

    const-string v7, "GenericSSOService"

    const-string v8, "In processWebServiceRequest: sso service is not ready to use"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_7
    new-instance v14, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    const-string/jumbo v7, "servicepackagename"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "clientpackagename"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v7, v14

    move-object v11, v5

    move-object/from16 v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    move-object v7, v14

    nop

    invoke-interface {v13, v7}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireWebService(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;

    move-result-object v8

    if-nez v8, :cond_9

    sget-boolean v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "GenericSSOService"

    const-string v10, "In processWebServiceRequest: Fail to acquire valid service response from sso service"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v2

    :cond_9
    const-string v9, "GenericSSOService"

    const-string v10, "In processWebServiceRequest: serviceResponse don\'t have any fault"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    const-string v3, "GenericSSOService"

    const-string v4, "In processWebServiceRequest: Exception in getToken"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "GenericSSOService"

    const-string v4, "In processWebServiceRequest: Remote Exception error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v3, "GenericSSOService"

    const-string v4, "In processWebServiceRequest: null pointer exception in getToken"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-object v2
.end method

.method public removeAppTokenFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeUserAndDeviceCertFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetPassword(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->resetPasswordByToken(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public setAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)I
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v0

    return v0
.end method

.method public setAuthenticationConfigForContainer(Lcom/samsung/android/knox/container/AuthenticationConfig;I)I
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setAuthenticationConfigForContainer(Lcom/samsung/android/knox/container/AuthenticationConfig;I)I

    move-result v0

    return v0
.end method

.method public setCustomerBrandInfo(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    const/4 v0, -0x3

    if-nez v3, :cond_1

    sget-boolean v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "GenericSSOService"

    const-string v5, "In setCustomerBrandInfo: cxtInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "GenericSSOService"

    const-string v6, "In setCustomizedBrandingInfo: invalid parameters"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    nop

    :try_start_0
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    invoke-direct {v1, v5, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v6

    if-nez v6, :cond_5

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "GenericSSOService"

    const-string v6, "In setCustomerBrandInfo: MDM uid is not matched"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v0, -0xa

    return v0

    :cond_5
    sget-boolean v6, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In setCustomizedBrandingInfo: UserID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "GenericSSOService"

    const-string v6, "In setCustomizedBrandingInfo: No SSO Vendors have been enrolled."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, -0x6

    return v0

    :cond_8
    invoke-direct {v1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const/4 v9, 0x0

    const-string v10, "customerbrand"

    invoke-direct {v1, v7, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    move-object v9, v10

    if-nez v10, :cond_9

    const-string v10, "customerbrand"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    move-object v9, v10

    invoke-interface {v7, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9
    const-string v10, "customer_brand_logo"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_a

    const-string v10, "customer_brand_logo"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    array-length v12, v10

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_a

    return v0

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v12

    if-eqz v12, :cond_c

    array-length v13, v12

    if-lez v13, :cond_c

    const/4 v13, 0x0

    invoke-direct {v1, v9, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    move-object v13, v14

    if-nez v14, :cond_b

    invoke-interface {v8, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    move-object v13, v14

    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_b
    new-instance v14, Ljava/lang/String;

    const/4 v15, 0x2

    invoke-static {v12, v15}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v15

    const-string v11, "UTF_8"

    invoke-direct {v14, v15, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v11, v14

    const-string/jumbo v14, "value"

    invoke-interface {v13, v14, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v14, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_c

    const-string v14, "GenericSSOService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "In setCustomizedBrandingInfo:  <"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> is added"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_c
    move-object/from16 v16, v0

    :goto_1
    move-object/from16 v0, v16

    const/4 v11, 0x0

    goto :goto_0

    :cond_d
    invoke-direct {v1, v5, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v5, "GenericSSOService"

    const-string v6, "In setCustomizedBrandingInfo: Exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v5, "GenericSSOService"

    const-string v6, "In setCustomizedBrandingInfo: NullPointerException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method public setGenericSSOConfig(IILcom/samsung/android/knox/sso/config/GenericSSOConfig;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->checkADCExist(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "systemReady: provision token for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->provisionResetPasswordToken(I)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method public unenrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In unenrollSSOVendor: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x3

    return v0

    :cond_1
    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->_unenrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "GenericSSOService"

    const-string v3, "In unenrollSSOVendor: success in unenrolling, removing whitelist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v2

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In unenrollSSOVendor: return from remove whitelisting all apps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In unenrollSSOVendor: Failed to unenroll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public unenrollSSOVendor2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In unenrollSSOVendor2: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x3

    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->_unenrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const-string v1, "GenericSSOService"

    const-string v2, "In unenrollSSOVendor2: success in unenrolling, removing whitelist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In unenrollSSOVendor2: return from remove whitelisting all apps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In unenrollSSOVendor2: Failed to unenroll = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public validateUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->validateUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public verifyUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->verifyUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0

    return-object v0
.end method
