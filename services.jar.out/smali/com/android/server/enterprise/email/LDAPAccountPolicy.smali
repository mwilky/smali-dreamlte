.class public Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.super Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;
.source "LDAPAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;,
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$OldLDAPIntentReceiver;
    }
.end annotation


# static fields
.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_BASEDN:Ljava/lang/String; = "basedn"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_HOST:Ljava/lang/String; = "host"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_ISSSL:Ljava/lang/String; = "isssl"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_PORT:Ljava/lang/String; = "port"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_SERVICE:Ljava/lang/String; = "service"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_TRUSTALL:Ljava/lang/String; = "trustall"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERID:Ljava/lang/String; = "user_id"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERNAME:Ljava/lang/String; = "user_name"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERPASSWORD_ID:Ljava/lang/String; = "user_password_id"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_iSANONYMOUS:Ljava/lang/String; = "isanonymous"

.field private static final TAG:Ljava/lang/String; = "LDAPAccountPolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "edm.intent.action.ldap.createacct.internal"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/enterprise/email/LDAPAccountPolicy$OldLDAPIntentReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$OldLDAPIntentReceiver;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.sec.MDM_LDAP_INTERNAL"

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v1, "LDAPAccountPolicyService"

    const-string/jumbo v2, "success to add old receiver"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LDAPAccountPolicyService"

    const-string v2, "Regist BroadCast failed : "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.samsung.android.knox.permission.KNOX_LDAP"

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v1, "LDAPAccountPolicyService"

    const-string/jumbo v2, "success to add receiver"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "LDAPAccountPolicyService"

    const-string v2, "Regist BroadCast failed : "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/email/LDAPAccountPolicy;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    return-void
.end method

