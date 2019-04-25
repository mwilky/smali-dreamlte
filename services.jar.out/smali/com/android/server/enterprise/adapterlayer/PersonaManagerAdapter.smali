.class public Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
.super Ljava/lang/Object;
.source "PersonaManagerAdapter.java"


# static fields
.field public static final DEFAULT_KNOX_NAME:Ljava/lang/String;

.field public static final KNOX_SWITCHER_PKG:Ljava/lang/String; = "com.samsung.android.knox.containeragent"

.field public static final MAX_PERSONA_ID:I = 0xc8

.field public static final MIN_PERSONA_ID:I = 0x64

.field public static final SECOND_KNOX_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PersonaManagerAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;


# instance fields
.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mKeguardMgr:Landroid/app/KeyguardManager;

.field private mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

.field private mRCPInterface:Landroid/content/IRCPInterface;

.field private mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private mUserMgr:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->DEFAULT_KNOX_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->DEFAULT_KNOX_NAME:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SECOND_KNOX_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->SECOND_KNOX_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mKeguardMgr:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mKeguardMgr:Landroid/app/KeyguardManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mKeguardMgr:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public static getKnoxContainerVersionString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getPersonaManager(Z)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    return-object v0
.end method

.method public static isDoEnabled(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isKnoxVersionSupported(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0

    return v0
.end method

.method public static isLegacyContainer(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

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

.method public static isValidKnoxId(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public exists(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v0

    return v0
.end method

.method public getActivePersonas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonas(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdminComponentName(I)Landroid/content/ComponentName;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCOMContainerOrOwnerUserId()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerExistOnDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonas(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    :cond_0
    return v0
.end method

.method public getContainerIcon(I)[B
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    const-string v0, "custom-container-icon"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getContainerName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFocusedUserWithActivityManager()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager(Z)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "PersonaManagerAdapter"

    const-string/jumbo v3, "getFocusedUserWithActivityManager() failed. so return owner id"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v1
.end method

.method public getKnoxNameChangedAsUser(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxNameChangedAsUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentId(I)I
    .locals 2

    move v0, p1

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    :cond_0
    return v0
.end method

.method public getPersonaIds()[I
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PersonaManagerAdapter"

    const-string/jumbo v2, "getPersonaIds() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method public getPersonas(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "PersonaManagerAdapter"

    const-string/jumbo v3, "getPersonas() failed. so return empty list"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method public getProfileGroupId(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    return v0
.end method

.method public getProfilesForOwner(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPInterface:Landroid/content/IRCPInterface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getRCPManager()Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPInterface:Landroid/content/IRCPInterface;

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPInterface:Landroid/content/IRCPInterface;

    return-object v0
.end method

.method public getRCPManager()Lcom/samsung/android/knox/SemRemoteContentManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    return-object v0
.end method

.method public isActivePersona(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isBYODId(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isComContainerExistOnDevice()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComContainerId(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isDeletingPersona(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDeviceLocked(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceSecure(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isManagedProfile(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method public isMyKnoxUser(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPersonaEnabled(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isPersonaRunning()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager(Z)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPremiumUser(I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    return v0
.end method

.method public isSecureFolderId(I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    return v0
.end method

.method public setIsFingerAsSupplement(IZ)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
