.class public Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;
.super Ljava/lang/Object;
.source "EnterpriseCertEnrollPolicy.java"


# static fields
.field private static final KNOX_SCEP_POLICY_SERVICE:Ljava/lang/String; = "knox_scep_policy"

.field private static TAG:Ljava/lang/String;

.field private static certEnrolPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile gSCEPService:Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;


# instance fields
.field private cepProtocol:Ljava/lang/String;

.field private mContainerId:I

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnterpriseCertEnrollPolicy"

    sput-object v0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->certEnrolPolicyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->cepProtocol:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnterpriseCertEnrollPolicy getInstance : cepProtocol = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    const-class v1, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->certEnrolPolicyMap:Ljava/util/Map;

    iget v3, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->certEnrolPolicyMap:Ljava/util/Map;

    iget v3, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;

    move-object v0, v3

    sget-object v3, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v4, "EnterpriseCertEnrollPolicy getInstance : Already Bind"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    sget-object v3, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnterpriseCertEnrollPolicy getInstance : but not found for package ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    move-object v0, v3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->certEnrolPolicyMap:Ljava/util/Map;

    iget v4, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    goto :goto_0

    :cond_2
    sget-object v2, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnterpriseCertEnrollPolicy getInstance : but not found entries for container ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    move-object v0, v2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->certEnrolPolicyMap:Ljava/util/Map;

    iget v4, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->getService()Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;->isEnrollCertServiceActivated(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, -0x1

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;->activateEnrollCertService(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    sget-object v4, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnterpriseCertEnrollPolicy getInstance : bindSuccess = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-->containerid["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] protocol["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x258

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->certEnrolPolicyMap:Ljava/util/Map;

    iget v5, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v5, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v6, "EnterpriseCertEnrollPolicy getInstance : Binding Failed; CEP object removed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    goto :goto_1

    :cond_4
    sget-object v3, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v4, "EnterpriseCertEnrollPolicy getInstance :Already bind to Service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnterpriseCertEnrollPolicy getInstance : returning null for cepProtocol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    :goto_2
    nop

    :goto_3
    return-object v0
.end method

.method static getService()Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->gSCEPService:Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    if-nez v0, :cond_0

    const-string v0, "knox_scep_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->gSCEPService:Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->gSCEPService:Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    return-object v0
.end method


# virtual methods
.method public deleteUserCertificate(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->getService()Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseCertEnrollPolicy.deleteUserCertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->gSCEPService:Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->cepProtocol:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;->deleteUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseCertEnrollPolicy API deleteUserCertificate-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enrollUserCertificate(Lcom/samsung/android/knox/keystore/EnrollmentProfile;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/keystore/EnrollmentProfile;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->getService()Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseCertEnrollPolicy.enrollUserCertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->gSCEPService:Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v4, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->cepProtocol:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;->enrollUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/keystore/EnrollmentProfile;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseCertEnrollPolicy API enrollUserCertificate-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v1, "enrollUserCertificate - calling.....service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertEnrollmentStatus(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->getService()Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseCertEnrollPolicy.getCertEnrollmentStatus"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->gSCEPService:Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->cepProtocol:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;->getCertEnrollmentStatus(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseCertEnrollPolicy API getCertEnrollmentStatus-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public renewUserCertificate(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->getService()Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseCertEnrollPolicy.renewUserCertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->gSCEPService:Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->cepProtocol:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy;->renewUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseCertEnrollPolicy API renewUserCertificate-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string v0, ""

    return-object v0
.end method
