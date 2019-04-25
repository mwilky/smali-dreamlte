.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "SecContentProvider.java"


# static fields
.field public static final ACTION_MDM_BROWSERPROVIDER_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed"

.field private static final ADVANCEDRESTRICTION:I = 0x1

.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATIONPERMISSIONCONTROL:I = 0x17

.field private static final AUDIT:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field private static final BLUETOOTH:I = 0x3

.field private static final BLUETOOTHUTILS:I = 0x4

.field private static final BROWSER:I = 0x5

.field private static final CERTIFICATE:I = 0x6

.field private static final CONTAINERAPPLICATION:I = 0x7

.field private static final DATETIME:I = 0x18

.field private static final DEVICESETTIGNS:I = 0x8

.field private static final DEX:I = 0x1d

.field private static final DLP:I = 0x1b

.field private static final DOMAIN_FILTER:I = 0x1c

.field private static final ENTERPRISEKNOXMANAGER:I = 0x9

.field public static final EXTRA_API_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed.api"

.field private static final FIREWALL:I = 0xa

.field private static final KNOXCONFIGURATIONTYPE:I = 0xb

.field private static final LOCATION:I = 0xc

.field private static final PASSWORD1:I = 0xd

.field private static final PASSWORD2:I = 0xe

.field public static final PROVIDER_ADMINREMOVED:Ljava/lang/String; = "ADMIN_REMOVED"

.field public static final PROVIDER_AUDITLOGPOLICY_AUDITLOGENABLED:Ljava/lang/String; = "AuditLog/isAuditLogEnabled"

.field public static final PROVIDER_AUDITLOGPOLICY_AUTOCOMPLETE:Ljava/lang/String; = "AuditLog/AUTO_COMPLETING_DATA"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENPOPUP:Ljava/lang/String; = "AuditLog/OPEN_POPUP_URL"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENURL:Ljava/lang/String; = "AuditLog/OPEN_URL"

.field public static final PROVIDER_BROWSERPOLICY_AUTOFILL:Ljava/lang/String; = "BrowserPolicy/getAutoFillSetting"

.field public static final PROVIDER_BROWSERPOLICY_COOKIES:Ljava/lang/String; = "BrowserPolicy/getCookiesSetting"

.field public static final PROVIDER_BROWSERPOLICY_HTTPPROXY:Ljava/lang/String; = "BrowserPolicy/getHttpProxy"

.field public static final PROVIDER_BROWSERPOLICY_JAVASCRIPT:Ljava/lang/String; = "BrowserPolicy/getJavaScriptSetting"

.field public static final PROVIDER_BROWSERPOLICY_POPUPS:Ljava/lang/String; = "BrowserPolicy/getPopupsSetting"

.field public static final PROVIDER_CERTIFICATEPOLICY_CERTIFICATE_REMOVED:Ljava/lang/String; = "CertificatePolicy/certificateRemoved"

.field public static final PROVIDER_CERTIFICATEPOLICY_NOTIFY:Ljava/lang/String; = "CertificatePolicy/notifyCertificateFailure"

.field public static final PROVIDER_DOMAINFILTER_ISENABLED:Ljava/lang/String; = "28/getDefaultCaptivePortalUrl"

.field public static final PROVIDER_FIREWALLPOLICY_SAVEURLBLOCKEDREPORT:Ljava/lang/String; = "FirewallPolicy/saveURLBlockedReport"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterEnabled"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERLIST:Ljava/lang/String; = "FirewallPolicy/getURLFilterList"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERREPORTENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterReportEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_AUTHENTICATION:Ljava/lang/String; = "SmartCardBrowserPolicy/isAuthenticationEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE:Ljava/lang/String; = "SmartCardBrowserPolicy/getClientCertificateAlias"

.field private static final RESTRICTION:I = 0x1e

.field private static final RESTRICTION1:I = 0xf

.field private static final RESTRICTION2:I = 0x10

.field private static final RESTRICTION3:I = 0x11

.field private static final RESTRICTION4:I = 0x12

.field private static final ROAMING:I = 0x13

.field private static final SEAMS:I = 0x1a

.field private static final SECURITY:I = 0x14

.field private static final SMARTCARDBROWSER:I = 0x16

.field private static final SMARTCARDEMAIL:I = 0x15

.field private static final SPDCONTROL:I = 0x19

.field public static final TAG:Ljava/lang/String; = "SecContentProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field mEdmFirewallPolicy:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AdvancedRestrictionPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AuditLog"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothUtils"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BrowserPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "CertificatePolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ContainerApplicationPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DeviceSettingsPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "FirewallPolicy"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "KnoxConfigurationType"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "LocationPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy1"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy2"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy1"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy2"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy3"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy4"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RoamingPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SecurityPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardEmailPolicy"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardBrowserPolicy"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ApplicationPermissionControlPolicy"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DateTimePolicy"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SeamsPolicy"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DlpPolicy"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DomainFilterPolicy"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DexPolicy"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

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

