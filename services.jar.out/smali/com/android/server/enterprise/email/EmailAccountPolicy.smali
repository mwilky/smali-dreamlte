.class public Lcom/android/server/enterprise/email/EmailAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;
.source "EmailAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/EmailAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailAccountPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private preCallingUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 6

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "android.permission.sec.MDM_EMAIL"

    const-string v4, "com.samsung.android.knox.permission.KNOX_EMAIL"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->setPackageNameForUid(ILjava/lang/String;)V

    iput v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    const-string v3, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling UID changed :    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  callingUid   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method

.method private fillInEmailAccountData(Lcom/android/server/enterprise/email/AccountMetaData;)Lcom/samsung/android/knox/accounts/Account;
    .locals 6

    new-instance v0, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    iget v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->id:I

    iget-object v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    iget v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    iget v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    iget-boolean v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v3, v0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v3, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    iget-boolean v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    new-instance v3, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v3}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v4, -0x1

    iput v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    iput v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-boolean v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v1, v3, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    new-instance v3, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v3}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    iput v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    iput v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    iput-boolean v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    iput-boolean v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-boolean v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v1, v3, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "pop3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "imap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getValidIncomingProtocol returned  protocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "smtp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getValidOutgoingProtocol returned  protocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method


# virtual methods
.method public addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .locals 23

    const-string v0, "EmailAccountPolicy"

    const-string v1, "addNewAccount() EX"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v21, "Send from SamsungMobile"

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v2 .. v22}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    .locals 57

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p10

    move-object/from16 v10, p19

    move/from16 v11, p20

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v15

    const-string v0, "EmailAccountPolicy"

    const-string v12, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    invoke-static {v0, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v14

    iget v13, v15, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p12 .. p12}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v21, v5

    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v22, -0x1

    if-eqz v12, :cond_f

    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v11, :cond_f

    if-eqz v10, :cond_f

    if-eqz v9, :cond_f

    if-eqz v8, :cond_f

    const/4 v0, 0x1

    if-gt v0, v2, :cond_f

    if-gt v0, v3, :cond_f

    if-eqz v7, :cond_f

    if-nez v6, :cond_0

    move-object v2, v1

    move-object/from16 v40, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v53, v8

    move-object v5, v12

    move/from16 v52, v13

    move v6, v14

    move-object/from16 v44, v15

    move-object/from16 v41, v21

    move-object v12, v9

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_6

    :cond_0
    move-object/from16 v24, v6

    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EmailAccountPolicy"

    move-object/from16 v25, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v7

    const-string v7, "addNewAccount() EX : Error :: Email app is not installed on user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v22

    :cond_1
    move-object/from16 v25, v6

    move-object/from16 v26, v7

    const/4 v0, 0x0

    const/16 v17, 0x0

    iget-object v6, v1, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object v7, v12

    move-object v12, v15

    move-object/from16 v27, v8

    move v8, v13

    move-object v13, v0

    move/from16 v28, v14

    move-object v14, v7

    move-object/from16 v29, v15

    move-object v15, v11

    move-object/from16 v16, v9

    move-object/from16 v18, v6

    invoke-static/range {v12 .. v18}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_2

    const-string v0, "EmailAccountPolicy"

    const-string v6, "addNewAccount() EX : Error :: Account already exists."

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v22

    :cond_2
    const-string/jumbo v0, "none"

    const-string/jumbo v6, "none"

    if-eqz p13, :cond_4

    move-object/from16 v13, v21

    if-nez p14, :cond_3

    move-object/from16 v14, v24

    if-nez p15, :cond_5

    const-string/jumbo v0, "ssl"

    goto :goto_0

    :cond_3
    move-object/from16 v14, v24

    goto :goto_0

    :cond_4
    move-object/from16 v13, v21

    move-object/from16 v14, v24

    :cond_5
    :goto_0
    if-nez p13, :cond_6

    if-eqz p14, :cond_6

    if-nez p15, :cond_6

    const-string/jumbo v0, "tls"

    :cond_6
    if-eqz p13, :cond_7

    if-nez p14, :cond_7

    if-eqz p15, :cond_7

    const-string/jumbo v0, "ssl+trustallcerts"

    :cond_7
    if-nez p13, :cond_8

    if-eqz p14, :cond_8

    if-eqz p15, :cond_8

    const-string/jumbo v0, "tls+trustallcerts"

    :cond_8
    move-object v15, v0

    move-object/from16 v4, v26

    if-eqz p16, :cond_a

    move-object/from16 v30, v6

    move-object/from16 v6, v27

    if-nez p17, :cond_9

    move-object v12, v9

    if-nez p18, :cond_b

    const-string/jumbo v0, "ssl"

    goto :goto_2

    :cond_9
    move-object v12, v9

    goto :goto_1

    :cond_a
    move-object/from16 v30, v6

    move-object v12, v9

    move-object/from16 v6, v27

    :cond_b
    :goto_1
    move-object/from16 v0, v30

    :goto_2
    if-nez p16, :cond_c

    if-eqz p17, :cond_c

    if-nez p18, :cond_c

    const-string/jumbo v0, "tls"

    :cond_c
    if-eqz p16, :cond_d

    if-nez p17, :cond_d

    if-eqz p18, :cond_d

    const-string/jumbo v0, "ssl+trustallcerts"

    :cond_d
    if-nez p16, :cond_e

    if-eqz p17, :cond_e

    if-eqz p18, :cond_e

    const-string/jumbo v0, "tls+trustallcerts"

    :cond_e
    move-object v9, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    move-wide/from16 v31, v19

    :try_start_0
    const-string v0, "EmailAccountPolicy"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_14

    move/from16 v33, v8

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_13

    move-object/from16 v34, v4

    :try_start_2
    const-string v4, "addNewAccount() EX : "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    move/from16 v4, v28

    :try_start_3
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.action.internal.CREATE_EMAILACCOUNT"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_11

    move/from16 v35, v4

    :try_start_4
    const-string v4, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    move-object v4, v8

    move-object/from16 v8, v29

    :try_start_5
    invoke-virtual {v1, v8, v13}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v36, v19

    invoke-virtual {v1, v8, v5}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v19
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    move-wide/from16 v38, v19

    move-object/from16 v40, v5

    :try_start_6
    const-string v5, "account_id"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_e

    move-object/from16 v41, v13

    move-object/from16 v42, v14

    move-wide/from16 v13, v38

    :try_start_7
    invoke-virtual {v0, v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v5, "user_id"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "user_passwd_id"

    invoke-virtual {v0, v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v5, "outgoing_user_passwd_id"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    move-object/from16 v43, v7

    move-object/from16 v44, v8

    move-wide/from16 v7, v36

    :try_start_8
    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v5, "service"

    invoke-virtual {v0, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "outgoing_service"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "receive_host"

    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "receive_security"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "receive_port"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "send_host"

    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "send_security"

    invoke-virtual {v0, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "send_port"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "sender_name"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    move-object/from16 v45, v10

    move-object/from16 v10, v42

    :try_start_9
    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "outgoing_sender_name"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    move-object/from16 v46, v11

    move-object/from16 v11, v34

    :try_start_a
    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "signature"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    move-object/from16 v47, v11

    move-object/from16 v11, v45

    move-object/from16 v1, p19

    :try_start_b
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "notify"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-object/from16 v48, v10

    move-object/from16 v10, v46

    move/from16 v1, p20

    :try_start_c
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move/from16 v5, v33

    :try_start_d
    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v4, v1, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move/from16 v49, v5

    move-object/from16 v5, v43

    :try_start_e
    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v4, v1, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v4, v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    invoke-virtual {v4, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.OUTGOING_SERVICE_INTERNAL"

    invoke-virtual {v4, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    invoke-virtual {v4, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.RECEIVE_SECURITY_INTERNAL"

    invoke-virtual {v4, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.RECEIVE_PORT_INTERNAL"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SEND_HOST_INTERNAL"

    invoke-virtual {v4, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SEND_SECURITY_INTERNAL"

    invoke-virtual {v4, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SEND_PORT_INTERNAL"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SENDER_NAME_INTERNAL"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-object/from16 v2, v48

    :try_start_f
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.OUTGOING_SENDER_NAME_INTERNAL"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object/from16 v50, v2

    move-object/from16 v2, v47

    :try_start_10
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object/from16 v51, v2

    move-object/from16 v2, p19

    move/from16 v3, p20

    :try_start_11
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.EXTRA_NOTIFY_INTERNAL"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move/from16 v1, v49

    :try_start_12
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move/from16 v52, v1

    move-object/from16 v2, p0

    :try_start_13
    iget-object v1, v2, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-object/from16 v53, v6

    move/from16 v6, v35

    :try_start_14
    invoke-direct {v3, v6}, Landroid/os/UserHandle;-><init>(I)V

    move-wide/from16 v54, v7

    const-string v7, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v1, v4, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v7, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v1, v0, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v1, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " addNewAccount_ex() : sent intent to Email app : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-wide/from16 v3, v31

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-wide/from16 v3, v31

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-wide/from16 v3, v31

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move/from16 v52, v1

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    move-object/from16 v2, p0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move/from16 v52, v1

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    move-object/from16 v2, p0

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    move/from16 v52, v49

    move-object/from16 v2, p0

    goto/16 :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    move/from16 v52, v49

    move-object/from16 v2, p0

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v51, v2

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    move/from16 v52, v49

    move-object/from16 v2, p0

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v51, v2

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    move/from16 v52, v49

    move-object/from16 v2, p0

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    move-object/from16 v51, v47

    move/from16 v52, v49

    move-object/from16 v2, p0

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v50, v2

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    move-object/from16 v51, v47

    move/from16 v52, v49

    move-object/from16 v2, p0

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    move-object/from16 v51, v47

    move-object/from16 v50, v48

    move/from16 v52, v49

    move-object/from16 v2, p0

    goto/16 :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    move-object/from16 v51, v47

    move-object/from16 v50, v48

    move/from16 v52, v49

    move-object/from16 v2, p0

    goto/16 :goto_3

    :catchall_7
    move-exception v0

    move/from16 v52, v5

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    move-object/from16 v5, v43

    move-object/from16 v51, v47

    move-object/from16 v50, v48

    move-object/from16 v2, p0

    goto/16 :goto_5

    :catch_7
    move-exception v0

    move/from16 v52, v5

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v6, v35

    move-object/from16 v5, v43

    move-object/from16 v51, v47

    move-object/from16 v50, v48

    move-object/from16 v2, p0

    goto/16 :goto_3

    :catchall_8
    move-exception v0

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move/from16 v6, v35

    move-object/from16 v5, v43

    move-object/from16 v51, v47

    move-object/from16 v50, v48

    move-object/from16 v2, p0

    goto/16 :goto_5

    :catch_8
    move-exception v0

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move/from16 v6, v35

    move-object/from16 v5, v43

    move-object/from16 v51, v47

    move-object/from16 v50, v48

    move-object/from16 v2, p0

    goto/16 :goto_3

    :catchall_9
    move-exception v0

    move-object/from16 v53, v6

    move-object/from16 v50, v10

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move/from16 v6, v35

    move-object/from16 v5, v43

    move-object/from16 v10, v46

    move-object/from16 v51, v47

    move-object/from16 v2, p0

    goto/16 :goto_5

    :catch_9
    move-exception v0

    move-object/from16 v53, v6

    move-object/from16 v50, v10

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move/from16 v6, v35

    move-object/from16 v5, v43

    move-object/from16 v10, v46

    move-object/from16 v51, v47

    move-object/from16 v2, p0

    goto/16 :goto_3

    :catchall_a
    move-exception v0

    move-object v2, v1

    move-object/from16 v53, v6

    move-object/from16 v50, v10

    move-object/from16 v51, v11

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move/from16 v6, v35

    move-object/from16 v5, v43

    move-object/from16 v11, v45

    move-object/from16 v10, v46

    goto/16 :goto_5

    :catch_a
    move-exception v0

    move-object v2, v1

    move-object/from16 v53, v6

    move-object/from16 v50, v10

    move-object/from16 v51, v11

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move/from16 v6, v35

    move-object/from16 v5, v43

    move-object/from16 v11, v45

    move-object/from16 v10, v46

    goto/16 :goto_3

    :catchall_b
    move-exception v0

    move-object v2, v1

    move-object/from16 v53, v6

    move-object/from16 v50, v10

    move-object v10, v11

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move/from16 v6, v35

    move-object/from16 v5, v43

    move-object/from16 v11, v45

    goto/16 :goto_5

    :catch_b
    move-exception v0

    move-object v2, v1

    move-object/from16 v53, v6

    move-object/from16 v50, v10

    move-object v10, v11

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move/from16 v6, v35

    move-object/from16 v5, v43

    move-object/from16 v11, v45

    goto/16 :goto_3

    :catchall_c
    move-exception v0

    move-object v2, v1

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move/from16 v6, v35

    move-object/from16 v50, v42

    move-object/from16 v5, v43

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_5

    :catch_c
    move-exception v0

    move-object v2, v1

    move-object/from16 v53, v6

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move/from16 v6, v35

    move-object/from16 v50, v42

    move-object/from16 v5, v43

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_3

    :catchall_d
    move-exception v0

    move-object v2, v1

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v44, v8

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move/from16 v6, v35

    move-object/from16 v50, v42

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_5

    :catch_d
    move-exception v0

    move-object v2, v1

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v44, v8

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move/from16 v6, v35

    move-object/from16 v50, v42

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_3

    :catchall_e
    move-exception v0

    move-object v2, v1

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v44, v8

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move/from16 v6, v35

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_5

    :catch_e
    move-exception v0

    move-object v2, v1

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v44, v8

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move/from16 v6, v35

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_3

    :catchall_f
    move-exception v0

    move-object v2, v1

    move-object/from16 v40, v5

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v44, v8

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move/from16 v6, v35

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_5

    :catch_f
    move-exception v0

    move-object v2, v1

    move-object/from16 v40, v5

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v44, v8

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move/from16 v6, v35

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_3

    :catchall_10
    move-exception v0

    move-object v2, v1

    move-object/from16 v40, v5

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move-object/from16 v44, v29

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move/from16 v6, v35

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_5

    :catch_10
    move-exception v0

    move-object v2, v1

    move-object/from16 v40, v5

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move-object/from16 v44, v29

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move/from16 v6, v35

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_3

    :catchall_11
    move-exception v0

    move-object v2, v1

    move-object/from16 v40, v5

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move-object/from16 v44, v29

    move/from16 v52, v33

    move-object/from16 v51, v34

    move v6, v4

    move-wide/from16 v3, v31

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_5

    :catch_11
    move-exception v0

    move-object v2, v1

    move-object/from16 v40, v5

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move-object/from16 v44, v29

    move/from16 v52, v33

    move-object/from16 v51, v34

    move v6, v4

    move-wide/from16 v3, v31

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_3

    :catchall_12
    move-exception v0

    move-object v2, v1

    move-object/from16 v40, v5

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move/from16 v6, v28

    move-object/from16 v44, v29

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_5

    :catch_12
    move-exception v0

    move-object v2, v1

    move-object/from16 v40, v5

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move/from16 v6, v28

    move-object/from16 v44, v29

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v51, v34

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_3

    :catchall_13
    move-exception v0

    move-object v2, v1

    move-object/from16 v51, v4

    move-object/from16 v40, v5

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move/from16 v6, v28

    move-object/from16 v44, v29

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto/16 :goto_5

    :catch_13
    move-exception v0

    move-object v2, v1

    move-object/from16 v51, v4

    move-object/from16 v40, v5

    move-object/from16 v53, v6

    move-object v5, v7

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move/from16 v6, v28

    move-object/from16 v44, v29

    move-wide/from16 v3, v31

    move/from16 v52, v33

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto :goto_3

    :catchall_14
    move-exception v0

    move-object v2, v1

    move-object/from16 v51, v4

    move-object/from16 v40, v5

    move-object/from16 v53, v6

    move-object v5, v7

    move/from16 v52, v8

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move/from16 v6, v28

    move-object/from16 v44, v29

    move-wide/from16 v3, v31

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    goto :goto_5

    :catch_14
    move-exception v0

    move-object v2, v1

    move-object/from16 v51, v4

    move-object/from16 v40, v5

    move-object/from16 v53, v6

    move-object v5, v7

    move/from16 v52, v8

    move-object/from16 v41, v13

    move-object/from16 v50, v14

    move/from16 v6, v28

    move-object/from16 v44, v29

    move-wide/from16 v3, v31

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    :goto_3
    :try_start_15
    const-string v1, "EmailAccountPolicy"

    const-string v7, "addNewAccount_ex() : "

    invoke-static {v1, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_4
    nop

    const-string v0, "EmailAccountPolicy"

    const-string v1, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email + recvSecurityStr "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x0

    return-wide v7

    :catchall_15
    move-exception v0

    :goto_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_f
    move-object v2, v1

    move-object/from16 v40, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v53, v8

    move-object v5, v12

    move/from16 v52, v13

    move v6, v14

    move-object/from16 v44, v15

    move-object/from16 v41, v21

    move-object v12, v9

    move-object/from16 v56, v11

    move-object v11, v10

    move-object/from16 v10, v56

    :goto_6
    const-string v0, "EmailAccountPolicy"

    const-string v1, "addNewAccount() EX : Error :: Invalid input parameters."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v22
.end method

.method public addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/EmailAccount;)J
    .locals 50

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v10

    const-string v0, "EmailAccountPolicy"

    const-string v3, ">>>>>>>>>>>>>>>>>\t\taddNewAccount NEW "

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v11

    iget v12, v10, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-wide/16 v13, -0x1

    if-nez v2, :cond_0

    const-string v0, "EmailAccountPolicy"

    const-string v3, "addNewAccount() NEW : Error :: Invalid Account."

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v13

    :cond_0
    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->emailAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingProtocol:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingProtocol:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerLogin:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerLogin:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget v14, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPort:I

    move-object/from16 v18, v13

    iget v13, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPort:I

    if-eqz v15, :cond_c

    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v9, :cond_c

    if-eqz v8, :cond_c

    if-eqz v7, :cond_c

    if-eqz v6, :cond_c

    const/4 v0, 0x1

    if-gt v0, v14, :cond_c

    if-gt v0, v13, :cond_c

    if-eqz v4, :cond_c

    if-nez v5, :cond_1

    move-object/from16 v35, v3

    move-object/from16 v47, v4

    move-object/from16 v46, v5

    move-object/from16 v43, v6

    move-object/from16 v49, v7

    move-object/from16 v34, v10

    move v4, v11

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v33, v18

    move-object v14, v8

    move-object v11, v9

    goto/16 :goto_3

    :cond_1
    move-object/from16 v19, v8

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EmailAccountPolicy"

    move-object/from16 v20, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    const-string v4, "addNewAccount() EX : Error :: Email app is not installed on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    return-wide v3

    :cond_2
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v3, v1, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v20

    move-object/from16 v20, v3

    move-object v3, v10

    move-object/from16 v23, v21

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v25, v6

    move-object v6, v9

    move-object/from16 v26, v7

    move-object/from16 v27, v19

    move-object/from16 v19, v8

    move v8, v0

    move/from16 v28, v11

    move-object v11, v9

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    const-string v0, "EmailAccountPolicy"

    const-string v3, "addNewAccount() NEW : Error :: Account already exists."

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    return-wide v3

    :cond_3
    const-string/jumbo v0, "none"

    const-string/jumbo v3, "none"

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    if-nez v4, :cond_4

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    if-nez v4, :cond_4

    const-string/jumbo v0, "ssl"

    :cond_4
    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    if-nez v4, :cond_5

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    if-eqz v4, :cond_5

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    if-nez v4, :cond_5

    const-string/jumbo v0, "tls"

    :cond_5
    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    if-eqz v4, :cond_6

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    if-nez v4, :cond_6

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    if-eqz v4, :cond_6

    const-string/jumbo v0, "ssl+trustallcerts"

    :cond_6
    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    if-nez v4, :cond_7

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    if-eqz v4, :cond_7

    const-string/jumbo v0, "tls+trustallcerts"

    :cond_7
    move-object v4, v0

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    if-nez v0, :cond_8

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    if-nez v0, :cond_8

    const-string/jumbo v3, "ssl"

    :cond_8
    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    if-nez v0, :cond_9

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    if-nez v0, :cond_9

    const-string/jumbo v3, "tls"

    :cond_9
    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    if-nez v0, :cond_a

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    if-eqz v0, :cond_a

    const-string/jumbo v3, "ssl+trustallcerts"

    :cond_a
    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    if-nez v0, :cond_b

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    if-eqz v0, :cond_b

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    if-eqz v0, :cond_b

    const-string/jumbo v3, "tls+trustallcerts"

    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v9, "edm.intent.action.internal.CREATE_EMAILACCOUNT"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v9, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_14

    move-object v5, v9

    move-object/from16 v6, v18

    :try_start_1
    invoke-virtual {v1, v10, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_13

    move-wide/from16 v29, v16

    move-object/from16 v9, v22

    :try_start_2
    invoke-virtual {v1, v10, v9}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    move-wide/from16 v31, v16

    move-object/from16 v33, v6

    :try_start_3
    const-string v6, "account_id"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_11

    move-object/from16 v35, v9

    move-object/from16 v34, v10

    move-wide/from16 v9, v31

    :try_start_4
    invoke-virtual {v0, v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v6, "user_id"

    invoke-virtual {v0, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "user_passwd_id"

    invoke-virtual {v0, v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v6, "outgoing_user_passwd_id"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    move-wide/from16 v36, v7

    move-wide/from16 v7, v29

    :try_start_5
    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v6, "service"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    move-object/from16 v1, v26

    :try_start_6
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "outgoing_service"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_e

    move-object/from16 v38, v1

    move-object/from16 v1, v25

    :try_start_7
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "receive_host"

    invoke-virtual {v0, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "receive_security"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "receive_port"

    invoke-virtual {v0, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "send_host"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    move/from16 v39, v14

    move-object/from16 v14, v27

    :try_start_8
    invoke-virtual {v0, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "send_security"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "send_port"

    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "sender_name"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    move/from16 v40, v13

    move-object/from16 v13, v24

    :try_start_9
    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "outgoing_sender_name"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    move-object/from16 v41, v13

    move-object/from16 v13, v23

    :try_start_a
    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "signature"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    move-object/from16 v42, v13

    :try_start_b
    iget-object v13, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->signature:Ljava/lang/String;

    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "notify"

    iget-boolean v13, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->isNotify:Z

    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v5, v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v5, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v5, v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-object/from16 v13, v38

    :try_start_c
    invoke-virtual {v5, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.OUTGOING_SERVICE_INTERNAL"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    invoke-virtual {v5, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.RECEIVE_SECURITY_INTERNAL"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.RECEIVE_PORT_INTERNAL"
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-object/from16 v43, v1

    move/from16 v1, v39

    :try_start_d
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.SEND_HOST_INTERNAL"

    invoke-virtual {v5, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.SEND_SECURITY_INTERNAL"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.SEND_PORT_INTERNAL"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move/from16 v44, v1

    move/from16 v1, v40

    :try_start_e
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.SENDER_NAME_INTERNAL"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move/from16 v45, v1

    move-object/from16 v1, v41

    :try_start_f
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.OUTGOING_SENDER_NAME_INTERNAL"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object/from16 v46, v1

    move-object/from16 v1, v42

    :try_start_10
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object/from16 v47, v1

    :try_start_11
    iget-object v1, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->signature:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.EXTRA_NOTIFY_INTERNAL"

    iget-boolean v6, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->isNotify:Z

    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-object v6, v13

    move-object/from16 v1, p0

    :try_start_12
    iget-object v13, v1, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-object/from16 v48, v4

    move/from16 v4, v28

    :try_start_13
    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-object/from16 v49, v6

    :try_start_14
    const-string v6, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v13, v0, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v13, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v2, v5, v6, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v2, "EmailAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " addNewAccount() NEW : sent intent to Email app : "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-wide/from16 v5, v36

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-wide/from16 v5, v36

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-wide/from16 v5, v36

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v49, v6

    move-wide/from16 v5, v36

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v49, v6

    move-wide/from16 v5, v36

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v48, v4

    move-object/from16 v49, v6

    move/from16 v4, v28

    move-wide/from16 v5, v36

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v48, v4

    move-object/from16 v49, v6

    move/from16 v4, v28

    move-wide/from16 v5, v36

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object/from16 v48, v4

    move-object/from16 v49, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v48, v4

    move-object/from16 v49, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object/from16 v47, v1

    move-object/from16 v48, v4

    move-object/from16 v49, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v47, v1

    move-object/from16 v48, v4

    move-object/from16 v49, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object/from16 v46, v1

    move-object/from16 v48, v4

    move-object/from16 v49, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v47, v42

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_5
    move-exception v0

    move-object/from16 v46, v1

    move-object/from16 v48, v4

    move-object/from16 v49, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v47, v42

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    move/from16 v45, v1

    move-object/from16 v48, v4

    move-object/from16 v49, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v46, v41

    move-object/from16 v47, v42

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move/from16 v45, v1

    move-object/from16 v48, v4

    move-object/from16 v49, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v46, v41

    move-object/from16 v47, v42

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    move/from16 v44, v1

    move-object/from16 v48, v4

    move-object/from16 v49, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move/from16 v45, v40

    move-object/from16 v46, v41

    move-object/from16 v47, v42

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_7
    move-exception v0

    move/from16 v44, v1

    move-object/from16 v48, v4

    move-object/from16 v49, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move/from16 v45, v40

    move-object/from16 v46, v41

    move-object/from16 v47, v42

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v48, v4

    move-object/from16 v49, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move/from16 v44, v39

    move/from16 v45, v40

    move-object/from16 v46, v41

    move-object/from16 v47, v42

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_8
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v48, v4

    move-object/from16 v49, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move/from16 v44, v39

    move/from16 v45, v40

    move-object/from16 v46, v41

    move-object/from16 v47, v42

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_9
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v48, v4

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v49, v38

    move/from16 v44, v39

    move/from16 v45, v40

    move-object/from16 v46, v41

    move-object/from16 v47, v42

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_9
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v48, v4

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v49, v38

    move/from16 v44, v39

    move/from16 v45, v40

    move-object/from16 v46, v41

    move-object/from16 v47, v42

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_a
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v48, v4

    move-object/from16 v47, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v49, v38

    move/from16 v44, v39

    move/from16 v45, v40

    move-object/from16 v46, v41

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v48, v4

    move-object/from16 v47, v13

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v49, v38

    move/from16 v44, v39

    move/from16 v45, v40

    move-object/from16 v46, v41

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_b
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v48, v4

    move-object/from16 v46, v13

    move-object/from16 v47, v23

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v49, v38

    move/from16 v44, v39

    move/from16 v45, v40

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v48, v4

    move-object/from16 v46, v13

    move-object/from16 v47, v23

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v49, v38

    move/from16 v44, v39

    move/from16 v45, v40

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_c
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v48, v4

    move/from16 v45, v13

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v49, v38

    move/from16 v44, v39

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v48, v4

    move/from16 v45, v13

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v49, v38

    move/from16 v44, v39

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_d
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v48, v4

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v14, v27

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v49, v38

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v48, v4

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v14, v27

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v49, v38

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_e
    move-exception v0

    move-object/from16 v49, v1

    move-object/from16 v48, v4

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v14, v27

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    move-object/from16 v49, v1

    move-object/from16 v48, v4

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v14, v27

    move/from16 v4, v28

    move-wide/from16 v5, v36

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_f
    move-exception v0

    move-object/from16 v48, v4

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v49, v26

    move-object/from16 v14, v27

    move/from16 v4, v28

    move-wide/from16 v5, v36

    goto/16 :goto_2

    :catch_f
    move-exception v0

    move-object/from16 v48, v4

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v49, v26

    move-object/from16 v14, v27

    move/from16 v4, v28

    move-wide/from16 v5, v36

    goto/16 :goto_0

    :catchall_10
    move-exception v0

    move-object/from16 v48, v4

    move-wide v5, v7

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v49, v26

    move-object/from16 v14, v27

    move/from16 v4, v28

    goto/16 :goto_2

    :catch_10
    move-exception v0

    move-object/from16 v48, v4

    move-wide v5, v7

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v49, v26

    move-object/from16 v14, v27

    move/from16 v4, v28

    goto/16 :goto_0

    :catchall_11
    move-exception v0

    move-object/from16 v48, v4

    move-wide v5, v7

    move-object/from16 v35, v9

    move-object/from16 v34, v10

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v49, v26

    move-object/from16 v14, v27

    move/from16 v4, v28

    goto/16 :goto_2

    :catch_11
    move-exception v0

    move-object/from16 v48, v4

    move-wide v5, v7

    move-object/from16 v35, v9

    move-object/from16 v34, v10

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v49, v26

    move-object/from16 v14, v27

    move/from16 v4, v28

    goto/16 :goto_0

    :catchall_12
    move-exception v0

    move-object/from16 v48, v4

    move-object/from16 v33, v6

    move-wide v5, v7

    move-object/from16 v35, v9

    move-object/from16 v34, v10

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v49, v26

    move-object/from16 v14, v27

    move/from16 v4, v28

    goto/16 :goto_2

    :catch_12
    move-exception v0

    move-object/from16 v48, v4

    move-object/from16 v33, v6

    move-wide v5, v7

    move-object/from16 v35, v9

    move-object/from16 v34, v10

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v49, v26

    move-object/from16 v14, v27

    move/from16 v4, v28

    goto/16 :goto_0

    :catchall_13
    move-exception v0

    move-object/from16 v48, v4

    move-object/from16 v33, v6

    move-wide v5, v7

    move-object/from16 v34, v10

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v35, v22

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v49, v26

    move-object/from16 v14, v27

    move/from16 v4, v28

    goto/16 :goto_2

    :catch_13
    move-exception v0

    move-object/from16 v48, v4

    move-object/from16 v33, v6

    move-wide v5, v7

    move-object/from16 v34, v10

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v35, v22

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v49, v26

    move-object/from16 v14, v27

    move/from16 v4, v28

    goto :goto_0

    :catchall_14
    move-exception v0

    move-object/from16 v48, v4

    move-wide v5, v7

    move-object/from16 v34, v10

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v33, v18

    move-object/from16 v35, v22

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v49, v26

    move-object/from16 v14, v27

    move/from16 v4, v28

    goto :goto_2

    :catch_14
    move-exception v0

    move-object/from16 v48, v4

    move-wide v5, v7

    move-object/from16 v34, v10

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v33, v18

    move-object/from16 v35, v22

    move-object/from16 v47, v23

    move-object/from16 v46, v24

    move-object/from16 v43, v25

    move-object/from16 v49, v26

    move-object/from16 v14, v27

    move/from16 v4, v28

    :goto_0
    :try_start_15
    const-string v2, "EmailAccountPolicy"

    const-string v7, "addNewAccount() NEW :  failed. "

    invoke-static {v2, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    nop

    const-string v0, "EmailAccountPolicy"

    const-string v2, "<<<<<<<<<<<<<<<<<\t\taddNewAccount NEW : Broadcasting Email"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<<<<<<<<<<<<<<<<\t\taddNewAccount NEW : Broadcasting Email +  recvSecurityStr "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x0

    return-wide v7

    :catchall_15
    move-exception v0

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_c
    move-object/from16 v35, v3

    move-object/from16 v47, v4

    move-object/from16 v46, v5

    move-object/from16 v43, v6

    move-object/from16 v49, v7

    move-object/from16 v34, v10

    move v4, v11

    move/from16 v45, v13

    move/from16 v44, v14

    move-object/from16 v33, v18

    move-object v14, v8

    move-object v11, v9

    :goto_3
    const-string v0, "EmailAccountPolicy"

    const-string v2, "addNewAccount() NEW : Error :: Invalid input parameters."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v5, "EmailAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAccount_new() : No exist accId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    iget-object v5, v4, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v6, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "EmailAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAccount_new() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.action.internal.DELETE_EMAILACCOUNT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "account_id"

    invoke-virtual {v7, v8, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.DELETE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v8, v9, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v11, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v9, v7, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v11, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v7

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    const-string v8, "EmailAccountPolicy"

    const-string v9, "deleteAccount_new() : failed. "

    invoke-static {v8, v9, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v3

    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccountDetails() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllEmailAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "getAllEmailAccounts()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "EmailAccountPolicy"

    const-string/jumbo v3, "getAllEmailAccounts_new( ): ids is empty "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/knox/accounts/Account;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/android/knox/accounts/Account;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    const-string v4, "EmailAccountPolicy"

    const-string/jumbo v5, "getSecurityInComingServerPassword() success"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "EmailAccountPolicy"

    const-string/jumbo v5, "getSecurityInComingServerPassword() failed "

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "O#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    const-string v4, "EmailAccountPolicy"

    const-string/jumbo v5, "getSecurityOutGoingServerPassword() success"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "EmailAccountPolicy"

    const-string/jumbo v5, "getSecurityOutGoingServerPassword() failed"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2
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

.method public removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "edm.intent.action.internal.DELETE_NOT_VALIDATED_EMAILACCOUNT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.action.DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "user_id"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "service"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "receive_host"

    invoke-virtual {v5, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v6, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    invoke-virtual {v6, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    invoke-virtual {v6, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_1
    const-string v6, "EmailAccountPolicy"

    const-string/jumbo v7, "removePendingAccount() : failed. "

    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;I)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountName_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "EmailAccountPolicy"

    const-string/jumbo v3, "setAccountName_new() : accountName is null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_1
    iput-object p2, v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    const-string v2, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountName ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 5

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAlwaysVibrateOnEmailNotification("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlwaysVibrateOnEmailNotification_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateWhenSilent:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    return v1
.end method

.method public setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAsDefaultAccount :  userID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",   accId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAsDefaultAccount_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    return v1
.end method

.method public setEmailAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setEmailAddress() : deprecated."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setInComingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingProtocol()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingProtocol() : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingProtocol_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iput-object p2, v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingProtocol returned  protocol : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    return v0
.end method

.method public setInComingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerAcceptAllCertificates()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingServerAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingServerAcceptAllCertificates returned  acceptAllCertificates : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    return v1
.end method

.method public setInComingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerAddress()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, -0x1

    if-nez p2, :cond_0

    const-string v2, "EmailAccountPolicy"

    const-string/jumbo v3, "setInComingServerAddress() : Error :: Invalid input parameter."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInComingServerAddress_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    const-string v3, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInComingServerAddress returned  serverAddress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v0, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    nop

    :cond_2
    return-wide v0
.end method

.method public setInComingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerLogin() : deprecated. "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, -0x1

    if-nez p2, :cond_0

    const-string v2, "EmailAccountPolicy"

    const-string/jumbo v3, "setInComingServerLogin() : Error :: Invalid input parameter."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInComingServerLogin() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_1
    const-string v3, "EmailAccountPolicy"

    const-string/jumbo v4, "setInComingServerLogin deprecated "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    return-wide v0
.end method

.method public setInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const-string v3, "EmailAccountPolicy"

    const-string/jumbo v4, "setInComingServerPassword : Error :: Invalid input parameter."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "EmailAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setInComingServerPassword_new() : No exist accId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iput-object p2, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v2

    return v2
.end method

.method public setInComingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerPathPrefix() : deprecated"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerPathPrefix() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    return v1
.end method

.method public setInComingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerPort()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingServerPort() : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerPort_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iput p2, v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    const-string v0, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingServerPort returned  port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    return v0
.end method

.method public setInComingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerSSL()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingServerSSL_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingServerSSL returned  enableSSL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    return v1
.end method

.method public setOutGoingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setOutGoingProtocol : deprecated."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setOutGoingProtocol : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingProtocol() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iput-object p2, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    return v0
.end method

.method public setOutGoingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOutGoingServerAcceptAllCertificates() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingServerAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingServerAcceptAllCertificates returned  port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    return v1
.end method

.method public setOutGoingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, -0x1

    if-nez p2, :cond_0

    const-string v2, "EmailAccountPolicy"

    const-string/jumbo v3, "setOutGoingServerAddress() : Error :: Invalid input parameter."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOutGoingServerAddress_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    const-string v3, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOutGoingServerAddress() returned  serverAddress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v0, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    nop

    :cond_2
    return-wide v0
.end method

.method public setOutGoingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, -0x1

    if-nez p2, :cond_0

    const-string v2, "EmailAccountPolicy"

    const-string/jumbo v3, "setOutGoingServerLogin() : Error :: Invalid input parameter."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOutGoingServerLogin() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_1
    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    return-wide v0
.end method

.method public setOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const-string v3, "EmailAccountPolicy"

    const-string/jumbo v4, "setOutGoingServerPassword : Error :: Invalid input parameter."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "EmailAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setOutGoingServerPassword_new() : No exist accId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iput-object p2, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v2

    return v2
.end method

.method public setOutGoingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setOutGoingServerPathPrefix() : deprecated. "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerPathPrefix() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    return v1
.end method

.method public setOutGoingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setOutGoingServerPort : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerPort_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iput p2, v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    const-string v0, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingServerPort returned  port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    return v0
.end method

.method public setOutGoingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOutGoingServerSSL() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingServerSSL_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingServerSSL returned  port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    return v1
.end method

.method public setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 5

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    if-nez p2, :cond_0

    const-string v2, "EmailAccountPolicy"

    const-string/jumbo v3, "setSecurityInComingServerPassword() : password is null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "EmailAccountPolicy"

    const-string/jumbo v4, "setSecurityInComingServerPassword() success"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "EmailAccountPolicy"

    const-string/jumbo v4, "setSecurityInComingServerPassword() failed"

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v0
.end method

.method public setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 5

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    if-nez p2, :cond_0

    const-string v2, "EmailAccountPolicy"

    const-string/jumbo v3, "setSecurityOutGoingServerPassword() : password is null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "O#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "EmailAccountPolicy"

    const-string/jumbo v4, "setSecurityOutGoingServerPassword() success"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "EmailAccountPolicy"

    const-string/jumbo v4, "setSecurityOutGoingServerPassword() failed"

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v0
.end method

.method public setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setSenderName() : senderName is null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEmailAddress_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iput-object p2, v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    return v0
.end method

.method public setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setSignature() : signature is null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSignature_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iput-object p2, v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    return v0
.end method

.method public setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setSilentVibrateOnEmailNotification() : deprecated."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "EmailAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyncInterval() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iput p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    const-string v2, "EmailAccountPolicy"

    const-string/jumbo v3, "setSyncInterval() : deprecated."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
