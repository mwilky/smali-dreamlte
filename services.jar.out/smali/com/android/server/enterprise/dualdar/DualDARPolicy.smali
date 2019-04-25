.class public Lcom/android/server/enterprise/dualdar/DualDARPolicy;
.super Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;
.source "DualDARPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# static fields
.field private static final DATALOCK_TIMEOUT:Ljava/lang/String; = "datalock_timeout"

.field private static final DA_SCHEMA_VERSION:I = 0x1

.field private static final DE_ACCESS_RESTRICTION:Ljava/lang/String; = "de_access_restriction"

.field public static final DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DUAL_DAR_POLICY_SERVICE:Ljava/lang/String; = "DualDARPolicy"

.field public static final ERROR_FAILURE_IN_SETTING_DATA_LOCK_TIMEOUT:I = -0x1

.field public static final ERROR_FAILURE_IN_SETTING_DE_RESTRICTION:I = -0x3

.field public static final ERROR_FAILURE_IN_SETTING_WHITELIST_PACKAGES:I = -0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final KEY_CONFIG_CLIENT_PACKAGE:Ljava/lang/String; = "dualdar-config-client-package"

.field public static final KEY_CONFIG_CLIENT_SIGNATURE:Ljava/lang/String; = "dualdar-config-client-signature"

.field public static final KEY_CONFIG_DATA_LOCK_TIMEOUT:Ljava/lang/String; = "dualdar-config-datalock-timeout"

.field public static final KEY_CONFIG_DE_RESTRICTION:Ljava/lang/String; = "dualdar-config-de-restriction"

.field public static final KEY_CONFIG_WHITELISTED_DATA_LOCK_STATE_PACKAGES:Ljava/lang/String; = "dualdar-config-datalock-whitelistpackages"

.field public static final KEY_DUAL_DAR_CONFIG:Ljava/lang/String; = "dualdar-config"

.field private static final LOG_DUALDAR_KA_TAG:Ljava/lang/String; = "DualDARPolicy:DualDARAnalytics"

.field private static final MAX_DATA_LOCK_TIMEOUT:J = 0x36ee80L

.field private static final MIN_DATA_LOCK_TIMEOUT:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "DualDARPolicy"

.field private static final WHITELISTED_APPS:Ljava/lang/String; = "whitelisted_apps"


# instance fields
.field private context:Landroid/content/Context;

.field private dualDarConfigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    const-string v1, "com.samsung.android.knox.containeragent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    const-string v1, "com.samsung.android.knox.containercore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    const-string v1, "com.sec.android.inputmethod"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    const-string v1, "com.google.process.gservices"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    const-string v1, "com.google.proccess.gapps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    const-string v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    const-string v1, "com.google.android.gms.persistent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    const-string v1, "com.google.android.gms.ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    const-string v1, "com.google.android.gms.unstable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    const-string v1, "com.android.providers.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    const-string v1, "com.samsung.android.providers.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    const-string v1, "com.android.providers.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    return-void
.end method

