.class public Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;,
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;,
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final AUTH_CONF_DATA_FILENAME:Ljava/lang/String; = "authconfig.xml"

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final COMMON_VALUE:Ljava/lang/String; = "value"

.field private static final DATASYSTEM_DIR:Ljava/lang/String; = "/data/system/"

.field private static final DATA_KEY_LENGTH:I = 0x10

.field private static final DEBUG:Z

.field private static final EID_PASSWORD_TOKEN:Ljava/lang/String; = "password_token"

.field private static final EID_PASSWORD_TOKEN_HANDLE:Ljava/lang/String; = "password_token_handle"

.field private static final EID_PASSWORD_TOKEN_KEY:Ljava/lang/String; = "password_token_key"

.field public static final EID_TOKEN:Ljava/lang/String; = "eid_reset_password_token"

.field private static final ENCODING_UTF8:Ljava/lang/String; = "UTF_8"

.field private static final IS_CONFIGURED_BY_MDM:Ljava/lang/String; = "isConfiguredByMDM"

.field private static final KEYSPEC_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEYWORD_AUTHPROVIDER:Ljava/lang/String; = "authenticationprovider"

.field private static final KEYWORD_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEY_STORE_ALIAS:Ljava/lang/String; = "KnoxEIDTokenKey"

.field private static final KNOXEID_SECRETKEY_FILE:Ljava/lang/String; = "KnoxEID_SCKF"

.field private static final KNOX_USERX_AUTHCONF_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final NETWORK_AUTH_FORCE_STATE:Ljava/lang/String; = "network_auth_force_state"

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "EnterpriseIdentity"

.field private static final USERAUTHENTICATION:I = 0x4

.field private static final WRAP_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static authenticationConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static final mCacheLock:Ljava/lang/Object;

.field private static mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static mKeyPair:Ljava/security/KeyPair;

.field private static mKeystore:Ljava/security/KeyStore;

.field private static mSecretKey:Ljava/security/Key;

.field private static final mSecretKeyLock:Ljava/lang/Object;

.field private static sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mSdpManagerService:Lcom/android/server/SdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKeyLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V

    return-void
.end method