.method private enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_LDAP"

    const-string v3, "com.samsung.android.knox.permission.KNOX_LDAP"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAccountLDAPType()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.ldap"

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private sendBroadcastCreateLDAPAcctResultIntent(IIJ)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "edm.intent.action.ldap.createacct.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "edm.intent.extra.ldap.result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "edm.intent.extra.ldap.acct.id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "edm.intent.extra.ldap.user.id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v3, "LDAPAccountPolicyService"

    const-string/jumbo v4, "sendBroadcastCreateLDAPAcctResultIntent() success to send result Intent. "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "LDAPAccountPolicyService"

    const-string/jumbo v5, "sendBroadcastCreateLDAPAcctResultIntent() failed to send result Intent. "

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.knox.intent.extra.LDAP_RESULT"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

    invoke-virtual {v3, v4, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.android.knox.permission.KNOX_LDAP"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v4, "LDAPAccountPolicyService"

    const-string/jumbo v5, "sendBroadcastCreateLDAPAcctResultIntent() success to send result Intent 2. "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_3
    const-string v5, "LDAPAccountPolicyService"

    const-string/jumbo v6, "sendBroadcastCreateLDAPAcctResultIntent() failed to send result Intent 2. "

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 9

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    if-nez p2, :cond_0

    return-wide v4

    :cond_0
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "E#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-wide v2

    :catch_0
    move-exception v6

    const-string v7, "LDAPAccountPolicyService"

    const-string/jumbo v8, "setAccountEmailPassword() failed"

    invoke-static {v7, v8, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v4
.end method


# virtual methods
.method public declared-synchronized createLDAPAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/LDAPAccount;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move v3, v0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    move-object v4, v0

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v5, v0

    iget v0, v4, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v6, v0

    if-nez v2, :cond_0

    const-string v0, "LDAPAccountPolicyService"

    const-string v7, "createLDAPAccount() : failed. ldap is not vaild."

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    invoke-static {v7, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    const-wide/16 v8, -0x1

    const/4 v10, -0x8

    if-nez v0, :cond_1

    invoke-direct {v1, v5, v10, v8, v9}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    const-string v0, "LDAPAccountPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createLDAPAccount : Error :: Email app is not installed on user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const-string v0, "LDAPAccountPolicyService"

    const-string v14, "createLDAPAccount_new()"

    invoke-static {v0, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget-object v0, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    invoke-direct {v1, v4, v0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v14

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.action.internal.CREATE_LDAPACCOUNT"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "user_id"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v16, v11

    :try_start_4
    iget-wide v10, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    invoke-virtual {v0, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v8, "user_name"

    iget-object v9, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "user_password_id"

    invoke-virtual {v0, v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v8, "port"

    iget v9, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "isssl"

    iget-boolean v9, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v8, "service"

    const-string/jumbo v9, "ldap"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "isanonymous"

    iget-boolean v9, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v8, "host"

    iget-object v9, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "basedn"

    iget-object v9, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "trustall"

    iget v9, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v10, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v8, v0, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v8, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    invoke-direct {v1, v4, v8}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v8

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.action.CREATE_LDAPACCOUNT_INTERNAL"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v18, v3

    move-object/from16 v19, v4

    :try_start_5
    iget-wide v3, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    invoke-virtual {v10, v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.USER_NAME_INTERNAL"

    iget-object v4, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.USER_PASSWORD_ID_INTERNAL"

    invoke-virtual {v10, v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.PORT_INTERNAL"

    iget v4, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.IS_SSL_INTERNAL"

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string/jumbo v4, "ldap"

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.IS_ANONYMOUS_INTERNAL"

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.HOST_INTERNAL"

    iget-object v4, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.BASE_DN_INTERNAL"

    iget-object v4, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    iget v4, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v10, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v11, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v3, v10, v4, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v3, "LDAPAccountPolicyService"

    const-string v4, "createLDAPAccount_new() : successfully sent intent to Email app. "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide/from16 v3, v16

    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-wide/from16 v3, v16

    goto :goto_1

    :catch_0
    move-exception v0

    move-wide/from16 v3, v16

    goto :goto_0

    :catchall_1
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-wide/from16 v3, v16

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-wide/from16 v3, v16

    goto :goto_0

    :catchall_2
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-wide v3, v11

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-wide v3, v11

    :goto_0
    :try_start_7
    const-string v8, "LDAPAccountPolicyService"

    const-string v9, "createLDAPAccount_new() : unexpected Exception occurs. "

    invoke-static {v8, v9, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v8, -0x8

    const-wide/16 v9, -0x1

    invoke-direct {v1, v5, v8, v9, v10}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    const-string v0, "LDAPAccountPolicyService"

    const-string v8, "createLDAPAccount() : failed with unknown error."

    invoke-static {v0, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    :goto_1
    :try_start_9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    move-object p1, v1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "LDAPAccountPolicyService"

    const-string v5, "deleteLDAPAccount() : ldapId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    const-string v4, "device_account_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getAccountLDAPType()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "LDAPAccountPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteLDAPAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->deleteLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v7

    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v7

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_5
    const-string v8, "LDAPAccountPolicyService"

    const-string v9, "deleteLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v8, v9, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x0

    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :goto_1
    const-string v7, "LDAPAccountPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteLDAPAccount() : id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return v2

    :goto_2
    :try_start_7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAllLDAPAccounts(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/LDAPAccount;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "LDAPAccountPolicyService"

    const-string/jumbo v2, "getAllLDAPAccounts() "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    invoke-static {v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_4

    :catch_0
    move-exception v5

    :try_start_1
    const-string v6, "LDAPAccountPolicyService"

    const-string/jumbo v7, "getAllLDAPAccounts() : Failed, Exception occurs. "

    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    const-string v5, "LDAPAccountPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllLDAPAccounts() ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .locals 8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    cmp-long v3, p2, v3

    if-gez v3, :cond_0

    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLDAPAccount() : ldapId is invalid, id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_1
    const-string v6, "LDAPAccountPolicyService"

    const-string/jumbo v7, "getLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    const-string v5, "LDAPAccountPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLDAPAccount() id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", ret ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
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

.method public systemReady()V
    .locals 2

    const-string v0, "LDAPAccountPolicyService"

    const-string/jumbo v1, "systemReady()... "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