.method private clearPolicyInternal(II)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DUAL_DAR"

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DualDARPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPolicy policy passed? : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "DualDARPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while clearing policy, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private doAuditLog(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V
    .locals 11

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v8

    invoke-static {v7}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARType(I)I

    move-result v9

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistPkgesFromConfig(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "DualDARPolicy:DualDARAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin created DualDAR with configuration, Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getDualDarVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  Lock Timeout :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dualdar-config-datalock-timeout"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",  Device Encryption storage access restriction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dualdar-config-de-restriction"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",  Whitelisted Packages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    nop

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "DualDARPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin created DualDAR with configuration,  Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getDualDarVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  Lock Timeout :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dualdar-config-datalock-timeout"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",  Device Encryption storage access restriction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dualdar-config-de-restriction"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",  Whitelisted Packages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    move v6, v7

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private flatten(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private flattenPackages(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flatten(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private flattenSignatures(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "-"

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flatten(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getClientAndProfileOwnerApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/knox/AppIdentity;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigFromDb(II)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "dualdar-config-client-package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dualdar-config-client-signature"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v4, v2, v3}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private getConfigFromDb(II)Landroid/os/Bundle;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DUAL_DAR"

    const-string v4, "dataLockTimeOut"

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "DualDARPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getConfig : DualDAR not enabled for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DUAL_DAR"

    const-string v7, "clientAppPackageName"

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "DUAL_DAR"

    const-string v8, "clientAppSignature"

    invoke-virtual {v6, p1, p2, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x1

    move v8, v7

    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "DUAL_DAR"

    const-string v11, "deRestriction"

    invoke-virtual {v9, p1, p2, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v8, v9

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_2
    const-string v10, "DualDARPolicy"

    const-string v11, "Unable to read deRestriction field"

    new-array v12, v1, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    if-nez v5, :cond_1

    const-string v9, ""

    move-object v5, v9

    const-string v9, ""

    move-object v6, v9

    :cond_1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "dualdar-config-client-package"

    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "dualdar-config-client-signature"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "dualdar-config-de-restriction"

    if-lez v8, :cond_2

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v7, "dualdar-config-datalock-timeout"

    invoke-virtual {v9, v7, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v7, "dualdar-config-datalock-whitelistpackages"

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistedAppsFromStorage(II)[Lcom/samsung/android/knox/AppIdentity;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v9

    :catch_1
    move-exception v2

    const-string v3, "DualDARPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getConfigFromDb has an exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getConfigInternal(I)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method private getDualDarVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/ddar/DualDARPolicy;->getDualDARVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getWhitelistPkgesFromConfig(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "dualdar-config-datalock-whitelistpackages"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    check-cast v3, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->validPackageName(Lcom/samsung/android/knox/AppIdentity;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flatten(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getWhitelistedAppsFromStorage(II)[Lcom/samsung/android/knox/AppIdentity;
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DUAL_DAR"

    const-string/jumbo v2, "whiteListPkgsForDataLockState"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->unFlattenPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DUAL_DAR"

    const-string/jumbo v3, "whiteListPkgSignaturesForDataLockState"

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->unFlattenSignatures(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    new-instance v5, Lcom/samsung/android/knox/AppIdentity;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/samsung/android/knox/AppIdentity;

    const-string v7, ""

    invoke-direct {v6, v5, v7}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-array v3, v3, [Lcom/samsung/android/knox/AppIdentity;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/knox/AppIdentity;

    return-object v3
.end method

.method private logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v1, "DualDARPolicy:DualDARAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logDualDarAnalytics, userID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x4

    const-string v2, "datalock_timeout"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_DUALDAR"

    const-string v6, "DATALOCK_TIMEOUT"

    invoke-direct {v2, v5, v4, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v4, "dualdar-config-datalock-timeout"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "datalckTmoutV"

    invoke-virtual {v2, v6, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    const-string v6, "DualDARPolicy:DualDARAnalytics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT : DATALOCK_TIMEOUT TIME: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v6, "DualDARPolicy:DualDARAnalytics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Payload / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v7, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "whitelisted_apps"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_DUALDAR"

    const-string v6, "WHITELISTED_APPS"

    invoke-direct {v2, v5, v4, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistPkgesFromConfig(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "wPkgLst"

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DualDARPolicy:DualDARAnalytics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT:WHITELISTED_APPS, WhiteListed Packages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v5, "DualDARPolicy:DualDARAnalytics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Payload / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto :goto_0

    :cond_1
    const-string v2, "de_access_restriction"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "dualdar-config-de-restriction"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "DualDARPolicy:DualDARAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DE Restriction Value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshConfig(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigFromDb(II)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setDataLockTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .locals 9

    const-string/jumbo v0, "dualdar-config-datalock-timeout"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "DualDARPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataLockTimeout called, dataLockTimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-ltz v2, :cond_0

    const-wide/32 v5, 0x36ee80

    cmp-long v2, v0, v5

    if-lez v2, :cond_1

    :cond_0
    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_4

    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "dataLockTimeOut"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v8, "DUAL_DAR"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v6, "DualDARPolicy"

    const-string/jumbo v7, "successfully changed datalock timeout"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v6, "datalock_timeout"

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "DualDARPolicy"

    const-string/jumbo v7, "failed to write new datalock timeout to persistent storage"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    if-eqz v5, :cond_3

    move v3, v4

    nop

    :cond_3
    return v3

    :cond_4
    const-string v2, "DualDARPolicy"

    const-string/jumbo v5, "setDataLockTimeout Invalid datalock timeout. It should be in range [60000, 3600000] ms"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v5, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3
.end method

.method private setDeRestriction(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .locals 7

    const-string/jumbo v0, "dualdar-config-de-restriction"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "DualDARPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeRestriction called, deRestriction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "deRestriction"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v6, "DUAL_DAR"

    invoke-virtual {v2, v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v4, "DualDARPolicy"

    const-string v5, "Successfully changed DE restriction config"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v4, "de_access_restriction"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "DualDARPolicy"

    const-string v5, "Failed to write new DE restriction config"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, -0x3

    :goto_1
    return v3
.end method

.method private setWhitelistPackagesForDataLockedState(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    invoke-direct {v1, v2, v6, v7}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getClientAndProfileOwnerApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V

    const-string/jumbo v0, "dualdar-config-datalock-whitelistpackages"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    if-eqz v8, :cond_1

    array-length v0, v8

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v10, v8

    if-ge v0, v10, :cond_1

    aget-object v10, v8, v0

    check-cast v10, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v1, v10}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->validPackageName(Lcom/samsung/android/knox/AppIdentity;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    sget-object v11, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v10, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {v1, v0, v10}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistedAppsFromStorage(II)[Lcom/samsung/android/knox/AppIdentity;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    if-eqz v10, :cond_3

    array-length v0, v10

    if-eqz v0, :cond_3

    array-length v13, v10

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    aget-object v15, v10, v14

    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v16, v5

    :try_start_1
    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-interface {v0, v9, v8, v7, v5}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, "DualDARPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in clearing user data for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " installed in: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :cond_2
    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    goto/16 :goto_1

    :cond_3
    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, "DualDARPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWhitelistPackagesForDataLockedState called, whitelistAppCount: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v0, v5, v8}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "whiteListPkgsForDataLockState"

    invoke-direct {v1, v4}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenPackages(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "whiteListPkgSignaturesForDataLockState"

    invoke-direct {v1, v4}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenSignatures(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v8, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v9, "DUAL_DAR"

    invoke-virtual {v5, v7, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v7, "DualDARPolicy"

    const-string/jumbo v8, "successfully changed whitelist packages for datalock state"

    const/4 v9, 0x0

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v13}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string/jumbo v7, "whitelisted_apps"

    invoke-direct {v1, v2, v3, v7}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    const-string v7, "DualDARPolicy"

    const-string/jumbo v8, "failed to write new whitelist packages to persistent storage"

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v13}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_4
    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    const/4 v9, -0x2

    :goto_5
    return v9
.end method

.method private unFlattenPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ", "

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private unFlattenSignatures(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ", "

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v2, ""

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private validPackageName(Lcom/samsung/android/knox/AppIdentity;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clearPolicy(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->clearPolicyInternal(II)Z

    move-result v0

    return v0
.end method

.method public getClientInfo(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v2, "dualdar-config-client-package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConfig(I)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigInternal(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigInternal(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
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
    .locals 0

    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->clearPolicyInternal(II)Z

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 0

    return-void
.end method

.method public setClientInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    const-string v3, "DualDARPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setClientInfo called, clientPkgName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "clientAppPackageName"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "clientAppSignature"

    move-object/from16 v6, p3

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v8, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v9, "DUAL_DAR"

    invoke-virtual {v4, v7, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v7, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->refreshConfig(I)V

    :cond_0
    move-object v7, v1

    const-string v8, " "

    iget v9, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v7, "Samsung"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getDualDarVersion()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v7, v1

    iget-object v9, v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstalledClientLibraryVersion()Ljava/lang/String;

    move-result-object v8

    :goto_0
    const-string v9, "DualDARPolicy:DualDARAnalytics"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Final Logging Crypto: pkg Name :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", clientVersion: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v9, v10, v5}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    const-string v15, "DualDARPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin created DualDAR with Third Party Client Package: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", client library version: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v17, v5

    invoke-static/range {v11 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "DualDARPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConfig : callingUid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DualDARPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setConfig : DualDAR not enabled for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v2, "dualdar-config-datalock-whitelistpackages"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->setWhitelistPackagesForDataLockedState(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result v1

    :cond_1
    const/4 v2, 0x0

    const-string/jumbo v4, "dualdar-config-datalock-timeout"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->setDataLockTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result v2

    :cond_2
    const/4 v4, 0x0

    const-string/jumbo v5, "dualdar-config-de-restriction"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->setDeRestriction(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result v4

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-nez v4, :cond_5

    :cond_4
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->refreshConfig(I)V

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->doAuditLog(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    move v3, v1

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_8

    move v3, v2

    goto :goto_0

    :cond_8
    move v3, v4

    :goto_0
    return v3
.end method

.method public systemReady()V
    .locals 2

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->refreshConfig(I)V

    :cond_0
    return-void
.end method
