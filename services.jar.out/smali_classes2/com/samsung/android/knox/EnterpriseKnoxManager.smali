.class public Lcom/samsung/android/knox/EnterpriseKnoxManager;
.super Ljava/lang/Object;
.source "EnterpriseKnoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    }
.end annotation


# static fields
.field public static final DEVICE_KNOXIFIED:I = 0x1

.field public static final DEVICE_NOT_KNOXIFIED:I = 0x0

.field public static final KNOX_ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "knox_enterprise_policy"

.field private static final KNOX_VPN_V1_ENABLED:Z

.field private static final KNOX_VPN_V2_ENABLED:Z

.field private static TAG:Ljava/lang/String;

.field private static gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

.field private mAdvancedRestrictionPolicyCreated:Z

.field private mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

.field private mAuditLogPolicyCreated:Z

.field private mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field private mCertificatePolicyCreated:Z

.field private mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

.field private mClientCertificateManagerPolicyCreated:Z

.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

.field private mEnterpriseBillingPolicyCreated:Z

.field private mKnoxContainerMgrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/container/KnoxContainerManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKnoxEnterpriseLicenseManager:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

.field private mKnoxEnterpriseLicenseManagerCreated:Z

.field private mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

.field private mNetworkAnalyticsCreated:Z

.field private mTimaKeystorePolicy:Lcom/samsung/android/knox/keystore/TimaKeystore;

.field private mTimaKeystorePolicyCreated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EnterpriseKnoxManager"

    sput-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    const-string v0, "1"

    const-string/jumbo v1, "ro.config.knox"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->KNOX_VPN_V1_ENABLED:Z

    const-string/jumbo v0, "v30"

    const-string/jumbo v1, "ro.config.knox"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->KNOX_VPN_V2_ENABLED:Z

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    return-object v0
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceKnoxifiedState()I
    .locals 3

    const-string v0, "1"

    const-string/jumbo v1, "ro.config.knoxtakeover"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAdvancedRestrictionPolicy()Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getAdvancedRestrictionPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getAdvancedRestrictionPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    return-object v0
.end method

.method public getAuditLogPolicy()Lcom/samsung/android/knox/log/AuditLog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getAuditLogPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;

    move-result-object v0

    return-object v0
.end method

.method public getAuditLogPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    if-nez v0, :cond_2

    const-class v0, Lcom/samsung/android/knox/log/AuditLog;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/log/AuditLog;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    return-object v0
.end method

.method public getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/keystore/CertificatePolicy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/CertificatePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    return-object v0
.end method

.method public getClientCertificateManagerPolicy()Lcom/samsung/android/knox/keystore/ClientCertificateManager;
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    return-object v0
.end method

.method public getEnterpriseBillingPolicy()Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added Client : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    return-object v0
.end method

.method public getEnterpriseCertEnrollPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v0, p1}, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->getInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getGenericVpnPolicy(Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v3, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3, p2, p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getInstance(Landroid/content/Context;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/EnterpriseKnoxManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getGenericVpnPolicy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getKnoxContainerManager(I)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget v1, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string/jumbo v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/knox/container/KnoxContainerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    new-instance v3, Lcom/samsung/android/knox/container/KnoxContainerManager;

    invoke-direct {v3, p1, p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v3

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    iget v6, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    sget-object v4, Lcom/samsung/android/knox/EnterpriseKnoxManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed at KnoxContainerManager API getKnoxContainerManager "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKnoxContainerManager(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getKnoxEnterpriseLicenseManager()Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxEnterpriseLicenseManager(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object v0

    return-object v0
.end method

.method public getKnoxEnterpriseLicenseManager(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    if-nez v0, :cond_2

    const-class v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManager:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManager:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    return-object v0
.end method

.method public getNetworkAnalytics()Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getNetworkAnalytics(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkAnalytics(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v1, p1}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    const-string v1, "NetworkAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added Client : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    return-object v0
.end method

.method public getTimaKeystorePolicy()Lcom/samsung/android/knox/keystore/TimaKeystore;
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/keystore/TimaKeystore;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/keystore/TimaKeystore;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/TimaKeystore;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicy:Lcom/samsung/android/knox/keystore/TimaKeystore;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicy:Lcom/samsung/android/knox/keystore/TimaKeystore;

    return-object v0
.end method

.method public getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    .locals 2

    const-string v0, "22"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_1
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_2
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_3
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_4
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_0:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_5
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_9:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_6
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_8:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_7
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_8
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_9
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_a
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_b
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_c
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4_1:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_d
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_e
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_f
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x8
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