.method private _setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, -0x1

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    invoke-static {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const/4 v8, 0x0

    if-nez v5, :cond_8

    const-string v9, "authenticationprovider"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    move-object v8, v9

    invoke-direct {v1, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "servicepackagename"

    invoke-interface {v8, v9, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "servicepackagesignature"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "EnterpriseIdentity"

    const-string v10, "In _setAuthenticationConfig: Incorrect configuration. Both hide and enforce set to true."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "hideEnterpriseIDLock"

    const-string/jumbo v10, "false"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v9, "hideEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v10, "true"

    goto :goto_0

    :cond_4
    const-string/jumbo v10, "false"

    :goto_0
    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v9, "forceEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string/jumbo v10, "true"

    goto :goto_2

    :cond_5
    const-string/jumbo v10, "false"

    :goto_2
    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "enforceRemoteAuthAlways"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string/jumbo v10, "true"

    goto :goto_3

    :cond_6
    const-string/jumbo v10, "false"

    :goto_3
    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "isConfiguredByMDM"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v10

    if-eqz v10, :cond_7

    const-string/jumbo v10, "true"

    goto :goto_4

    :cond_7
    const-string/jumbo v10, "false"

    :goto_4
    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In _setAuthenticationConfig AUTHENTICATOR_PACKAGE_NAME:   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "servicepackagename"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In _setAuthenticationConfig FORCE_ENTERPRISE_IDENTITY_LOCK:   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "forceEnterpriseIDLock"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In _setAuthenticationConfig HIDE_ENTERPRISE_ID_LOCK:   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hideEnterpriseIDLock"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In _setAuthenticationConfig ENFORCE_REMOTE_AUTH_ALWAYS:   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "enforceRemoteAuthAlways"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In _setAuthenticationConfig IS_CONFIGURED_BY_MDM:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "isConfiguredByMDM"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_8
    invoke-direct {v1, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->removeAll(Lorg/w3c/dom/Node;)V

    move-object v9, v5

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-direct {v1, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string/jumbo v10, "servicepackagename"

    invoke-interface {v9, v10, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string/jumbo v10, "servicepackagesignature"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "EnterpriseIdentity"

    const-string v11, "In _setAuthenticationConfig when node not null: Incorrect configuration. Both hide and enforce set to true."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "hideEnterpriseIDLock"

    const-string/jumbo v11, "false"

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string/jumbo v10, "hideEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v11

    if-eqz v11, :cond_c

    const-string/jumbo v11, "true"

    goto :goto_5

    :cond_c
    const-string/jumbo v11, "false"

    :goto_5
    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const-string/jumbo v10, "forceEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v11

    if-eqz v11, :cond_d

    const-string/jumbo v11, "true"

    goto :goto_7

    :cond_d
    const-string/jumbo v11, "false"

    :goto_7
    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "enforceRemoteAuthAlways"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v11

    if-eqz v11, :cond_e

    const-string/jumbo v11, "true"

    goto :goto_8

    :cond_e
    const-string/jumbo v11, "false"

    :goto_8
    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "isConfiguredByMDM"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v11

    if-eqz v11, :cond_f

    const-string/jumbo v11, "true"

    goto :goto_9

    :cond_f
    const-string/jumbo v11, "false"

    :goto_9
    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_10
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "EnterpriseIdentity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Key = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/samsung/android/knox/container/AuthenticationConfig;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    sget-object v12, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    sget-object v12, Lcom/samsung/android/knox/container/AuthenticationConfig;->OPERATION_MODE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    const/4 v12, 0x0

    invoke-direct {v1, v5, v11}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    move-object v12, v13

    if-nez v12, :cond_13

    iget-object v13, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v13, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    move-object v12, v13

    if-nez v4, :cond_12

    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_c

    :cond_12
    invoke-interface {v5, v12}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_13
    :goto_c
    const-string/jumbo v13, "value"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v13, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v13, :cond_14

    const-string v13, "EnterpriseIdentity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "In _setAuthenticationConfig:  <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "> parameter for - packageName  is added"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    goto/16 :goto_b

    :cond_15
    if-nez v4, :cond_16

    iget-object v10, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_16
    iget-object v10, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-direct {v1, v2, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    goto :goto_d

    :cond_17
    invoke-direct {v1, v2, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCache(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_d
    goto :goto_e

    :catch_0
    move-exception v0

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In setAuthenticationConfig: Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    const/4 v4, 0x0

    move v5, v4

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->provisionResetPasswordToken(I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v0

    goto :goto_f

    :catch_1
    move-exception v0

    move-object v6, v0

    const-string v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while provisioning token. Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    const-string v0, "EnterpriseIdentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Token to reset password provisioned:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_19

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_18

    sget-boolean v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v7, :cond_18

    const-string v7, "EnterpriseIdentity"

    const-string v8, "In _setAuthenticationConfig : file is not removed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return v3

    :cond_19
    return v4
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    return v0
.end method

.method private bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .locals 7

    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;-><init>(I)V

    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In bindToEnterpriseIdAuthenticator: The EnterpriseIdService is already bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v1

    return-object v1

    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".genericssoconnection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In bindToEnterpriseIdAuthenticator: action is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In bindToEnterpriseIdAuthenticator: Binding to the service..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    :try_start_2
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x4e20

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In bindToEnterpriseIdAuthenticator: CoutnDownLatch return false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "EnterpriseIdentity"

    const-string v5, "In bindToEnterpriseIdAuthenticator: InterruptedException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    goto :goto_1

    :cond_4
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In bindToEnterpriseIdAuthenticator: Fail to bind to sso service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In bindToEnterpriseIdAuthenticator: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In bindToEnterpriseIdAuthenticator: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_2
    const/4 v1, 0x0

    return-object v1
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

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EnterpriseIdentity"

    const-string/jumbo v3, "secret key is created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initKeyStore()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->loadKey(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    instance-of v3, v3, Ljavax/crypto/SecretKey;

    if-nez v3, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "EnterpriseIdentity"

    const-string v3, "In decrypt: the retrieved key in keystore is not SecretKey"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    :cond_2
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "EnterpriseIdentity"

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

    sget-object v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    check-cast v7, Ljavax/crypto/SecretKey;

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v2, v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    invoke-virtual {v3, v6, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, v2, v0, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF_8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In decrypt: Decrypted output is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "EnterpriseIdentity"

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
    return-object v0

    :cond_6
    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "EnterpriseIdentity"

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

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: GeneralSecurityException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: InvalidAlgorithmParameterException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: UnrecoverableKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: BadPaddingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: IllegalBlockSizeException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_7
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: NoSuchPaddingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_8
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: InvalidKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_9
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: KeyStoreException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_a
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In decrypt: NoSuchAlgorithmException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_0
    nop

    :goto_1
    return-object v1

    :cond_8
    :goto_2
    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "EnterpriseIdentity"

    const-string v2, "In decrypt: Key alias or token to encrypt is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v1
.end method

.method private encrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseIdentity"

    const-string v2, "In encrypt: Key alias to encrypt is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initKeyStore()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->loadKey(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    instance-of v0, v0, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "EnterpriseIdentity"

    const-string v2, "In encrypt: the retrieved key in keystore is not SecretKey"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1

    :cond_3
    const/16 v0, 0x10

    new-array v0, v0, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "EnterpriseIdentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In encrypt: Provider is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v4, :cond_7

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    check-cast v6, Ljavax/crypto/SecretKey;

    invoke-virtual {v4, v5, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    array-length v6, v5

    array-length v7, v0

    add-int/2addr v6, v7

    new-array v6, v6, [B

    array-length v7, v5

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v7, v5

    array-length v9, v0

    invoke-static {v0, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v8

    const-string v9, "UTF_8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-boolean v8, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "EnterpriseIdentity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In encrypt: Encrypted output "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v8, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "EnterpriseIdentity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In encrypt: the length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    :cond_6
    return-object v7

    :catch_0
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: UnrecoverableKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: KeyStoreException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: ProviderException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: BadPaddingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: IllegalBlockSizeException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_7
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: NoSuchPaddingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_8
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: NoSuchAlgorithmException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_9
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: NoSuchProviderException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_a
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: InvalidKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_b
    move-exception v0

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In encrypt: InvalidAlgorithmParameterException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_0
    nop

    :goto_1
    return-object v1
.end method

.method private enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x1482

    if-ne v1, v2, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "android.permission.sec.MDM_SECURITY"

    const-string v4, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1
.end method

.method private existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

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
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

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

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In existedNode: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In existedNode: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    return-object v0
.end method

.method static generateRandomBytes(I)[B
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
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

.method private getAuthConfigFilePath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "authconfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In getAuthConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getEnterpriseIdAuthenticationConfig: enterpriseId authenticator is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "value"

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "EnterpriseIdentity"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->handlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;-><init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

    return-object v0
.end method

.method private getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EnterpriseIdentity"

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

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getInstanceOfKeyStore: CertificateException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getInstanceOfKeyStore: NoSuchAlgorithmException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getInstanceOfKeyStore: IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getInstanceOfKeyStore: NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    goto :goto_1

    :catch_4
    move-exception v1

    const-string v2, "EnterpriseIdentity"

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

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "EnterpriseIdentity"

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

    const-string v2, "KnoxEIDTokenKey"

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EnterpriseIdentity"

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

    const-string v8, "KnoxEIDTokenKey"

    aput-object v8, v6, v7

    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v6, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "KnoxEIDTokenKey"

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

    sget-boolean v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "EnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key entry is generated for token "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getKeyPairFromAndroidKeyStore: Key entry is available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In getKeyPairFromAndroidKeyStore: Reading Key entry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v2, "KnoxEIDTokenKey"

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

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In getPackageCertForPkgname: User id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, p2, v4, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "EnterpriseIdentity"

    const-string v6, "In getPackageCertForPkgname: pkgInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_1
    :try_start_1
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "EnterpriseIdentity"

    const-string v5, "In getPackageCertForPkgname: Exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "EnterpriseIdentity"

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

.method private getSdpManagerService()Lcom/android/server/SdpManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSdpManagerService:Lcom/android/server/SdpManagerService;

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

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKeyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeyPair:Ljava/security/KeyPair;

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/KnoxEID_SCKF"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getSecretKeyFromAndroidKeyStore: Key file does not exists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In getSecretKeyFromAndroidKeyStore: Wrapping SecretKey"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B

    move-result-object v4

    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "EnterpriseIdentity"

    const-string v6, "In getSecretKeyFromAndroidKeyStore: Writing SecretKey"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v2, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->writeKeyData(Ljava/io/File;[B)V

    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "EnterpriseIdentity"

    const-string v6, "In getSecretKeyFromAndroidKeyStore: Finished writing SecretKey"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getSecretKeyFromAndroidKeyStore: Reading SecretKey"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->readKeyData(Ljava/io/File;)[B

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;

    move-result-object v4

    sput-object v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In getSecretKeyFromAndroidKeyStore: Finished reading SecretKey"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserId()I
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EnterpriseIdentity"

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

.method private initAuthenticationConfigDoc(I)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isFileExist(Ljava/lang/String;)Z

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
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    sget-object v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v4, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In initAuthenticationConfigDoc: authconfig.xml doesn\'t exist for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", an empty config file is created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    const-string v5, "configuration"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Element;->normalize()V

    new-instance v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    nop

    :goto_1
    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is loaded with auth details for userId "

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

    :cond_2
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_3
    :goto_2
    goto :goto_5

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In initAuthenticationConfigDoc: SAXException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_4
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In initAuthenticationConfigDoc: ParserConfigurationException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_6
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :goto_3
    nop

    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_4
    :goto_4
    throw v2

    :cond_5
    :goto_5
    return-void
.end method

.method private initKeyStore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    const-string v0, "AndroidKeyStore"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In initKeyStore: no KeyStore instance is running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In initKeyStore: Keystore Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private isAuthenticatorApplicationInstalled(Ljava/lang/String;I)Z
    .locals 4

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x1

    return v3

    :cond_0
    const-string v1, "EnterpriseIdentity"

    const-string v2, "In isAuthenticatorApplicationInstalled: Authenticator is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isNetworkAuthenticationEnforced(I)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "network_auth_force_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v2, v3

    const-string v3, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In isNetworkAuthenticationEnforced: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
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

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
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

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In loadKey: SecretKey is already loaded. It\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

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
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In loadKey: loadkey() failed, because keystore is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: secreteKey protected by AndroidKeyStore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private static readKeyData(Ljava/io/File;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseIdentity"

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

.method private removeAll(Lorg/w3c/dom/Node;)V
    .locals 4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

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

    const-string v6, "EnterpriseIdentity"

    const-string v7, "In saveConfigToFile: config file is saved successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getTokenConfigForUserId: IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getTokenConfigForUserId: FileNotFoundException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v2

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In getTokenConfigForUserId: TransformerException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception v2

    const-string v3, "EnterpriseIdentity"

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

.method private setNetworkAuthenticationEnforced(ZI)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "network_auth_force_state"

    nop

    invoke-static {v2, v3, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private tokenMigration([BI)J
    .locals 13

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSdpManagerService()Lcom/android/server/SdpManagerService;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "EnterpriseIdentity"

    const-string v7, "In tokenMigration: Failed due to no legacy token found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/SdpManagerService;->getResetTokenViaTrusted(I)[B

    move-result-object v6

    if-nez v6, :cond_2

    const-string v7, "EnterpriseIdentity"

    const-string v8, "In tokenMigration: Failed in legacy token derivation"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v7, 0x2

    invoke-virtual {v0, v6, p2, v7}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey([BII)[B

    move-result-object v7

    if-nez v7, :cond_3

    const-string v8, "EnterpriseIdentity"

    const-string v9, "In tokenMigration: Failed in legacy key derivation"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v8

    move-wide v2, v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_4

    const-string v10, "EnterpriseIdentity"

    const-string v11, "In tokenMigration: Failed to add escrow token"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p2}, Lcom/android/server/SdpManagerService;->removeLegacyToken(I)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "EnterpriseIdentity"

    const-string v11, "In tokenMigration: Failed to remove legacy token"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :try_start_0
    invoke-interface {v1, p1, v8, v9, p2}, Lcom/android/internal/widget/ILockSettings;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v11

    invoke-virtual {v0, v11, v7, p2}, Lcom/android/server/SdpManagerService;->generationalShift([B[BI)Z

    move-result v11

    if-nez v11, :cond_7

    :cond_6
    const-string v11, "EnterpriseIdentity"

    const-string v12, "In tokenMigration: Failed in sdp generational shift"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_8
    :goto_0
    const-string v6, "EnterpriseIdentity"

    const-string v7, "In tokenMigration: Failed due to invalid parameter"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2
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

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeyPair:Ljava/security/KeyPair;

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

.method private updateCache(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .locals 2

    invoke-static {p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$300(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In updateCache: updated authentication config doc is updated in authenticationConfigXMLDocs array"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .locals 4

    invoke-static {p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$300(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In updateCacheAndFile: updated authentication config doc is updated in authenticationConfigXMLDocs array"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In updateCacheAndFile: updated authentication config doc is saved at "

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

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeyPair:Ljava/security/KeyPair;

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

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseIdentity"

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
.method public checkADCExist(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v0

    return v0
.end method

.method public getAuthenticationConfig(I)Lcom/samsung/android/knox/container/AuthenticationConfig;
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v0, "EnterpriseIdentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In getAuthenticationConfig: cannot get configDoc for userID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    move/from16 v7, p1

    :try_start_0
    invoke-static {v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$400(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x0

    :cond_1
    move-object v8, v0

    check-cast v8, Lorg/w3c/dom/Element;

    move-object v15, v8

    const-string/jumbo v8, "servicepackagesignature"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "EnterpriseIdentity"

    const-string v9, "In getAuthenticationConfig: AUTHENTICATOR_PACKAGE_SIGNATURE = null in XML"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "servicepackagesignature"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v13, v8

    const-string/jumbo v8, "enforceRemoteAuthAlways"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "EnterpriseIdentity"

    const-string v9, "In getAuthenticationConfig: Error to look up. ENFORCE_REMOTE_AUTH_ALWAYS=null in XML"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const-string/jumbo v8, "enforceRemoteAuthAlways"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_1
    move v12, v8

    const-string/jumbo v8, "forceEnterpriseIDLock"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "EnterpriseIdentity"

    const-string v9, "In getAuthenticationConfig: Error to look up. FORCE_ENTERPRISE_IDENTITY_LOCK=null in XML"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    const-string/jumbo v8, "forceEnterpriseIDLock"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_2
    move v11, v8

    const-string/jumbo v8, "hideEnterpriseIDLock"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "EnterpriseIdentity"

    const-string v9, "In getAuthenticationConfig: Error to look up. HIDE_ENTERPRISE_ID_LOCK=null in XML"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    const-string/jumbo v8, "hideEnterpriseIDLock"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_3
    move v10, v8

    const-string/jumbo v8, "isConfiguredByMDM"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "EnterpriseIdentity"

    const-string v9, "In getAuthenticationConfig: Error to look up. isConfiguredByMDM=null in XML"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    const-string/jumbo v8, "isConfiguredByMDM"

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_4
    move v9, v8

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-object v8, v2

    move v5, v9

    move v9, v12

    move/from16 v16, v10

    move v10, v11

    move-object/from16 v17, v0

    move v0, v11

    move/from16 v11, v16

    move v1, v12

    move-object v12, v6

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v3, v2

    const-string v2, "EnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In getAuthenticationConfig: RemoteAuthAlways: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "forceEnterpriseID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "hideEnterpriseID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v16

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "Authenticator: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setConfiguredByMDM(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    move-object v2, v14

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_5
    const-string v1, "EnterpriseIdentity"

    const-string v5, "In getAuthenticationConfig: Exception"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/AuthenticationConfig;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthenticationConfig(I)Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v1

    return-object v1
.end method

.method public getEnterpriseIdAuthenticator(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$400(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isNetworkAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In isNetworkAuthenticationEnforced: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(I)Z

    move-result v1

    return v1
.end method

.method public onAdminRemoved(I)V
    .locals 8

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In OnAdminRemoved: uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In OnAdminRemoved: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_5

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    if-ne p1, v2, :cond_4

    const-string v3, "EnterpriseIdentity"

    const-string v4, "In OnAdminRemoved: Correct admin = all config is removed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->delete(I)V

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-nez v0, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_4

    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "EnterpriseIdentity"

    const-string v7, "In onAdminRemoved : file is not removed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need to be system process"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public performUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 12

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_6

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    if-nez p2, :cond_0

    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In performUserAuthentication: Performing user authentication is failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In performUserAuthentication: Authenticator signature is not matched"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v4, Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-direct {v4}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>()V

    move-object v0, v4

    sget-object v4, Lcom/samsung/android/knox/container/AuthenticationConfig;->AUTHENTICATION_STATUS:Ljava/lang/String;

    const/16 v5, -0xd

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setResponseBundle(Ljava/lang/String;I)V

    return-object v0

    :cond_2
    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In performUserAuthentication: calling _setAuthenticationConfig"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_4

    const-string v5, "EnterpriseIdentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In performUserAuthentication: The authenticator is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_4
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    :cond_5
    new-instance v5, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v10

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "EnterpriseIdentity"

    const-string v7, "In performUserAuthentication: Exception"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v6, "EnterpriseIdentity"

    const-string v7, "In performUserAuthentication: RemoteException"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    return-object v0

    :cond_6
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public provisionResetPasswordToken(I)Z
    .locals 13

    const-wide/16 v0, 0x0

    const/16 v2, 0x20

    new-array v3, v2, [B

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const-string/jumbo v9, "password_token_handle"

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_1

    const-string v9, "EnterpriseIdentity"

    const-string v12, "In provisionResetPasswordToken: EID_PASSWORD_TOKEN_HANDLE = null in XML"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->generateRandomBytes(I)[B

    move-result-object v3

    const-string/jumbo v2, "password_token"

    const-string/jumbo v9, "password_token_key"

    invoke-direct {p0, v9, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->encrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v2, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSdpManagerService()Lcom/android/server/SdpManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSdpManagerService()Lcom/android/server/SdpManagerService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->tokenMigration([BI)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v0

    :goto_0
    const-string/jumbo v2, "password_token_handle"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v2, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v9, "password_token_handle"

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->generateRandomBytes(I)[B

    move-result-object v3

    const-string/jumbo v2, "password_token"

    const-string/jumbo v9, "password_token_key"

    invoke-direct {p0, v9, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->encrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v2, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v0, v10

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v0

    const-string/jumbo v2, "password_token_handle"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v2, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    :cond_3
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    cmp-long v2, v0, v10

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public resetPasswordByToken(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x1482

    if-ne v1, v2, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x20

    new-array v4, v4, [B

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lorg/w3c/dom/Element;

    const-string/jumbo v5, "password_token_handle"

    invoke-interface {v13, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const-string v5, "EnterpriseIdentity"

    const-string v7, "In resetPasswordByToken: EID_PASSWORD_TOKEN_HANDLE = null in XML.Need to provision token"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    const-string/jumbo v5, "password_token_handle"

    invoke-interface {v13, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string/jumbo v2, "password_token"

    invoke-interface {v13, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In resetPasswordByToken: EID_PASSWORD_TOKEN = null in XML."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const-string/jumbo v2, "password_token_key"

    const-string/jumbo v3, "password_token"

    invoke-interface {v13, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->decrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_2

    return v6

    :cond_2
    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-wide v7, v14

    move-object v9, v2

    move v10, v1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredentialWithToken(Ljava/lang/String;IIJ[BI)Z

    move-result v3

    return v3

    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have KnoxCore uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)I
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EnterpriseIdentity"

    const-string v2, "Enterprise Identity not supported on device level "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    return v1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string/jumbo v3, "is_from_knox_core"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    const-string v3, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In setAuthenticationConfig: skipInstalledStatusCheck"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v2, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "com.sec.android.service.singlesignon"

    :cond_3
    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isAuthenticatorApplicationInstalled(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, -0x4

    return v4

    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "EnterpriseIdentity"

    const-string v7, "Enterprise Identity requested signature is different from IdP signature"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, -0xd

    return v6

    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v3

    return v3
.end method

.method public setAuthenticationConfigForContainer(Lcom/samsung/android/knox/container/AuthenticationConfig;I)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setUpdatedAuthenticationConfig : UserID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)V

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    const-string v3, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In setUpdatedAuthenticationConfig : exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "EnterpriseIdentity"

    const-string v1, "In validateUserAuthentication: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateUserAuthentication: contextInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v2, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/knox/container/AuthenticationConfig;->OPERATION_MODE:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, v8

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v0, v3, Landroid/os/Message;->arg1:I

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->handlerThread:Landroid/os/HandlerThread;

    return-void

    :cond_7
    :goto_1
    const-string v1, "EnterpriseIdentity"

    const-string v2, "In validateUserAuthentication: Usernames or password is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public verifyUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .locals 12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_3

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "EnterpriseIdentity"

    const-string v3, "In verifyUserAuthentication: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_5

    sget-object v3, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v10, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/container/AuthenticationConfig;->OPERATION_MODE:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v11, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v11

    move-object v4, v9

    move-object v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    invoke-direct {p0, v2, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v5, "EnterpriseIdentity"

    const-string v6, "In verifyUserAuthentication: The authenticator value is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_6
    :try_start_0
    invoke-interface {v4, v3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_7

    nop

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    sget-object v5, Lcom/samsung/android/knox/container/AuthenticationConfig;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x0

    invoke-direct {p0, v5, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "EnterpriseIdentity"

    const-string v6, "In performExchangeAuthentication: RemoteException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0

    :cond_8
    :goto_2
    const-string v2, "EnterpriseIdentity"

    const-string v3, "In verifyUserAuthentication: Usernames or password is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
