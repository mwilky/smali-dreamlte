.class public Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
.super Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy$Stub;
.source "DualSimPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "DualSimPolicyService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy$Stub;-><init>()V

    const-string v0, "DualSimPolicyService"

    const-string v1, "DualSimPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private enforceOwnerOnlyAndDualSimPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_DUAL_SIM"

    const-string v3, "com.samsung.android.knox.permission.KNOX_DUAL_SIM"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public clearPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DualSim_Policy"

    const-string v5, "PreferredSim"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "DualSim_Policy"

    const-string v6, "PreferredSim"

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DualSim_Policy"

    const-string v4, "PreferredSim"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 2

    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "onAdminAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2

    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "onAdminRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 2

    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "onPreAdminRemoval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DualSim_Policy"

    const-string v6, "PreferredSim"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "DualSim_Policy"

    const-string v7, "PreferredSim"

    invoke-virtual {v3, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    move v2, v3

    if-eqz v2, :cond_3

    if-nez p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->switchNetworkCustomizer(I)V

    goto :goto_0

    :cond_0
    if-ne p2, v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->switchNetworkCustomizer(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "DualSim_Policy"

    const-string v7, "PreferredSim"

    invoke-virtual {v3, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    move v2, v3

    if-eqz v2, :cond_3

    if-nez p2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->switchNetworkCustomizer(I)V

    goto :goto_0

    :cond_2
    if-ne p2, v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->switchNetworkCustomizer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v2
.end method

.method public switchNetworkCustomizer(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public systemReady()V
    .locals 2

    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
