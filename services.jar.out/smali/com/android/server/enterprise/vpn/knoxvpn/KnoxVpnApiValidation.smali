.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
.super Ljava/lang/Object;
.source "KnoxVpnApiValidation.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "KnoxVpnApiValidation"

.field private static mContext:Landroid/content/Context;

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field private static mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

.field private static mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private static mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;


# instance fields
.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-void
.end method

.method private static getEnterpriseDeviceManager()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getKnoxVpnPacProcessor()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-object v0
.end method

.method private static getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method


# virtual methods
.method public activateVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)I
    .locals 5

    const/16 v0, 0x64

    if-eqz p2, :cond_7

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x6c

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2

    const/16 v0, 0x70

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v0, 0x6d

    return v0

    :cond_3
    if-eqz p3, :cond_5

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/16 v0, 0x73

    return v0

    :cond_4
    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_6

    const/16 v0, 0x74

    return v0

    :cond_6
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at activateVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_1
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateVpnProfileValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    :goto_2
    const/16 v0, 0x68

    return v0
.end method

.method public addAllContainerPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)I
    .locals 9

    const/16 v0, 0x64

    if-eqz p3, :cond_c

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x6c

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2

    const/16 v0, 0x70

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v0, 0x6d

    return v0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/16 v0, 0x2be

    return v0

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v4

    if-nez v4, :cond_5

    const/16 v0, 0x1f5

    return v0

    :cond_5
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v6

    move v5, v6

    if-nez v5, :cond_6

    const/16 v0, 0x71

    return v0

    :cond_6
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    iget v8, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-eq v7, v8, :cond_7

    const/16 v0, 0x72

    return v0

    :cond_7
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v7

    move v5, v7

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v7

    if-eq v7, p2, :cond_8

    const/16 v0, 0x71

    return v0

    :cond_8
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_9

    const/16 v0, 0x7b

    return v0

    :cond_9
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v8, :cond_a

    const/16 v0, 0x75

    return v0

    :cond_a
    const/16 v0, 0x76

    return v0

    :cond_b
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at addAllContainerPackagesToVpnValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_0
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAllContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_c
    :goto_1
    const/16 v0, 0x68

    return v0
.end method

.method public addAllPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .locals 7

    const/16 v0, 0x64

    if-eqz p2, :cond_9

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x6c

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2

    const/16 v0, 0x70

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v0, 0x6d

    return v0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/16 v0, 0x2be

    return v0

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v4

    if-nez v4, :cond_5

    const/16 v0, 0x1f5

    return v0

    :cond_5
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_6

    const/16 v0, 0x7b

    return v0

    :cond_6
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v5

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_7

    const/16 v0, 0x75

    return v0

    :cond_7
    const/16 v0, 0x76

    return v0

    :cond_8
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at addAllPackagesToVpnValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_0
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAllPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_9
    :goto_1
    const/16 v0, 0x68

    return v0
.end method