.method public static notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, p1, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v4, "SecContentProvider"

    const-string/jumbo v5, "notifyPolicyChangesAllUser() : failed to notify"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-nez v3, :cond_1

    const-string v2, "SecContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPolicyChangesAllUser() : notify has failed. uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "SecContentProvider"

    const-string/jumbo v5, "notifyPolicyChangesAsUser() : failed to notify"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-nez v2, :cond_0

    const-string v3, "SecContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPolicyChangesAsUser() : notify has failed. userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.knox.provider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getArrayLength([Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    nop

    :try_start_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SecContentProvider"

    const-string/jumbo v3, "getArrayLength() return 0 but some exception occurs with invalid request."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "SecContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insert(), uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SecContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/16 v2, 0xa

    if-eq v1, v2, :cond_5

    const/16 v2, 0xe

    if-eq v1, v2, :cond_3

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v1, :cond_9

    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fail"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string/jumbo v4, "notifyCertificateFailure"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const-string/jumbo v4, "module"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    goto/16 :goto_1

    :pswitch_1
    goto/16 :goto_1

    :cond_1
    const-string/jumbo v1, "security_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v1, :cond_9

    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "setDodBannerVisibleStatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v4, "isVisible"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :cond_2
    goto/16 :goto_1

    :cond_3
    const-string/jumbo v1, "password_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v1, :cond_9

    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v3, "setPwdChangeRequested"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v4, "flag"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    :cond_4
    goto/16 :goto_1

    :cond_5
    const-string v1, "browser_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v1, :cond_9

    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string/jumbo v3, "saveURLBlockedReport"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v4, "url"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReportEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :cond_6
    goto/16 :goto_1

    :cond_7
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v1, :cond_9

    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    const-string v2, "AuditLoggerAsUser"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v2, "severity"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v2, "group"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v2, "outcome"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v2, "uid"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v2, "component"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "message"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "userid"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v2, v1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v2, "severity"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v2, "group"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v2, "outcome"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v2, "uid"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v2, "component"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "message"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    nop

    :cond_9
    :goto_1
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "SecContentProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "query(), uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v10, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " selection = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "SecContentProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "called from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v8, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const/16 v10, 0x10

    const/16 v15, 0x8

    const/16 v16, 0x5

    const/4 v9, 0x4

    const/16 v17, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v11, 0x0

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8c

    :pswitch_1
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x499d26f4

    if-eq v9, v10, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v9, "isLocalContactStorageAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move/from16 v17, v11

    :cond_1
    :goto_0
    if-eqz v17, :cond_2

    const-string v9, "SecContentProvider"

    const-string/jumbo v10, "return null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_2
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isLocalContactStorageAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    nop

    return-object v7

    :pswitch_2
    const-string v8, "dex_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/dex/DexPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v9, "isVirtualMacAddressEnforced"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x3

    goto :goto_2

    :sswitch_1
    const-string/jumbo v9, "isEthernetOnlyEnforced"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v12

    goto :goto_2

    :sswitch_2
    const-string/jumbo v10, "getVirtualMacAddress"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :sswitch_3
    const-string/jumbo v9, "isScreenTimeoutChangeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v11

    goto :goto_2

    :sswitch_4
    const-string/jumbo v9, "isDexDisabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v14

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v9, v17

    :goto_2
    packed-switch v9, :pswitch_data_1

    return-object v13

    :pswitch_3
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->getVirtualMacAddress()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getVirtualMacAddress"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/String;

    aput-object v9, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->isVirtualMacAddressEnforced()Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isVirtualMacAddressEnforced"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyEnforced()Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isEthernetOnlyEnforced"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isDexDisabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->isScreenTimeoutChangeAllowed()Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isScreenTimeoutChangeAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_3
    return-object v7

    :pswitch_8
    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x1371088

    if-eq v8, v9, :cond_4

    goto :goto_4

    :cond_4
    const-string/jumbo v8, "getDefaultCaptivePortalUrl"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move/from16 v17, v11

    :cond_5
    :goto_4
    if-eqz v17, :cond_6

    goto :goto_5

    :cond_6
    const-string v8, "SecContentProvider"

    const-string/jumbo v9, "getDefaultCaptivePortalUrl"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "firewall"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/android/server/enterprise/firewall/Firewall;->getDefaulCaptivePortalURL()Ljava/lang/String;

    move-result-object v9

    :cond_7
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getDefaultCaptivePortalUrl"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/String;

    aput-object v9, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_5
    return-object v7

    :pswitch_9
    if-eqz v2, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x1d831fed

    if-eq v8, v9, :cond_9

    const v9, 0x67e79726

    if-eq v8, v9, :cond_8

    goto :goto_6

    :cond_8
    const-string/jumbo v8, "isAllowedToShare"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    move/from16 v17, v11

    goto :goto_6

    :cond_9
    const-string/jumbo v8, "isDLPActivated"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    move/from16 v17, v14

    :cond_a
    :goto_6
    packed-switch v17, :pswitch_data_2

    const-string v8, "SecContentProvider"

    const-string v9, "Case DLP selection is not matched"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_a
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isDLPActivated"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    nop

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cursor not null:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v9, v14, [Ljava/lang/Boolean;

    aput-object v8, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_7

    :pswitch_b
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isAllowedToShare"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    nop

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cursor not null:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v9, v14, [Ljava/lang/Boolean;

    aput-object v8, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_7
    return-object v7

    :cond_b
    const-string v8, "SecContentProvider"

    const-string v9, "Case DLP selection null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    :pswitch_c
    const-string v8, "SEAMService"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Lcom/android/server/SEAMService;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x74717860

    if-eq v9, v10, :cond_d

    const v10, -0x1b958fde

    if-eq v9, v10, :cond_c

    goto :goto_8

    :cond_c
    const-string/jumbo v9, "getAllSEContainerCategory"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    move/from16 v17, v14

    goto :goto_8

    :cond_d
    const-string/jumbo v9, "getSEContainerClipboardMode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    move/from16 v17, v11

    :cond_e
    :goto_8
    packed-switch v17, :pswitch_data_3

    return-object v13

    :pswitch_d
    invoke-virtual {v8}, Lcom/android/server/SEAMService;->getAllSEContainerCategory()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllSEContainerCategory"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    if-eqz v9, :cond_11

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    new-array v13, v14, [Ljava/lang/Integer;

    aput-object v12, v13, v11

    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_9

    :pswitch_e
    if-eqz v3, :cond_12

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_f

    goto :goto_b

    :cond_f
    aget-object v9, v3, v11

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/SEAMService;->getSEContainerClipboardMode(I)I

    move-result v9

    if-ne v9, v14, :cond_10

    move v9, v14

    goto :goto_a

    :cond_10
    move v9, v11

    :goto_a
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getSEContainerClipboardMode"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :cond_11
    return-object v7

    :cond_12
    :goto_b
    return-object v13

    :pswitch_f
    const-string v8, "date_time_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x57099b48

    if-eq v9, v10, :cond_14

    const v10, 0x333ea7e2

    if-eq v9, v10, :cond_13

    goto :goto_c

    :cond_13
    const-string/jumbo v9, "getAutomaticTime"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    move/from16 v17, v14

    goto :goto_c

    :cond_14
    const-string/jumbo v9, "isDateTimeChangeEnalbed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    move/from16 v17, v11

    :cond_15
    :goto_c
    packed-switch v17, :pswitch_data_4

    return-object v13

    :pswitch_10
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAutomaticTime"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_d

    :pswitch_11
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isDateTimeChangeEnalbed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_d
    nop

    return-object v7

    :pswitch_12
    const-string v8, "apppermission_control_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    if-eqz v3, :cond_18

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v14, :cond_16

    goto :goto_f

    :cond_16
    const-string/jumbo v9, "getPermissionBlockedList"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    aget-object v10, v3, v14

    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, Ljava/util/List;

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v12, v3, v11

    invoke-virtual {v8, v10, v12, v9}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPermissionBlockedList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "getPermissionBlockedList"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    if-eqz v10, :cond_17

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_17

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-array v15, v14, [Ljava/lang/String;

    aput-object v13, v15, v11

    invoke-virtual {v7, v15}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_e

    :cond_17
    return-object v7

    :cond_18
    :goto_f
    return-object v13

    :pswitch_13
    const-string/jumbo v8, "smartcard_browser_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_19

    const-string/jumbo v9, "isAuthenticationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isAuthenticationEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v7

    :cond_19
    if-eqz v2, :cond_d6

    const-string/jumbo v9, "getClientCertificateAlias"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d6

    if-eqz v3, :cond_1b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1a

    goto :goto_10

    :cond_1a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v11

    aget-object v12, v3, v14

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v9, v10, v12}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getClientCertificateAlias"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/String;

    aput-object v9, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v7

    :cond_1b
    :goto_10
    return-object v13

    :pswitch_14
    goto/16 :goto_8c

    :pswitch_15
    const-string/jumbo v8, "security_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x6e1bb3c9

    if-eq v9, v10, :cond_1d

    const v10, 0x741c2b00

    if-eq v9, v10, :cond_1c

    goto :goto_11

    :cond_1c
    const-string/jumbo v9, "getCredentialStorageStatus"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    move/from16 v17, v14

    goto :goto_11

    :cond_1d
    const-string/jumbo v9, "isDodBannerVisible"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    move/from16 v17, v11

    :cond_1e
    :goto_11
    packed-switch v17, :pswitch_data_5

    return-object v13

    :pswitch_16
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->getCredentialStorageStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v12, v14, [Ljava/lang/String;

    aput-object v2, v12, v11

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getCredentialStorageStatus = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :pswitch_17
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isDodBannerVisible"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_12
    return-object v7

    :pswitch_18
    const-string/jumbo v8, "roaming_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x3edf31d1

    if-eq v9, v10, :cond_22

    const v10, -0x15a386e9

    if-eq v9, v10, :cond_21

    const v10, -0xc145ad8

    if-eq v9, v10, :cond_20

    const v10, 0x4744a7b8

    if-eq v9, v10, :cond_1f

    goto :goto_13

    :cond_1f
    const-string/jumbo v9, "isRoamingPushEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    move v12, v14

    goto :goto_14

    :cond_20
    const-string/jumbo v9, "isRoamingDataEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    goto :goto_14

    :cond_21
    const-string/jumbo v9, "isRoamingSyncEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    move v12, v11

    goto :goto_14

    :cond_22
    const-string/jumbo v9, "isRoamingVoiceCallsEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    const/4 v12, 0x3

    goto :goto_14

    :cond_23
    :goto_13
    move/from16 v12, v17

    :goto_14
    packed-switch v12, :pswitch_data_6

    return-object v13

    :pswitch_19
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isRoamingVoiceCallsEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_1a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isRoamingDataEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_1b
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isRoamingPushEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_1c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isRoamingSyncEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_15
    nop

    return-object v7

    :pswitch_1d
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_1

    goto/16 :goto_16

    :sswitch_5
    const-string/jumbo v9, "isScreenCaptureEnabledInternal"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/16 v9, 0xd

    goto/16 :goto_17

    :sswitch_6
    const-string/jumbo v9, "isUsbHostStorageAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    move v9, v11

    goto/16 :goto_17

    :sswitch_7
    const-string/jumbo v9, "isUsbTetheringEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/4 v9, 0x3

    goto/16 :goto_17

    :sswitch_8
    const-string/jumbo v9, "isUsbMassStorageEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    move v9, v14

    goto/16 :goto_17

    :sswitch_9
    const-string/jumbo v9, "isWifiTetheringEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/16 v9, 0xa

    goto/16 :goto_17

    :sswitch_a
    const-string/jumbo v9, "getAllowedFOTAInfo"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    move v9, v10

    goto/16 :goto_17

    :sswitch_b
    const-string/jumbo v9, "isGearPolicyEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/16 v9, 0xf

    goto/16 :goto_17

    :sswitch_c
    const-string/jumbo v9, "isUseSecureKeypadEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    move/from16 v9, v16

    goto/16 :goto_17

    :sswitch_d
    const-string/jumbo v9, "isFotaVersionAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/16 v9, 0xe

    goto/16 :goto_17

    :sswitch_e
    const-string/jumbo v9, "isSDCardWriteAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/16 v9, 0xb

    goto :goto_17

    :sswitch_f
    const-string/jumbo v9, "isWifiDirectAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/16 v9, 0x9

    goto :goto_17

    :sswitch_10
    const-string/jumbo v10, "isUserMobileDataLimitAllowed"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    goto :goto_17

    :sswitch_11
    const-string/jumbo v9, "isVpnAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/4 v9, 0x7

    goto :goto_17

    :sswitch_12
    const-string/jumbo v9, "isWifiEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/16 v9, 0xc

    goto :goto_17

    :sswitch_13
    const-string/jumbo v9, "isVideoRecordAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/4 v9, 0x6

    goto :goto_17

    :sswitch_14
    const-string/jumbo v9, "isWallpaperChangeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    move v9, v15

    goto :goto_17

    :sswitch_15
    const-string/jumbo v9, "isUsbMediaPlayerAvailable"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    move v9, v12

    goto :goto_17

    :sswitch_16
    const-string/jumbo v9, "isPowerSavingModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/16 v9, 0x11

    goto :goto_17

    :cond_24
    :goto_16
    move/from16 v9, v17

    :goto_17
    packed-switch v9, :pswitch_data_7

    return-object v13

    :pswitch_1e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isPowerSavingModeAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    if-nez v9, :cond_32

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RESTRICTIONPOLICY_POWERSAVINGMODE_ALLOWED_METHOD cursor return "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :pswitch_1f
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getAllowedFOTAInfo"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    if-eqz v9, :cond_32

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_32

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_32

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-array v13, v14, [Ljava/lang/String;

    aput-object v12, v13, v11

    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_18

    :pswitch_20
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v12, v14, [Ljava/lang/String;

    aput-object v2, v12, v11

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_21
    const/4 v9, 0x1

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isFotaVersionAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_22
    const/4 v6, 0x0

    if-nez v3, :cond_25

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_26

    :cond_25
    aget-object v9, v3, v11

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_26
    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v12, v14, [Ljava/lang/String;

    aput-object v2, v12, v11

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_23
    const-string/jumbo v9, "wifi_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/wifi/WifiPolicy;

    const/4 v6, 0x0

    if-nez v3, :cond_27

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_28

    :cond_27
    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_28
    if-eqz v9, :cond_29

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v9, v10, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isWifiEnabled"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_29
    return-object v13

    :pswitch_24
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isSDCardWriteAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_25
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isWifiTetheringEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_26
    const/4 v9, 0x0

    if-eqz v3, :cond_2a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_2a

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_2a
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isWifiDirectAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_27
    const/4 v9, 0x0

    if-eqz v3, :cond_2b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_2b

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_2b
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isWallpaperChangeAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_28
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isVpnAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_29
    const/4 v9, 0x0

    if-eqz v3, :cond_2c

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_2c

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_2c
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isVideoRecordAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_2a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUseSecureKeypadEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_2b
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUserMobileDataLimitAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_2c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUsbTetheringEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_2d
    if-eqz v3, :cond_2e

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_2d

    goto :goto_19

    :cond_2d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUsbMediaPlayerAvailable"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1b

    :cond_2e
    :goto_19
    return-object v13

    :pswitch_2e
    if-eqz v3, :cond_30

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_2f

    goto :goto_1a

    :cond_2f
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMassStorageEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUsbMassStorageEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1b

    :cond_30
    :goto_1a
    return-object v13

    :pswitch_2f
    const/4 v9, 0x0

    if-eqz v3, :cond_31

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_31

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_31
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isUsbHostStorageAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :cond_32
    :goto_1b
    return-object v7

    :pswitch_30
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_2

    goto/16 :goto_1c

    :sswitch_17
    const-string/jumbo v9, "isSVoiceAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    move v9, v10

    goto/16 :goto_1d

    :sswitch_18
    const-string/jumbo v9, "isScreenCaptureEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    move v9, v15

    goto/16 :goto_1d

    :sswitch_19
    const-string/jumbo v9, "isSettingsChangesAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    move v9, v11

    goto/16 :goto_1d

    :sswitch_1a
    const-string/jumbo v9, "isStatusBarExpansionallowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/16 v9, 0xe

    goto/16 :goto_1d

    :sswitch_1b
    const-string/jumbo v9, "isSDCardMoveAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/16 v9, 0xa

    goto/16 :goto_1d

    :sswitch_1c
    const-string/jumbo v9, "isUsbDebuggingEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/16 v9, 0x11

    goto/16 :goto_1d

    :sswitch_1d
    const-string/jumbo v9, "isIrisCameraEnabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/16 v9, 0xc

    goto/16 :goto_1d

    :sswitch_1e
    const-string/jumbo v9, "isSafeModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/4 v9, 0x6

    goto/16 :goto_1d

    :sswitch_1f
    const-string/jumbo v9, "isOdeTrustedBootVerificationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/4 v9, 0x3

    goto/16 :goto_1d

    :sswitch_20
    const-string/jumbo v9, "isSmartClipModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/16 v9, 0xd

    goto :goto_1d

    :sswitch_21
    const-string/jumbo v9, "isSettingsChangesAllowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    move v9, v14

    goto :goto_1d

    :sswitch_22
    const-string/jumbo v9, "isSdCardEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/16 v9, 0x9

    goto :goto_1d

    :sswitch_23
    const-string/jumbo v10, "isOTAUpgradeAllowed"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    goto :goto_1d

    :sswitch_24
    const-string/jumbo v9, "isStopSystemAppAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/16 v9, 0xf

    goto :goto_1d

    :sswitch_25
    const-string/jumbo v9, "isPowerOffAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    move/from16 v9, v16

    goto :goto_1d

    :sswitch_26
    const-string/jumbo v9, "isScreenPinningAllowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/16 v9, 0xb

    goto :goto_1d

    :sswitch_27
    const-string/jumbo v9, "isSBeamAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/4 v9, 0x7

    goto :goto_1d

    :sswitch_28
    const-string/jumbo v9, "isShareListAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    move v9, v12

    goto :goto_1d

    :cond_33
    :goto_1c
    move/from16 v9, v17

    :goto_1d
    packed-switch v9, :pswitch_data_8

    return-object v13

    :pswitch_31
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isUsbDebuggingEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_32
    const/4 v9, 0x0

    move v10, v4

    if-eqz v3, :cond_34

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ne v13, v14, :cond_34

    aget-object v12, v3, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_1e

    :cond_34
    if-eqz v3, :cond_35

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ne v13, v12, :cond_35

    aget-object v12, v3, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    aget-object v12, v3, v14

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_35
    :goto_1e
    new-instance v12, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v12, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v12, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v12

    const-string v13, "SecContentProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isSVoiceAllowed result = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " uid = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isSVoiceAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v11, v14

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    move v9, v12

    goto/16 :goto_26

    :pswitch_33
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isStopSystemAppAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_34
    const/4 v9, 0x0

    if-eqz v3, :cond_36

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_36

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_36
    invoke-virtual {v8, v9, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isStatusBarExpansionallowedAsUser"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_22

    :pswitch_35
    const/4 v9, 0x0

    if-eqz v3, :cond_37

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_37

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_37
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isSmartClipModeAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_22

    :pswitch_36
    if-eqz v3, :cond_39

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_38

    goto :goto_1f

    :cond_38
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isIrisCameraEnabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :cond_39
    :goto_1f
    return-object v13

    :pswitch_37
    const/4 v9, 0x0

    move v10, v5

    if-eqz v3, :cond_3a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_3a

    const/4 v11, 0x0

    aget-object v13, v3, v11

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_3a
    if-eqz v3, :cond_3b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v11

    if-ne v11, v12, :cond_3b

    aget-object v11, v3, v14

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_3b
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenPinningAllowedAsUser(ZI)Z

    move-result v11

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isScreenPinningAllowedAsUser"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    move v9, v11

    goto/16 :goto_26

    :pswitch_38
    if-eqz v3, :cond_3d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_3c

    goto :goto_20

    :cond_3c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isSDCardMoveAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :cond_3d
    :goto_20
    return-object v13

    :pswitch_39
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isSdCardEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_3a
    if-eqz v3, :cond_3f

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_3e

    goto :goto_21

    :cond_3e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isScreenCaptureEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :cond_3f
    :goto_21
    return-object v13

    :pswitch_3b
    const/4 v9, 0x0

    if-eqz v3, :cond_40

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_40

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_40
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isSBeamAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_22

    :pswitch_3c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isSafeModeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_3d
    const/4 v9, 0x0

    if-eqz v3, :cond_41

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_41

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_41
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isPowerOffAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_22
    move v9, v10

    goto/16 :goto_26

    :pswitch_3e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isOTAUpgradeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v7

    :pswitch_3f
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isOdeTrustedBootVerificationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_40
    move v12, v11

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v14, :cond_42

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    goto :goto_23

    :cond_42
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    :goto_23
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isShareListAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_41
    if-eqz v3, :cond_44

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_43

    goto :goto_24

    :cond_43
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RESTRICTIONPOLICY_SETTINGSCHANGESASUSER_METHOD return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isSettingsChangesAllowedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_26

    :cond_44
    :goto_24
    return-object v13

    :pswitch_42
    if-eqz v3, :cond_47

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_45

    goto :goto_27

    :cond_45
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_46

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    goto :goto_25

    :cond_46
    const/4 v10, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    :goto_25
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isSettingsChangesAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_26
    nop

    return-object v7

    :cond_47
    :goto_27
    return-object v13

    :pswitch_43
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_3

    goto/16 :goto_28

    :sswitch_29
    const-string/jumbo v9, "isKillingActivitiesOnLeaveAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    const/4 v9, 0x6

    goto/16 :goto_29

    :sswitch_2a
    const-string/jumbo v9, "isGoogleAccountsAutoSyncAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    move v9, v12

    goto/16 :goto_29

    :sswitch_2b
    const-string/jumbo v9, "isNFCEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    const/16 v9, 0xd

    goto/16 :goto_29

    :sswitch_2c
    const-string/jumbo v9, "isMockLocationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    const/16 v9, 0xb

    goto/16 :goto_29

    :sswitch_2d
    const-string/jumbo v10, "isHeadPhoneEnabled"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_48

    goto/16 :goto_29

    :sswitch_2e
    const-string/jumbo v9, "isHomeKeyEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    move/from16 v9, v16

    goto/16 :goto_29

    :sswitch_2f
    const-string/jumbo v9, "isNonMarketAppAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    const/16 v9, 0xf

    goto/16 :goto_29

    :sswitch_30
    const-string/jumbo v9, "isFirmwareRecoveryAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    move v9, v14

    goto/16 :goto_29

    :sswitch_31
    const-string/jumbo v9, "isLockScreenViewAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    move v9, v15

    goto :goto_29

    :sswitch_32
    const-string/jumbo v9, "isFirmwareAutoUpdateAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    const/4 v9, 0x0

    goto :goto_29

    :sswitch_33
    const-string/jumbo v9, "isNewAdminInstallationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    const/16 v9, 0xc

    goto :goto_29

    :sswitch_34
    const-string/jumbo v9, "isLockScreenEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    const/4 v9, 0x7

    goto :goto_29

    :sswitch_35
    const-string/jumbo v9, "isMicrophoneEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    const/16 v9, 0x9

    goto :goto_29

    :sswitch_36
    const-string/jumbo v9, "isMicrophoneEnabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    const/16 v9, 0xa

    goto :goto_29

    :sswitch_37
    const-string/jumbo v9, "isGoogleCrashReportedAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    const/4 v9, 0x3

    goto :goto_29

    :sswitch_38
    const-string/jumbo v9, "isNonTrustedAppInstallBlocked"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    move v9, v10

    goto/16 :goto_29

    :sswitch_39
    const-string/jumbo v9, "isNFCEnabledWithMsg"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    const/16 v9, 0xe

    goto/16 :goto_29

    :cond_48
    :goto_28
    move/from16 v9, v17

    :goto_29
    packed-switch v9, :pswitch_data_9

    const-string v9, "SecContentProvider"

    const-string/jumbo v10, "return null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_44
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNonTrustedAppInstallBlocked"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :pswitch_45
    const/4 v12, 0x0

    if-eqz v3, :cond_49

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    goto/16 :goto_2a

    :cond_49
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    :goto_2a
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNonMarketAppAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :pswitch_46
    if-eqz v3, :cond_4b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_4a

    goto/16 :goto_2b

    :cond_4a
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_2c

    :cond_4b
    :goto_2b
    const/4 v6, 0x0

    :goto_2c
    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNFCEnabledWithMsg"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :pswitch_47
    invoke-virtual {v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNFCEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :pswitch_48
    if-eqz v3, :cond_4d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_4c

    goto :goto_2d

    :cond_4c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isNewAdminInstallationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :cond_4d
    :goto_2d
    return-object v13

    :pswitch_49
    if-nez v3, :cond_4e

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "callingUid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_4e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v9, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    const-string v11, "SecContentProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "callingUid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v3, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isMockLocationEnabled return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isMockLocationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :pswitch_4a
    if-eqz v3, :cond_50

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_4f

    goto :goto_2f

    :cond_4f
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isMicrophoneEnabledAsUser return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isMicrophoneEnabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :cond_50
    :goto_2f
    return-object v13

    :pswitch_4b
    if-eqz v3, :cond_53

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_51

    goto :goto_31

    :cond_51
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_52

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    goto/16 :goto_30

    :cond_52
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    :goto_30
    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isMicrophoneEnabled return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isMicrophoneEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :cond_53
    :goto_31
    return-object v13

    :pswitch_4c
    if-eqz v3, :cond_56

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_54

    goto :goto_33

    :cond_54
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_55

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v9

    goto/16 :goto_32

    :cond_55
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v9

    :goto_32
    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isLockScreenViewAllowed return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isLockScreenViewAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :cond_56
    :goto_33
    return-object v13

    :pswitch_4d
    if-eqz v3, :cond_58

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_57

    goto :goto_34

    :cond_57
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isLockScreenEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :cond_58
    :goto_34
    return-object v13

    :pswitch_4e
    if-nez v3, :cond_59

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " callingUid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_59
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " userid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v13, v3, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isKillingActivitiesOnLeaveAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :pswitch_4f
    const/4 v9, 0x0

    if-eqz v3, :cond_5a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_5a

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_5a
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isHomeKeyEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    move v9, v10

    goto/16 :goto_38

    :pswitch_50
    if-eqz v3, :cond_5c

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_5b

    goto :goto_36

    :cond_5b
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isHeadPhoneEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :cond_5c
    :goto_36
    return-object v13

    :pswitch_51
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isGoogleCrashReportedAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_38

    :pswitch_52
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isGoogleAccountsAutoSyncAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_38

    :pswitch_53
    if-eqz v3, :cond_5e

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_5d

    goto/16 :goto_37

    :cond_5d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isFirmwareRecoveryAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_38

    :cond_5e
    :goto_37
    return-object v13

    :pswitch_54
    if-eqz v3, :cond_60

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_5f

    goto/16 :goto_39

    :cond_5f
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isFirmwareAutoUpdateAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_38
    nop

    return-object v7

    :cond_60
    :goto_39
    return-object v13

    :pswitch_55
    const-string/jumbo v8, "restriction_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_4

    goto/16 :goto_3a

    :sswitch_3a
    const-string v9, "checkPackageSource"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/4 v9, 0x0

    goto/16 :goto_3b

    :sswitch_3b
    const-string/jumbo v9, "isAirplaneModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    move v9, v12

    goto/16 :goto_3b

    :sswitch_3c
    const-string/jumbo v9, "isClipboardShareAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/16 v9, 0xe

    goto/16 :goto_3b

    :sswitch_3d
    const-string/jumbo v9, "isFastEncryptionAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/16 v9, 0x11

    goto/16 :goto_3b

    :sswitch_3e
    const-string/jumbo v9, "isFactoryResetAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    move v9, v10

    goto/16 :goto_3b

    :sswitch_3f
    const-string/jumbo v9, "isActivationLockAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    move v9, v14

    goto/16 :goto_3b

    :sswitch_40
    const-string/jumbo v9, "isAndroidBeamAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/4 v9, 0x3

    goto/16 :goto_3b

    :sswitch_41
    const-string/jumbo v9, "isDeveloperModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/16 v9, 0xf

    goto/16 :goto_3b

    :sswitch_42
    const-string/jumbo v9, "isClipboardShareAllowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/16 v9, 0xd

    goto/16 :goto_3b

    :sswitch_43
    const-string/jumbo v9, "isBackgroundProcessLimitEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/4 v9, 0x6

    goto/16 :goto_3b

    :sswitch_44
    const-string/jumbo v9, "isCameraEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/16 v9, 0x9

    goto :goto_3b

    :sswitch_45
    const-string/jumbo v9, "isBackgroundDataEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    move/from16 v9, v16

    goto :goto_3b

    :sswitch_46
    const-string/jumbo v9, "isBackupAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/4 v9, 0x7

    goto :goto_3b

    :sswitch_47
    const-string/jumbo v10, "isAudioRecordAllowed"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_61

    goto/16 :goto_3b

    :sswitch_48
    const-string/jumbo v9, "isCellularDataAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/16 v9, 0xa

    goto/16 :goto_3b

    :sswitch_49
    const-string/jumbo v9, "isClipboardAllowedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/16 v9, 0xc

    goto/16 :goto_3b

    :sswitch_4a
    const-string/jumbo v9, "isClipboardAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/16 v9, 0xb

    goto/16 :goto_3b

    :sswitch_4b
    const-string/jumbo v9, "isBluetoothTetheringEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    move v9, v15

    goto/16 :goto_3b

    :sswitch_4c
    const-string/jumbo v9, "isDataSavingAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/16 v9, 0x12

    goto/16 :goto_3b

    :cond_61
    :goto_3a
    move/from16 v9, v17

    :goto_3b
    packed-switch v9, :pswitch_data_a

    return-object v13

    :pswitch_56
    invoke-virtual {v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isDataSavingAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :pswitch_57
    if-eqz v3, :cond_62

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_62

    return-object v13

    :cond_62
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isFastEncryptionAllowed return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isFastEncryptionAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :pswitch_58
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isFactoryResetAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :pswitch_59
    const/4 v9, 0x0

    if-eqz v3, :cond_63

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_63

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_63
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isDeveloperModeAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v7

    :pswitch_5a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isClipboardShareAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :pswitch_5b
    if-eqz v3, :cond_65

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_64

    goto/16 :goto_3c

    :cond_64
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isClipboardShareAllowedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :cond_65
    :goto_3c
    return-object v13

    :pswitch_5c
    if-eqz v3, :cond_67

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_66

    goto/16 :goto_3d

    :cond_66
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RESTRICTIONPOLICY_CLIPBOARDALLOWEDASUSER_METHOD return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isClipboardAllowedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :cond_67
    :goto_3d
    return-object v13

    :pswitch_5d
    if-eqz v3, :cond_69

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_68

    goto/16 :goto_3e

    :cond_68
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    goto/16 :goto_3f

    :cond_69
    :goto_3e
    const/4 v10, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    :goto_3f
    nop

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isClipboardAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :pswitch_5e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCellularDataAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :pswitch_5f
    if-eqz v3, :cond_6b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_6a

    goto/16 :goto_40

    :cond_6a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCameraEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :cond_6b
    :goto_40
    return-object v13

    :pswitch_60
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBluetoothTetheringEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :pswitch_61
    if-eqz v3, :cond_6d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_6c

    goto/16 :goto_41

    :cond_6c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBackupAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :cond_6d
    :goto_41
    return-object v13

    :pswitch_62
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBackgroundProcessLimitEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :pswitch_63
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBackgroundDataEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :pswitch_64
    const/4 v9, 0x0

    if-eqz v3, :cond_6e

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_6e

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_6e
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isAudioRecordAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_42

    :pswitch_65
    const/4 v9, 0x0

    if-eqz v3, :cond_6f

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_6f

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_6f
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isAndroidBeamAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_42

    :pswitch_66
    const/4 v9, 0x0

    if-eqz v3, :cond_70

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_70

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_70
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v10

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isAirplaneModeAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_42
    move v9, v10

    goto/16 :goto_44

    :pswitch_67
    if-eqz v3, :cond_72

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_71

    goto/16 :goto_43

    :cond_71
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isActivationLockAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isActivationLockAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_44

    :cond_72
    :goto_43
    return-object v13

    :pswitch_68
    if-eqz v3, :cond_74

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_73

    goto/16 :goto_45

    :cond_73
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-virtual {v8, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v11, "checkPackageSource"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_44
    nop

    return-object v7

    :cond_74
    :goto_45
    return-object v13

    :pswitch_69
    const-string/jumbo v8, "password_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_5

    goto/16 :goto_46

    :sswitch_4d
    const-string/jumbo v9, "isBiometricAuthenticationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    const/4 v9, 0x0

    goto/16 :goto_47

    :sswitch_4e
    const-string/jumbo v9, "isPasswordVisibilityEnabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    const/4 v9, 0x6

    goto/16 :goto_47

    :sswitch_4f
    const-string/jumbo v10, "isPasswordPatternMatched"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    goto/16 :goto_47

    :sswitch_50
    const-string/jumbo v9, "isBiometricAuthenticationEnabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    move v9, v14

    goto/16 :goto_47

    :sswitch_51
    const-string/jumbo v9, "isChangeRequested"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    move v9, v12

    goto/16 :goto_47

    :sswitch_52
    const-string/jumbo v9, "getCurrentFailedPasswordAttempts"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    const/16 v9, 0xa

    goto/16 :goto_47

    :sswitch_53
    const-string/jumbo v9, "getPasswordLockDelay"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    const/4 v9, 0x7

    goto/16 :goto_47

    :sswitch_54
    const-string/jumbo v9, "getMaximumFailedPasswordsForWipe"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    const/16 v9, 0x9

    goto/16 :goto_47

    :sswitch_55
    const-string/jumbo v9, "isPasswordVisibilityEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    move/from16 v9, v16

    goto/16 :goto_47

    :sswitch_56
    const-string/jumbo v9, "isExternalStorageForFailedPasswordsWipeExcluded"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    const/4 v9, 0x3

    goto/16 :goto_47

    :sswitch_57
    const-string/jumbo v9, "getMaximumFailedPasswordsForDisable"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    move v9, v15

    goto/16 :goto_47

    :cond_75
    :goto_46
    move/from16 v9, v17

    :goto_47
    packed-switch v9, :pswitch_data_b

    return-object v13

    :pswitch_6a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentFailedPasswordAttemptsInternal(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    new-array v11, v14, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    :pswitch_6b
    if-eqz v3, :cond_79

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_76

    goto/16 :goto_4a

    :cond_76
    const/4 v9, 0x0

    aget-object v10, v3, v9

    if-nez v10, :cond_77

    const/4 v10, 0x0

    goto/16 :goto_48

    :cond_77
    aget-object v10, v3, v9

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    :goto_48
    move-object v9, v10

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-ne v10, v12, :cond_78

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD user id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v13, v3, v12

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    aget-object v11, v3, v14

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v10

    goto/16 :goto_49

    :cond_78
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v10

    :goto_49
    const-string v11, "SecContentProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD return = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getMaximumFailedPasswordsForWipe"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    :cond_79
    :goto_4a
    return-object v13

    :pswitch_6c
    if-eqz v3, :cond_7a

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v12, v3, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    goto/16 :goto_4b

    :cond_7a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    :goto_4b
    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaximumFailedPasswordsForDisable"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    :pswitch_6d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getPasswordLockDelay"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    :pswitch_6e
    if-eqz v3, :cond_7c

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_7b

    goto/16 :goto_4c

    :cond_7b
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isPasswordVisibilityEnabledAsUser return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isPasswordVisibilityEnabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    :cond_7c
    :goto_4c
    return-object v13

    :pswitch_6f
    if-nez v3, :cond_7d

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    :cond_7d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v13, v3, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isPasswordVisibilityEnabled return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isPasswordVisibilityEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    :pswitch_70
    if-eqz v3, :cond_7f

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_7e

    goto/16 :goto_4e

    :cond_7e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordPatternMatched(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isPasswordPatternMatched"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    :cond_7f
    :goto_4e
    return-object v13

    :pswitch_71
    if-eqz v3, :cond_80

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v12, v3, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    goto/16 :goto_4f

    :cond_80
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    :goto_4f
    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD return = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isExternalStorageForFailedPasswordsWipeExcluded"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    :pswitch_72
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isChangeRequested"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    :pswitch_73
    if-eqz v3, :cond_82

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v14, :cond_81

    goto/16 :goto_50

    :cond_81
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBiometricAuthenticationEnabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    :cond_82
    :goto_50
    return-object v13

    :pswitch_74
    if-eqz v3, :cond_84

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_83

    goto/16 :goto_52

    :cond_83
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isBiometricAuthenticationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_51
    return-object v7

    :cond_84
    :goto_52
    return-object v13

    :pswitch_75
    const-string/jumbo v8, "password_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_6

    goto/16 :goto_53

    :sswitch_58
    const-string/jumbo v9, "hasMaxRepeatedCharacters"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    const/16 v9, 0xb

    goto/16 :goto_54

    :sswitch_59
    const-string/jumbo v9, "hasForbiddenNumericSequence"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    const/16 v9, 0x9

    goto/16 :goto_54

    :sswitch_5a
    const-string/jumbo v9, "hasForbiddenCharacterSequence"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    const/4 v9, 0x7

    goto/16 :goto_54

    :sswitch_5b
    const-string/jumbo v9, "hasForbiddenData"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    move v9, v15

    goto/16 :goto_54

    :sswitch_5c
    const-string/jumbo v9, "getPasswordChangeTimeout"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    move/from16 v9, v16

    goto/16 :goto_54

    :sswitch_5d
    const-string/jumbo v9, "getForbiddenStrings"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    const/4 v9, 0x0

    goto/16 :goto_54

    :sswitch_5e
    const-string/jumbo v9, "getRequiredPwdPatternRestrictions"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    const/4 v9, 0x6

    goto/16 :goto_54

    :sswitch_5f
    const-string/jumbo v9, "getMaximumCharacterOccurences"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    move v9, v14

    goto/16 :goto_54

    :sswitch_60
    const-string/jumbo v9, "hasForbiddenStringDistance"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    const/16 v9, 0xa

    goto/16 :goto_54

    :sswitch_61
    const-string/jumbo v9, "getMaximumNumericSequenceLength"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    const/4 v9, 0x3

    goto/16 :goto_54

    :sswitch_62
    const-string/jumbo v9, "getMaximumCharacterSequenceLength"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    move v9, v12

    goto/16 :goto_54

    :sswitch_63
    const-string/jumbo v10, "getMinimumCharacterChangeLength"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_85

    goto/16 :goto_54

    :cond_85
    :goto_53
    move/from16 v9, v17

    :goto_54
    packed-switch v9, :pswitch_data_c

    return-object v13

    :pswitch_76
    if-eqz v3, :cond_87

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_86

    goto/16 :goto_55

    :cond_86
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "hasMaxRepeatedCharacters"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :cond_87
    :goto_55
    return-object v13

    :pswitch_77
    if-eqz v3, :cond_89

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v14, :cond_88

    goto/16 :goto_56

    :cond_88
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    aget-object v10, v3, v14

    invoke-virtual {v8, v9, v11, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "hasForbiddenStringDistance"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :cond_89
    :goto_56
    return-object v13

    :pswitch_78
    if-eqz v3, :cond_8b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_8a

    goto/16 :goto_57

    :cond_8a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "hasForbiddenNumericSequence"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :cond_8b
    :goto_57
    return-object v13

    :pswitch_79
    if-eqz v3, :cond_8d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_8c

    goto/16 :goto_58

    :cond_8c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "hasForbiddenData"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :cond_8d
    :goto_58
    return-object v13

    :pswitch_7a
    if-eqz v3, :cond_8f

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_8e

    goto/16 :goto_59

    :cond_8e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "hasForbiddenCharacterSequence"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :cond_8f
    :goto_59
    return-object v13

    :pswitch_7b
    if-eqz v3, :cond_91

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_90

    goto/16 :goto_5a

    :cond_90
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getRequiredPwdPatternRestrictions"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :cond_91
    :goto_5a
    return-object v13

    :pswitch_7c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getPasswordChangeTimeout"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :pswitch_7d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMinimumCharacterChangeLength"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :pswitch_7e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaximumNumericSequenceLength"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :pswitch_7f
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaximumCharacterSequenceLength"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :pswitch_80
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getMaximumCharacterOccurences"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :pswitch_81
    if-eqz v3, :cond_94

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_92

    goto/16 :goto_5d

    :cond_92
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getForbiddenStrings"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    if-eqz v9, :cond_93

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_93

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_93

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-array v12, v14, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5b

    :cond_93
    :goto_5c
    return-object v7

    :cond_94
    :goto_5d
    return-object v13

    :pswitch_82
    const-string/jumbo v8, "location_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/location/LocationPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x66608807

    if-eq v9, v10, :cond_97

    const v10, -0x40efadf9

    if-eq v9, v10, :cond_96

    const v10, 0x63cbc5bc

    if-eq v9, v10, :cond_95

    goto/16 :goto_5e

    :cond_95
    const-string/jumbo v9, "isLocationProviderBlocked"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    const/16 v17, 0x0

    goto/16 :goto_5e

    :cond_96
    const-string/jumbo v9, "isGPSStateChangeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    move/from16 v17, v12

    goto/16 :goto_5e

    :cond_97
    const-string/jumbo v9, "isLocationProviderBlockedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    move/from16 v17, v14

    :cond_98
    :goto_5e
    packed-switch v17, :pswitch_data_d

    return-object v13

    :pswitch_83
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isGPSStateChangeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    :pswitch_84
    if-eqz v3, :cond_9c

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v14, :cond_99

    goto/16 :goto_60

    :cond_99
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_9b

    aget-object v9, v3, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_9a

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    const-string v10, "SecContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isLocationProviderBlockedAsUser using userId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " instead of UserHandle.USER_CURRENT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v11, v9}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v9

    goto/16 :goto_5f

    :cond_9b
    const/4 v10, 0x0

    aget-object v9, v3, v10

    invoke-virtual {v8, v9, v5}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v9

    :goto_5f
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isLocationProviderBlockedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    :cond_9c
    :goto_60
    return-object v13

    :pswitch_85
    if-eqz v3, :cond_9e

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_9d

    goto/16 :goto_62

    :cond_9d
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isLocationProviderBlocked"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_61
    nop

    return-object v7

    :cond_9e
    :goto_62
    return-object v13

    :pswitch_86
    goto/16 :goto_8c

    :pswitch_87
    const-string v8, "browser_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/browser/BrowserPolicy;

    const-string/jumbo v10, "misc_policy"

    invoke-static {v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    if-eqz v10, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_7

    goto/16 :goto_63

    :sswitch_64
    const-string/jumbo v9, "getURLFilterReportEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9f

    move v9, v12

    goto/16 :goto_64

    :sswitch_65
    const-string/jumbo v9, "isUrlBlocked"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9f

    const/4 v9, 0x3

    goto/16 :goto_64

    :sswitch_66
    const-string/jumbo v9, "getURLFilterEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9f

    const/4 v9, 0x0

    goto/16 :goto_64

    :sswitch_67
    const-string/jumbo v11, "isGlobalProxyAllowed"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9f

    goto/16 :goto_64

    :sswitch_68
    const-string/jumbo v9, "getURLFilterList"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9f

    move v9, v14

    goto/16 :goto_64

    :cond_9f
    :goto_63
    move/from16 v9, v17

    :goto_64
    packed-switch v9, :pswitch_data_e

    return-object v13

    :pswitch_88
    invoke-virtual {v10}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "isGlobalProxyAllowed"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_67

    :pswitch_89
    if-eqz v3, :cond_a1

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_a0

    goto/16 :goto_65

    :cond_a0
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v12, v3, v11

    invoke-virtual {v8, v9, v12}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "isUrlBlocked"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    aput-object v9, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_67

    :cond_a1
    :goto_65
    return-object v13

    :pswitch_8a
    const/4 v11, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v14, v11}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-instance v12, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v13, "getURLFilterReportEnabled"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v12

    new-array v12, v14, [Ljava/lang/Boolean;

    aput-object v9, v12, v11

    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_67

    :pswitch_8b
    const/4 v11, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v14, v11}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v9

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getURLFilterList"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    if-eqz v9, :cond_a2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a2

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_66
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-array v13, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v12, v13, v15

    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_66

    :pswitch_8c
    const/4 v15, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v14, v15}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v9

    new-instance v11, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v12, "getURLFilterEnabled"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    new-array v11, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v15

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :cond_a2
    :goto_67
    return-object v7

    :pswitch_8d
    goto/16 :goto_8c

    :pswitch_8e
    goto/16 :goto_8c

    :pswitch_8f
    goto/16 :goto_8c

    :pswitch_90
    const-string v8, "certificate_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v8, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_8

    goto/16 :goto_68

    :sswitch_69
    const-string/jumbo v9, "isRevocationCheckEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    const/4 v9, 0x6

    goto/16 :goto_69

    :sswitch_6a
    const-string/jumbo v9, "validateChainAtInstall"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    const/16 v9, 0xa

    goto/16 :goto_69

    :sswitch_6b
    const-string/jumbo v9, "notifyCertificateFailure"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    move/from16 v9, v16

    goto/16 :goto_69

    :sswitch_6c
    const-string/jumbo v9, "isSignatureIdentityInformationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    const/4 v9, 0x3

    goto/16 :goto_69

    :sswitch_6d
    const-string/jumbo v9, "isCaCertificateDisabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    move v9, v14

    goto/16 :goto_69

    :sswitch_6e
    const-string/jumbo v10, "getIdentitiesFromSignatures"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a3

    goto/16 :goto_69

    :sswitch_6f
    const-string/jumbo v9, "isCaCertificateTrustedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    const/4 v9, 0x0

    goto/16 :goto_69

    :sswitch_70
    const-string/jumbo v9, "isUserRemoveCertificatesAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    move v9, v12

    goto/16 :goto_69

    :sswitch_71
    const-string/jumbo v9, "isOcspCheckEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    const/4 v9, 0x7

    goto/16 :goto_69

    :sswitch_72
    const-string/jumbo v9, "validateCertificateAtInstall"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    const/16 v9, 0x9

    goto/16 :goto_69

    :sswitch_73
    const-string/jumbo v9, "isCertificateValidationAtInstallEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    move v9, v15

    goto/16 :goto_69

    :cond_a3
    :goto_68
    move/from16 v9, v17

    :goto_69
    packed-switch v9, :pswitch_data_f

    goto/16 :goto_75

    :pswitch_91
    if-eqz v3, :cond_a5

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_a4

    goto/16 :goto_6a

    :cond_a4
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "validateChainAtInstall"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_75

    :cond_a5
    :goto_6a
    return-object v13

    :pswitch_92
    if-eqz v3, :cond_a7

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_a6

    goto/16 :goto_6b

    :cond_a6
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstall(Lcom/samsung/android/knox/keystore/CertificateInfo;)I

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "validateCertificateAtInstall"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_75

    :cond_a7
    :goto_6b
    return-object v13

    :pswitch_93
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCertificateValidationAtInstallEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_75

    :pswitch_94
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isOcspCheckEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_75

    :pswitch_95
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isRevocationCheckEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_75

    :pswitch_96
    if-eqz v3, :cond_a9

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v12, :cond_a8

    goto/16 :goto_6c

    :cond_a8
    const/4 v9, 0x0

    aget-object v9, v3, v9

    aget-object v10, v3, v14

    aget-object v11, v3, v12

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    goto/16 :goto_75

    :cond_a9
    :goto_6c
    return-object v13

    :pswitch_97
    if-eqz v3, :cond_ac

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_aa

    goto/16 :goto_6f

    :cond_aa
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/content/pm/Signature;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "getIdentitiesFromSignatures"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    if-eqz v9, :cond_b7

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b7

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_6e
    if-ge v13, v12, :cond_ab

    aget-object v15, v11, v13

    new-array v1, v14, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v1, v16

    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_6e

    :cond_ab
    nop

    move-object/from16 v1, p1

    goto :goto_6d

    :cond_ac
    :goto_6f
    return-object v13

    :pswitch_98
    if-eqz v3, :cond_ae

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_ad

    goto/16 :goto_70

    :cond_ad
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isSignatureIdentityInformationEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_75

    :cond_ae
    :goto_70
    return-object v13

    :pswitch_99
    if-eqz v3, :cond_af

    array-length v1, v3

    if-ne v1, v14, :cond_af

    move v1, v14

    goto/16 :goto_71

    :cond_af
    const/4 v1, 0x0

    :goto_71
    if-eqz v1, :cond_b0

    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    nop

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v9

    goto/16 :goto_72

    :cond_b0
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    :goto_72
    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isUserRemoveCertificatesAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_75

    :pswitch_9a
    if-eqz v3, :cond_b3

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_b1

    goto/16 :goto_73

    :cond_b1
    move v1, v5

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-le v9, v14, :cond_b2

    aget-object v9, v3, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_b2
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-virtual {v8, v10, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCaCertificateDisabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_75

    :cond_b3
    :goto_73
    return-object v13

    :pswitch_9b
    if-eqz v3, :cond_b6

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gt v1, v14, :cond_b4

    goto/16 :goto_74

    :cond_b4
    move v1, v5

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-le v9, v12, :cond_b5

    aget-object v9, v3, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_b5
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/keystore/CertificateInfo;

    aget-object v10, v3, v14

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZI)Z

    move-result v9

    new-instance v10, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v11, "isCaCertificateTrustedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    new-array v10, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_75

    :cond_b6
    :goto_74
    return-object v13

    :cond_b7
    :goto_75
    return-object v7

    :pswitch_9c
    const-string v1, "browser_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v1, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_9

    goto/16 :goto_76

    :sswitch_74
    const-string/jumbo v8, "getCookiesSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    move/from16 v16, v12

    goto/16 :goto_77

    :sswitch_75
    const-string/jumbo v8, "getHttpProxy"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    const/16 v16, 0x0

    goto/16 :goto_77

    :sswitch_76
    const-string/jumbo v8, "getJavaScriptSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    const/16 v16, 0x3

    goto/16 :goto_77

    :sswitch_77
    const-string/jumbo v8, "getAutoFillSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    move/from16 v16, v14

    goto/16 :goto_77

    :sswitch_78
    const-string/jumbo v8, "getPopupsSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    move/from16 v16, v9

    goto/16 :goto_77

    :sswitch_79
    const-string/jumbo v8, "getForceFraudWarningSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    goto/16 :goto_77

    :cond_b8
    :goto_76
    move/from16 v16, v17

    :goto_77
    packed-switch v16, :pswitch_data_10

    return-object v13

    :pswitch_9d
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8, v15}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getForceFraudWarningSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_78

    :pswitch_9e
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8, v14}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getPopupsSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_78

    :pswitch_9f
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8, v10}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getJavaScriptSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_78

    :pswitch_a0
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8, v12}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getCookiesSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_78

    :pswitch_a1
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8, v9}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getAutoFillSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_78

    :pswitch_a2
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "getHttpProxy"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_78
    return-object v7

    :pswitch_a3
    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_a

    goto/16 :goto_79

    :sswitch_7a
    const-string v1, "bluetoothLogForRemote"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    move v9, v15

    goto/16 :goto_7a

    :sswitch_7b
    const-string v1, "bluetoothLogForDevice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const/16 v9, 0x9

    goto/16 :goto_7a

    :sswitch_7c
    const-string/jumbo v1, "isSocketAllowedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    goto/16 :goto_7a

    :sswitch_7d
    const-string/jumbo v1, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const/4 v9, 0x6

    goto/16 :goto_7a

    :sswitch_7e
    const-string v1, "bluetoothSocketLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    move/from16 v9, v16

    goto/16 :goto_7a

    :sswitch_7f
    const-string/jumbo v1, "isPairingAllowedbySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    move v9, v12

    goto/16 :goto_7a

    :sswitch_80
    const-string/jumbo v1, "isHeadsetAllowedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const/4 v9, 0x3

    goto/16 :goto_7a

    :sswitch_81
    const-string/jumbo v1, "isBluetoothLogEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    move v9, v14

    goto/16 :goto_7a

    :sswitch_82
    const-string v1, "bluetoothLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const/4 v9, 0x7

    goto/16 :goto_7a

    :sswitch_83
    const-string/jumbo v1, "isProfileAuthorizedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const/4 v9, 0x0

    goto/16 :goto_7a

    :cond_b9
    :goto_79
    move/from16 v9, v17

    :goto_7a
    packed-switch v9, :pswitch_data_11

    goto/16 :goto_84

    :pswitch_a4
    if-eqz v3, :cond_bc

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    if-lt v1, v8, :cond_bc

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-nez v1, :cond_ba

    goto/16 :goto_7b

    :cond_ba
    aget-object v1, v3, v12

    if-nez v1, :cond_bb

    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v1, v8, v13}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_84

    :cond_bb
    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    aget-object v10, v3, v12

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-static {v1, v8, v9}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_84

    :cond_bc
    :goto_7b
    return-object v13

    :pswitch_a5
    if-eqz v3, :cond_be

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    if-lt v1, v8, :cond_be

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-nez v1, :cond_bd

    goto/16 :goto_7c

    :cond_bd
    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v14

    aget-object v9, v3, v12

    invoke-static {v1, v8, v9}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_84

    :cond_be
    :goto_7c
    return-object v13

    :pswitch_a6
    if-eqz v3, :cond_c0

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lt v1, v12, :cond_c0

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-nez v1, :cond_bf

    goto/16 :goto_7d

    :cond_bf
    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v14

    invoke-static {v1, v8}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_84

    :cond_c0
    :goto_7d
    return-object v13

    :pswitch_a7
    if-eqz v3, :cond_c2

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_c1

    goto/16 :goto_7e

    :cond_c1
    const/4 v1, 0x0

    aget-object v8, v3, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/sec/enterprise/BluetoothUtils;->isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z

    move-result v1

    new-instance v8, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v9, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    new-array v8, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_84

    :cond_c2
    :goto_7e
    return-object v13

    :pswitch_a8
    if-eqz v3, :cond_c4

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    if-ge v1, v8, :cond_c3

    goto/16 :goto_7f

    :cond_c3
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    aget-object v10, v3, v14

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v1, v9, v10, v8}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_84

    :cond_c4
    :goto_7f
    return-object v13

    :pswitch_a9
    if-eqz v3, :cond_c6

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    if-ge v1, v8, :cond_c5

    goto/16 :goto_80

    :cond_c5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-virtual {v1, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    aget-object v9, v3, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v8, v3, v8

    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v8

    invoke-static {v1, v9, v10, v8}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v1

    new-instance v8, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v9, "isSocketAllowedBySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    new-array v8, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_84

    :cond_c6
    :goto_80
    return-object v13

    :pswitch_aa
    if-eqz v3, :cond_c8

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_c7

    goto/16 :goto_81

    :cond_c7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-virtual {v1, v9}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    new-instance v8, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v9, "isHeadsetAllowedBySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    new-array v8, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_84

    :cond_c8
    :goto_81
    return-object v13

    :pswitch_ab
    if-eqz v3, :cond_ca

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_c9

    goto/16 :goto_82

    :cond_c9
    const/4 v1, 0x0

    aget-object v8, v3, v1

    invoke-static {v8}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v1

    const-string v8, "SecContentProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PAIRINGALLOWEDBYSECURITY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v9, "isPairingAllowedbySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    new-array v8, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_84

    :cond_ca
    :goto_82
    return-object v13

    :pswitch_ac
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    new-instance v8, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v9, "isBluetoothLogEnabled"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    new-array v8, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_84

    :pswitch_ad
    if-eqz v3, :cond_cc

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_cb

    goto/16 :goto_83

    :cond_cb
    const/4 v1, 0x0

    aget-object v8, v3, v1

    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v1

    new-instance v8, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v9, "isProfileAuthorizedBySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    new-array v8, v14, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_84

    :cond_cc
    :goto_83
    return-object v13

    :goto_84
    return-object v7

    :pswitch_ae
    const/4 v8, 0x3

    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v1, :cond_d6

    if-eqz v2, :cond_d6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_b

    goto/16 :goto_85

    :sswitch_84
    const-string/jumbo v8, "isOutgoingCallsAllowed"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cd

    move v8, v12

    goto/16 :goto_86

    :sswitch_85
    const-string/jumbo v9, "isLimitedDiscoverableEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cd

    goto/16 :goto_86

    :sswitch_86
    const-string/jumbo v8, "isBLEAllowed"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cd

    move v8, v15

    goto/16 :goto_86

    :sswitch_87
    const-string/jumbo v8, "isDiscoverableEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cd

    move v8, v9

    goto/16 :goto_86

    :sswitch_88
    const-string/jumbo v8, "isDesktopConnectivityEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cd

    move/from16 v8, v16

    goto/16 :goto_86

    :sswitch_89
    const-string/jumbo v8, "isBluetoothLogEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cd

    const/4 v8, 0x7

    goto/16 :goto_86

    :sswitch_8a
    const-string v8, "bluetoothLog"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cd

    const/4 v8, 0x6

    goto/16 :goto_86

    :sswitch_8b
    const-string/jumbo v8, "isBluetoothEnabledWithMsg"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cd

    move v8, v14

    goto/16 :goto_86

    :sswitch_8c
    const-string/jumbo v8, "isBluetoothEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cd

    const/4 v8, 0x0

    goto/16 :goto_86

    :cond_cd
    :goto_85
    move/from16 v8, v17

    :goto_86
    packed-switch v8, :pswitch_data_12

    return-object v13

    :pswitch_af
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isBLEAllowed"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :pswitch_b0
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isBluetoothLogEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :pswitch_b1
    if-eqz v3, :cond_cf

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-ge v8, v12, :cond_ce

    goto/16 :goto_87

    :cond_ce
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v9, 0x0

    aget-object v10, v3, v9

    aget-object v9, v3, v14

    invoke-virtual {v1, v8, v10, v9}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string v10, "bluetoothLog"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_cf
    :goto_87
    return-object v13

    :pswitch_b2
    if-eqz v3, :cond_d1

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_d0

    goto/16 :goto_88

    :cond_d0
    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isDesktopConnectivityEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_d1
    :goto_88
    return-object v13

    :pswitch_b3
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isDiscoverableEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :pswitch_b4
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isLimitedDiscoverableEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :pswitch_b5
    if-eqz v3, :cond_d3

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_d2

    goto/16 :goto_89

    :cond_d2
    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v8

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isOutgoingCallsAllowed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isOutgoingCallsAllowed"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_d3
    :goto_89
    return-object v13

    :pswitch_b6
    if-eqz v3, :cond_d5

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_d4

    goto/16 :goto_8a

    :cond_d4
    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v8

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isBluetoothEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isBluetoothEnabledWithMsg"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8b

    :cond_d5
    :goto_8a
    return-object v13

    :pswitch_b7
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    const-string v9, "SecContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isBluetoothEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isBluetoothEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    nop

    :goto_8b
    nop

    return-object v7

    :pswitch_b8
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v1, :cond_d6

    if-eqz v2, :cond_d6

    const-string/jumbo v8, "isAuditLogEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d6

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v8

    new-instance v9, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const-string/jumbo v10, "isAuditLogEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    new-array v9, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v7

    :pswitch_b9
    nop

    :cond_d6
    :goto_8c
    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_b8
        :pswitch_ae
        :pswitch_a3
        :pswitch_9c
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_87
        :pswitch_86
        :pswitch_82
        :pswitch_75
        :pswitch_69
        :pswitch_55
        :pswitch_43
        :pswitch_30
        :pswitch_1d
        :pswitch_18
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_f
        :pswitch_0
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x35a747d7 -> :sswitch_4
        0x1020174d -> :sswitch_3
        0x1220385a -> :sswitch_2
        0x4f30b64f -> :sswitch_1
        0x78c697e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6a3a5990 -> :sswitch_16
        -0x562f9482 -> :sswitch_15
        -0x4e3d6d40 -> :sswitch_14
        -0x460411da -> :sswitch_13
        -0x39b5211e -> :sswitch_12
        -0x37226d22 -> :sswitch_11
        -0x3581de92 -> :sswitch_10
        -0x30c133a0 -> :sswitch_f
        -0x28516cec -> :sswitch_e
        -0x9cfa0f0 -> :sswitch_d
        -0x4e1daa7 -> :sswitch_c
        -0x4445baa -> :sswitch_b
        -0xebe1ca -> :sswitch_a
        0x12bbc810 -> :sswitch_9
        0x5f1771f4 -> :sswitch_8
        0x730fdeab -> :sswitch_7
        0x75020c0f -> :sswitch_6
        0x788dd2ce -> :sswitch_5
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
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
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6c43a0eb -> :sswitch_28
        -0x5eef4930 -> :sswitch_27
        -0x57f5d70e -> :sswitch_26
        -0x55af2a6c -> :sswitch_25
        -0x42b9a7be -> :sswitch_24
        -0x3d0295e2 -> :sswitch_23
        -0x331a660a -> :sswitch_22
        -0x2873ac11 -> :sswitch_21
        -0x1ad99baa -> :sswitch_20
        -0x10b8615d -> :sswitch_1f
        -0x53b1dd2 -> :sswitch_1e
        0x21990efc -> :sswitch_1d
        0x3e90c48d -> :sswitch_1c
        0x405a90ec -> :sswitch_1b
        0x53ef861d -> :sswitch_1a
        0x5bb25232 -> :sswitch_19
        0x6bef28f1 -> :sswitch_18
        0x7c45f31f -> :sswitch_17
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
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
        :pswitch_31
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x74a4d725 -> :sswitch_39
        -0x71206782 -> :sswitch_38
        -0x6c0db8af -> :sswitch_37
        -0x694bd3d6 -> :sswitch_36
        -0x553c4d53 -> :sswitch_35
        -0x4d525a40 -> :sswitch_34
        -0x4406e5f2 -> :sswitch_33
        -0x39e13355 -> :sswitch_32
        -0x2de531be -> :sswitch_31
        -0x1ab59b72 -> :sswitch_30
        -0xa2586fa -> :sswitch_2f
        0x5ad79eb -> :sswitch_2e
        0x5be9d3d -> :sswitch_2d
        0x26581d58 -> :sswitch_2c
        0x36e6d3e0 -> :sswitch_2b
        0x4bd14915 -> :sswitch_2a
        0x6c3b6517 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
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
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x657fd646 -> :sswitch_4c
        -0x5d9fe8ab -> :sswitch_4b
        -0x5c7edb84 -> :sswitch_4a
        -0x4bfd3947 -> :sswitch_49
        -0x38cefab6 -> :sswitch_48
        -0x36978d55 -> :sswitch_47
        -0x34742384 -> :sswitch_46
        -0x2d47f4e1 -> :sswitch_45
        -0x2b582cae -> :sswitch_44
        0x3e05fd -> :sswitch_43
        0x7ed85f2 -> :sswitch_42
        0x2ea4b8a5 -> :sswitch_41
        0x3593cbd4 -> :sswitch_40
        0x3d337bfd -> :sswitch_3f
        0x4ef9c1f9 -> :sswitch_3e
        0x64034c9f -> :sswitch_3d
        0x71560275 -> :sswitch_3c
        0x77163a49 -> :sswitch_3b
        0x7e3d73d9 -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
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
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x4e857510 -> :sswitch_57
        -0x1c894ef7 -> :sswitch_56
        -0xe2e3396 -> :sswitch_55
        -0x9b47ac1 -> :sswitch_54
        0x17f43207 -> :sswitch_53
        0x234b9a81 -> :sswitch_52
        0x48803b14 -> :sswitch_51
        0x4e20b298 -> :sswitch_50
        0x60a98cb9 -> :sswitch_4f
        0x65054427 -> :sswitch_4e
        0x75f9239b -> :sswitch_4d
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
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
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x7f91d479 -> :sswitch_63
        -0x7c284bba -> :sswitch_62
        -0x6f335556 -> :sswitch_61
        -0x4cb7d87b -> :sswitch_60
        -0x2d0cb7a5 -> :sswitch_5f
        0xdc5fecf -> :sswitch_5e
        0x33b94bbf -> :sswitch_5d
        0x367ce700 -> :sswitch_5c
        0x465482c9 -> :sswitch_5b
        0x552e154b -> :sswitch_5a
        0x69712d6f -> :sswitch_59
        0x6ab4c78e -> :sswitch_58
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_85
        :pswitch_84
        :pswitch_83
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_68
        -0x3ecb9a99 -> :sswitch_67
        0x3ba3e2f0 -> :sswitch_66
        0x62658647 -> :sswitch_65
        0x6f38e3dc -> :sswitch_64
    .end sparse-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        -0x7f682541 -> :sswitch_73
        -0x6f783fb9 -> :sswitch_72
        -0x51cc33cc -> :sswitch_71
        -0x4d8cc16d -> :sswitch_70
        -0x3d0bb61b -> :sswitch_6f
        -0x3c6ca389 -> :sswitch_6e
        -0x3c036018 -> :sswitch_6d
        -0x3bc628df -> :sswitch_6c
        -0x374aace4 -> :sswitch_6b
        0x6305badd -> :sswitch_6a
        0x692685a1 -> :sswitch_69
    .end sparse-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
    .end packed-switch

    :sswitch_data_9
    .sparse-switch
        -0x74ddc0dd -> :sswitch_79
        -0x67f870ad -> :sswitch_78
        -0x499a7018 -> :sswitch_77
        -0x364e80b3 -> :sswitch_76
        0x9515810 -> :sswitch_75
        0x78a801b7 -> :sswitch_74
    .end sparse-switch

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
    .end packed-switch

    :sswitch_data_a
    .sparse-switch
        -0x74fa9afd -> :sswitch_83
        -0x5319be4a -> :sswitch_82
        -0x4ebf90df -> :sswitch_81
        -0x3ce44687 -> :sswitch_80
        -0x3a6a65ad -> :sswitch_7f
        -0x103e8c3d -> :sswitch_7e
        0x292f3f94 -> :sswitch_7d
        0x2eef3494 -> :sswitch_7c
        0x65788769 -> :sswitch_7b
        0x7d586159 -> :sswitch_7a
    .end sparse-switch

    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
    .end packed-switch

    :sswitch_data_b
    .sparse-switch
        -0x625ba203 -> :sswitch_8c
        -0x534f8be2 -> :sswitch_8b
        -0x5319be4a -> :sswitch_8a
        -0x4ebf90df -> :sswitch_89
        -0x11927f68 -> :sswitch_88
        0x52d2774 -> :sswitch_87
        0x3670f097 -> :sswitch_86
        0x3962d1ce -> :sswitch_85
        0x6422cbe9 -> :sswitch_84
    .end sparse-switch

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