.method public addContainerPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/16 v0, 0x64

    move v6, v0

    if-eqz v5, :cond_1a

    if-eqz v4, :cond_1a

    :try_start_0
    array-length v0, v4

    const/4 v7, 0x1

    if-lt v0, v7, :cond_1a

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v6, 0x6c

    return v6

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_2

    const/16 v6, 0x70

    return v6

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    if-nez v8, :cond_3

    const/16 v6, 0x6d

    return v6

    :cond_3
    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v10

    move v9, v10

    if-nez v9, :cond_4

    const/16 v6, 0x71

    return v6

    :cond_4
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    iget v12, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v11, v12, :cond_5

    const/16 v6, 0x72

    return v6

    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v11

    move v9, v11

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v11

    if-eq v11, v3, :cond_6

    const/16 v6, 0x71

    return v6

    :cond_6
    array-length v11, v4

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_11

    aget-object v14, v4, v13

    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v12, "ADD_ALL_PACKAGES"

    invoke-virtual {v15, v3, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v6, 0x89

    return v6

    :cond_7
    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v12, v3, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    if-eqz v7, :cond_a

    move/from16 v16, v8

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    move/from16 v17, v9

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_8

    const/16 v6, 0x87

    return v6

    :cond_8
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_b

    const/16 v6, 0x88

    return v6

    :cond_9
    move/from16 v17, v9

    goto :goto_1

    :cond_a
    move/from16 v16, v8

    move/from16 v17, v9

    :cond_b
    :goto_1
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_c

    const/16 v6, 0x87

    return v6

    :cond_c
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v3, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v8

    if-lez v8, :cond_d

    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_d

    const/16 v6, 0x8b

    return v6

    :cond_d
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfUidIsBlackListed(II)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v6, 0x89

    return v6

    :cond_e
    const-string v9, "com.knox.vpn.proxyhandler"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    const/16 v6, 0x89

    return v6

    :cond_f
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v7

    const-string v7, ""

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v6, 0x86

    return v6

    :cond_10
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v16

    move/from16 v9, v17

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_11
    move/from16 v16, v8

    move/from16 v17, v9

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v7, v8, :cond_18

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v9, "ADD_ALL_PACKAGES"

    invoke-virtual {v8, v3, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_12

    const/16 v6, 0x77

    return v6

    :cond_12
    return v6

    :cond_13
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    const/16 v6, 0x73

    return v6

    :cond_14
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v6, 0x77

    return v6

    :cond_15
    array-length v9, v4

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_17

    aget-object v12, v4, v11

    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v3, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_16

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removeUidFromExemptList(I)V

    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v5, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeExemptedListToDatabase(Ljava/lang/String;I)Z

    move-result v14

    const-string v15, "KnoxVpnApiValidation"

    move-object/from16 v20, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user wide vpn was configured "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removing uid from exempt list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_16
    move-object/from16 v20, v0

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    goto :goto_2

    :cond_17
    move-object/from16 v20, v0

    goto :goto_4

    :cond_18
    move-object/from16 v20, v0

    const/16 v0, 0x78

    return v0

    :cond_19
    :goto_4
    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at addContainerPackagesToVpnValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x65

    :goto_5
    const-string v0, "KnoxVpnApiValidation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1a
    :goto_6
    const/16 v0, 0x68

    return v0
.end method

.method public addPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/16 v0, 0x64

    move v5, v0

    if-eqz v4, :cond_15

    if-eqz v3, :cond_15

    :try_start_0
    array-length v0, v3

    const/4 v6, 0x1

    if-lt v0, v6, :cond_15

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v5, 0x6c

    return v5

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_2

    const/16 v5, 0x70

    return v5

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v7

    if-nez v7, :cond_3

    const/16 v5, 0x6d

    return v5

    :cond_3
    array-length v8, v3

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_c

    aget-object v11, v3, v10

    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    const-string v14, "ADD_ALL_PACKAGES"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v5, 0x89

    return v5

    :cond_4
    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v14, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v15

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v15, v9, :cond_5

    const/16 v5, 0x87

    return v5

    :cond_5
    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    iget v15, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v9, v15, :cond_6

    const/16 v5, 0x88

    return v5

    :cond_6
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    iget v15, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v9, v15, :cond_7

    const/16 v5, 0x87

    return v5

    :cond_7
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v15, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v9, v15, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v9

    if-lez v9, :cond_8

    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_8

    const/16 v5, 0x8b

    return v5

    :cond_8
    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v15, v9, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfUidIsBlackListed(II)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v5, 0x89

    return v5

    :cond_9
    const-string v6, "com.knox.vpn.proxyhandler"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v5, 0x89

    return v5

    :cond_a
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v15, ""

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v5, 0x86

    return v5

    :cond_b
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v6, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v6

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v6, v8, :cond_13

    iget-object v6, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    const-string v10, "ADD_ALL_PACKAGES"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_d

    const/16 v5, 0x77

    return v5

    :cond_d
    return v5

    :cond_e
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    const/16 v5, 0x73

    return v5

    :cond_f
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_10

    const/16 v5, 0x77

    return v5

    :cond_10
    array-length v9, v3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_12

    aget-object v11, v3, v10

    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removeUidFromExemptList(I)V

    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v4, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeExemptedListToDatabase(Ljava/lang/String;I)Z

    move-result v13

    const-string v14, "KnoxVpnApiValidation"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string/jumbo v0, "user wide vpn was configured "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "removing uid from exempt list "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x5

    const/16 v19, 0x5

    const/16 v20, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v21

    const-string v22, "KnoxVpnApiValidation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " added to vpn for profile "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ". Removed from exempt list"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    iget v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    move/from16 v24, v0

    invoke-static/range {v18 .. v24}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_11
    move-object/from16 v17, v0

    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v17

    goto/16 :goto_1

    :cond_12
    move-object/from16 v17, v0

    goto :goto_3

    :cond_13
    move-object/from16 v17, v0

    const/16 v0, 0x78

    return v0

    :cond_14
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v0

    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at addPackagesToVpnValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x65

    :goto_4
    const-string v0, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_15
    :goto_5
    const/16 v0, 0x68

    return v0
.end method

.method public createVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/16 v0, 0x64

    move v4, v0

    if-eqz v3, :cond_2c

    :try_start_0
    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_0

    move/from16 v18, v4

    goto/16 :goto_e

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getAdminId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v5

    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createVpnProfileValidation:vpnClientUserId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " adminUserId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_1

    if-eqz v0, :cond_3

    const/16 v4, 0x72

    return v4

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v6, :cond_2

    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v6, :cond_2

    const/16 v4, 0x71

    return v4

    :catch_0
    move-exception v0

    move/from16 v18, v4

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move/from16 v18, v4

    goto/16 :goto_c

    :cond_2
    :try_start_2
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createVpnProfileValidation:containerOwner "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " adminuid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_3

    const/16 v4, 0x72

    return v4

    :cond_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "KNOX_VPN_PARAMETERS"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "profile_attribute"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "knox"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "profileName"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "vpn_type"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vpn_route_type"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "chaining_enabled"

    const/4 v14, -0x1

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v15, "uidpid_search_enabled"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    const-string v14, "connectionType"

    move/from16 v17, v0

    const-string/jumbo v0, "keepon"

    invoke-virtual {v9, v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v14, "proxy-server"

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    invoke-virtual {v9, v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v14, "proxy-port"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move/from16 v18, v4

    const/4 v4, -0x1

    :try_start_3
    invoke-virtual {v9, v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    move v4, v14

    const-string/jumbo v14, "proxy-username"

    move/from16 v19, v5

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    invoke-virtual {v9, v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v14, "proxy-password"

    move-object/from16 v20, v6

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    invoke-virtual {v9, v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v14, "pac-url"

    move-object/from16 v21, v7

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    invoke-virtual {v9, v14, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v14, "ipv6-enable"

    move-object/from16 v22, v8

    const/4 v8, 0x0

    invoke-virtual {v9, v14, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string/jumbo v8, "proxy-auth"

    move-object/from16 v23, v6

    const/4 v6, 0x0

    invoke-virtual {v9, v8, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    move v6, v8

    if-eqz v10, :cond_2b

    if-eqz v11, :cond_2b

    const/4 v8, 0x1

    if-eq v12, v8, :cond_4

    if-eqz v12, :cond_4

    move-object/from16 v26, v0

    move-object/from16 v34, v9

    move-object/from16 v32, v11

    move-object/from16 v2, v23

    goto/16 :goto_a

    :cond_4
    if-nez v12, :cond_a

    if-eqz v13, :cond_9

    if-ne v13, v8, :cond_5

    goto :goto_1

    :cond_5
    const-string/jumbo v8, "ondemand"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x2be

    return v8

    :cond_6
    if-nez v3, :cond_8

    const/4 v8, -0x1

    if-eq v4, v8, :cond_7

    goto :goto_0

    :cond_7
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    if-eq v7, v8, :cond_a

    const/16 v8, 0x321

    return v8

    :cond_8
    :goto_0
    const/16 v8, 0x321

    return v8

    :cond_9
    :goto_1
    const/16 v8, 0x1f9

    return v8

    :cond_a
    const/4 v8, -0x1

    if-eq v13, v8, :cond_b

    if-eqz v13, :cond_b

    const/4 v8, 0x1

    if-eq v13, v8, :cond_c

    const/16 v8, 0x1f5

    return v8

    :cond_b
    const/4 v8, 0x1

    :cond_c
    if-eq v15, v8, :cond_d

    if-eqz v15, :cond_d

    const/16 v8, 0x259

    return v8

    :cond_d
    const-string/jumbo v8, "keepon"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string/jumbo v8, "ondemand"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/16 v8, 0x2bd

    return v8

    :cond_e
    const-string/jumbo v8, "ondemand"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    if-nez v13, :cond_f

    const/16 v8, 0x2be

    return v8

    :cond_f
    if-eqz v14, :cond_10

    const/4 v8, 0x1

    if-eq v14, v8, :cond_10

    const/16 v8, 0x325

    return v8

    :cond_10
    const-string v8, "\\s"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    move-object/from16 v25, v24

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_11

    const/16 v16, 0x6a

    return v16

    :cond_11
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v27, v25

    move-object/from16 v28, v0

    move-object/from16 v29, v8

    move/from16 v0, v27

    const/4 v8, 0x1

    if-lt v0, v8, :cond_2a

    const/16 v8, 0x80

    if-le v0, v8, :cond_12

    move/from16 v30, v0

    move-object/from16 v34, v9

    move-object/from16 v32, v11

    move-object/from16 v2, v23

    goto/16 :goto_9

    :cond_12
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v8

    if-eqz v8, :cond_14

    move/from16 v30, v0

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v0

    move-object/from16 v31, v8

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v0, v8, :cond_13

    const/16 v0, 0x6f

    return v0

    :cond_13
    const/16 v0, 0x70

    return v0

    :cond_14
    move/from16 v30, v0

    move-object/from16 v31, v8

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    const-string v2, "chaining_enabled"

    move-object/from16 v32, v11

    const/4 v11, -0x1

    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_17

    iget-object v11, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v33, v2

    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2, v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v34, v9

    const/4 v9, 0x1

    invoke-virtual {v11, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    move-result v2

    if-eq v2, v9, :cond_16

    if-nez v2, :cond_15

    goto :goto_2

    :cond_15
    goto :goto_3

    :cond_16
    :goto_2
    const/16 v9, 0x1f7

    return v9

    :cond_17
    move/from16 v33, v2

    move-object/from16 v34, v9

    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v9

    const/4 v11, 0x0

    invoke-virtual {v2, v9, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    move-result v2

    const/4 v9, -0x1

    if-ne v2, v9, :cond_18

    const/16 v9, 0x1f8

    return v9

    :cond_18
    :goto_3
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    if-eq v7, v2, :cond_21

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    if-ne v3, v2, :cond_20

    const/4 v2, -0x1

    if-ne v4, v2, :cond_20

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v35, v0

    move-object/from16 v2, v23

    goto/16 :goto_5

    :cond_19
    if-nez v13, :cond_1a

    const/16 v2, 0x324

    return v2

    :cond_1a
    if-eqz v5, :cond_21

    if-eqz v23, :cond_21

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v2, v23

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1e

    if-nez v6, :cond_1b

    const/16 v9, 0x324

    return v9

    :cond_1b
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v35, v0

    const-string v0, "_"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "proxy-username"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/16 v9, 0x322

    return v9

    :cond_1c
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v36, v0

    const-string v0, "_"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "proxy-password"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v9, 0x323

    return v9

    :cond_1d
    goto :goto_6

    :cond_1e
    move-object/from16 v35, v0

    goto :goto_4

    :cond_1f
    move-object/from16 v35, v0

    move-object/from16 v2, v23

    :goto_4
    const/16 v0, 0x324

    return v0

    :cond_20
    move-object/from16 v35, v0

    move-object/from16 v2, v23

    :goto_5
    const/16 v0, 0x324

    return v0

    :cond_21
    move-object/from16 v35, v0

    move-object/from16 v2, v23

    :goto_6
    if-eqz v3, :cond_29

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    if-ne v3, v0, :cond_22

    const/4 v0, -0x1

    if-eq v4, v0, :cond_29

    :cond_22
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    if-ne v7, v0, :cond_28

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_7

    :cond_23
    if-nez v13, :cond_24

    const/16 v0, 0x324

    return v0

    :cond_24
    if-eqz v5, :cond_29

    if-eqz v2, :cond_29

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "proxy-username"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const/16 v9, 0x322

    return v9

    :cond_25
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v37, v0

    const-string v0, "_"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "proxy-password"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v0, :cond_26

    const/16 v9, 0x323

    return v9

    :cond_26
    goto :goto_8

    :cond_27
    const/16 v0, 0x324

    return v0

    :cond_28
    :goto_7
    const/16 v0, 0x324

    return v0

    :cond_29
    :goto_8
    nop

    move/from16 v4, v18

    goto :goto_d

    :cond_2a
    move/from16 v30, v0

    move-object/from16 v34, v9

    move-object/from16 v32, v11

    move-object/from16 v2, v23

    :goto_9
    const/16 v0, 0x6b

    return v0

    :cond_2b
    move-object/from16 v26, v0

    move-object/from16 v34, v9

    move-object/from16 v32, v11

    move-object/from16 v2, v23

    :goto_a
    const/16 v0, 0x69

    return v0

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    move/from16 v18, v4

    :goto_b
    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at createVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x65

    goto :goto_d

    :catch_5
    move-exception v0

    move/from16 v18, v4

    :goto_c
    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException at createVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x67

    nop

    :goto_d
    const-string v0, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createVpnProfileValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2c
    move/from16 v18, v4

    :goto_e
    const/16 v0, 0x68

    return v0
.end method

.method public getAllContainerPackagesInVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getAllContainerPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getAllContainerPackagesInVpnProfileValidation: Not the same admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_3

    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getAllContainerPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v4, "KnoxVpnApiValidation"

    const-string/jumbo v5, "getAllContainerPackagesInVpnProfileValidation: user id is not valid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    iget v5, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v4, v5, :cond_5

    const-string v4, "KnoxVpnApiValidation"

    const-string/jumbo v5, "getAllContainerPackagesInVpnProfileValidation: Admin does not own the container"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    nop

    return-object p3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_6
    :goto_0
    const-string v1, "KnoxVpnApiValidation"

    const-string/jumbo v2, "getAllContainerPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    nop

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getAllContainerPackagesInVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getAllPackagesInVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getAllPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getAllPackagesInVpnProfileValidation: Not the same Admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_3

    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getAllPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    nop

    return-object p2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "KnoxVpnApiValidation"

    const-string/jumbo v2, "getAllPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    nop

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getAllPackagesInVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getErrorStringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getErrorStringValidation: profileInfo value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getErrorStringValidation: Not the same admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, "KnoxVpnApiValidation"

    const-string/jumbo v2, "getErrorStringValidation: profileName value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    nop

    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at getErrorStringValidation API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object p2
.end method

.method public getStateValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .locals 5

    const/16 v0, 0x64

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x6c

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_2

    const/16 v0, 0x70

    return v0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getStateValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_0
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStateValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :goto_1
    const/16 v0, 0x68

    return v0
.end method

.method public getVpnModeOfOperationValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .locals 5

    const/16 v0, 0x64

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x6c

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_2

    const/16 v0, 0x70

    return v0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getVpnModeOfOperationValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_0
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :goto_1
    const/16 v0, 0x68

    return v0
.end method

.method public getVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getVpnProfileValidation: profileInfo value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getVpnProfileValidation: Not the same admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, "KnoxVpnApiValidation"

    const-string/jumbo v2, "getVpnProfileValidation: profileName value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    nop

    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at getVpnProfileValidation API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object p2
.end method

.method public removeAllContainerPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)I
    .locals 7

    const/16 v0, 0x64

    if-eqz p3, :cond_7

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x6c

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2

    const/16 v0, 0x70

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v0, 0x6d

    return v0

    :cond_3
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v4

    move v3, v4

    if-nez v3, :cond_4

    const/16 v0, 0x71

    return v0

    :cond_4
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq v5, v6, :cond_5

    const/16 v0, 0x72

    return v0

    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v5

    move v3, v5

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, p2, :cond_6

    const/16 v0, 0x71

    return v0

    :cond_6
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_0
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    :goto_1
    const/16 v0, 0x68

    return v0
.end method

.method public removeAllPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .locals 5

    const/16 v0, 0x64

    if-eqz p2, :cond_4

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x6c

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2

    const/16 v0, 0x70

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    const/16 v0, 0x6d

    return v0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_0
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_1
    const/16 v0, 0x68

    return v0
.end method

.method public removeContainerPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/16 v0, 0x64

    move v6, v0

    if-eqz v5, :cond_12

    if-eqz v4, :cond_12

    :try_start_0
    array-length v0, v4

    const/4 v7, 0x1

    if-lt v0, v7, :cond_12

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v6, 0x6c

    return v6

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_2

    const/16 v6, 0x70

    return v6

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    if-nez v8, :cond_3

    const/16 v6, 0x6d

    return v6

    :cond_3
    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v10

    move v9, v10

    if-nez v9, :cond_4

    const/16 v6, 0x71

    return v6

    :cond_4
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    iget v12, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v11, v12, :cond_5

    const/16 v6, 0x72

    return v6

    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v11

    move v9, v11

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v11

    if-eq v11, v3, :cond_6

    const/16 v6, 0x71

    return v6

    :cond_6
    iget-object v11, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v11

    if-eqz v11, :cond_a

    array-length v11, v4

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_a

    aget-object v14, v4, v13

    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v3, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v12, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v15, :cond_7

    if-eqz v12, :cond_7

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_7

    const/16 v6, 0x81

    return v6

    :cond_7
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v3, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v7

    if-lez v7, :cond_8

    move/from16 v17, v8

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_9

    const/16 v6, 0x8b

    return v6

    :cond_8
    move/from16 v17, v8

    :cond_9
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v17

    const/4 v7, 0x1

    goto :goto_0

    :cond_a
    move/from16 v17, v8

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v7, v8, :cond_10

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v11, "ADD_ALL_PACKAGES"

    invoke-virtual {v8, v3, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x1

    if-eq v8, v11, :cond_b

    const/16 v6, 0x79

    return v6

    :cond_b
    return v6

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_d

    const/16 v6, 0x73

    return v6

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v8

    array-length v11, v4

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_f

    aget-object v13, v4, v12

    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v3, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v3, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v0, v5, v15, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    move/from16 v19, v0

    const-string v0, "KnoxVpnApiValidation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user wide vpn was configured "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "adding uid to exempt list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_e
    move-object/from16 v18, v0

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_1

    :cond_f
    move-object/from16 v18, v0

    goto :goto_3

    :cond_10
    move-object/from16 v18, v0

    const/16 v0, 0x7a

    return v0

    :cond_11
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at removeContainerPackagesFromVpnValidation API "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x65

    :goto_4
    const-string v0, "KnoxVpnApiValidation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeContainerPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_12
    :goto_5
    const/16 v0, 0x68

    return v0
.end method

.method public removePackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/16 v0, 0x64

    move v5, v0

    if-eqz v4, :cond_e

    if-eqz v3, :cond_e

    :try_start_0
    array-length v0, v3

    const/4 v6, 0x1

    if-lt v0, v6, :cond_e

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v5, 0x6c

    return v5

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_2

    const/16 v5, 0x70

    return v5

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v7

    if-nez v7, :cond_3

    const/16 v5, 0x6d

    return v5

    :cond_3
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    array-length v8, v3

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_6

    aget-object v11, v3, v10

    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v13, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v12, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    const/16 v5, 0x81

    return v5

    :cond_4
    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v15, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v14, v15, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v14

    if-lez v14, :cond_5

    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_5

    const/16 v5, 0x8b

    return v5

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v8

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v8, v10, :cond_c

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v10, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v11, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    const-string v12, "ADD_ALL_PACKAGES"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v6, :cond_7

    const/16 v5, 0x79

    return v5

    :cond_7
    return v5

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v10

    if-ne v10, v6, :cond_9

    const/16 v5, 0x73

    return v5

    :cond_9
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v6

    array-length v10, v3

    :goto_1
    if-ge v9, v10, :cond_b

    aget-object v11, v3, v9

    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v14, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v13, v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v4, v13, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v14

    const-string v15, "KnoxVpnApiValidation"

    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user wide vpn was configured "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "adding uid to exempt list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x5

    const/16 v19, 0x5

    const/16 v20, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v21

    const-string v22, "KnoxVpnApiValidation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removed from vpn for profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Added to exempt list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    iget v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    move/from16 v24, v0

    invoke-static/range {v18 .. v24}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_a
    move-object/from16 v17, v0

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v17, v0

    goto :goto_3

    :cond_c
    move-object/from16 v17, v0

    const/16 v0, 0x7a

    return v0

    :cond_d
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at removePackagesFromVpnValidation API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x65

    :goto_4
    const-string v0, "KnoxVpnApiValidation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removePackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_e
    :goto_5
    const/16 v0, 0x68

    return v0
.end method

.method public removeVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .locals 5

    const/16 v0, 0x64

    if-eqz p2, :cond_4

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x6c

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2

    const/16 v0, 0x70

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    if-ne v3, v4, :cond_3

    const/16 v0, 0x7d

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at removeVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_0
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVpnProfileValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_1
    const/16 v0, 0x68

    return v0
.end method

.method public setVpnModeOfOperationValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)I
    .locals 5

    const/16 v0, 0x64

    if-eqz p2, :cond_4

    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x6c

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_2

    const/16 v0, 0x70

    return v0

    :cond_2
    if-eqz p3, :cond_3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_3

    const/16 v0, 0x8a

    return v0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at setVpnModeOfOperationValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_0
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_1
    const/16 v0, 0x68

    return v0
.end method
