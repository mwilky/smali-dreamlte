.class public Lcom/android/server/sepunion/SemPluginManagerService;
.super Lcom/samsung/android/sepunion/IPluginManager$Stub;
.source "SemPluginManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private localService:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

.field private mContext:Landroid/content/Context;

.field private mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

.field private mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/sepunion/SemPluginManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IPluginManager$Stub;-><init>()V

    sget-object v0, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SemPluginManagerService"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginManagerService;->initialize()V

    return-void
.end method

.method private dumpCoverInfomation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "\n##### SEP COVER MANAGER SERVICE #####\n##### (dumpsys sepunion cover) #####\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_7

    array-length v0, p3

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p3, v0

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(JZ)V

    goto :goto_1

    :cond_1
    aget-object v1, p3, v0

    const-string/jumbo v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(JZ)V

    goto :goto_1

    :cond_2
    aget-object v1, p3, v0

    const-string/jumbo v3, "secure_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "111111"

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    const-string v2, "dumpCoverInfomation: resetPassword(secure_on) failed."

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    goto :goto_1

    :cond_4
    aget-object v0, p3, v0

    const-string/jumbo v1, "secure_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    const-string v2, "dumpCoverInfomation: resetPassword(secure_off) failed."

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private dumpFriendsInformation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "\n##### SEP FRIENDS MANAGER SERVICE #####\n##### (dumpsys sepunion friends) #####\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public accessoryStateChanged(Z[B[B)V
    .locals 3

    sget-object v0, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    const-string v1, "accessoryStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    const-string v2, "attached"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Z)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    const-string v2, "extraData"

    invoke-virtual {v1, v2, p3}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v1

    const v2, 0x110001

    invoke-virtual {v0, v2, v1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    array-length v1, p3

    if-eqz v1, :cond_0

    aget-object v1, p3, v0

    const-string v2, "cover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->dumpCoverInfomation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    array-length v1, p3

    if-eqz v1, :cond_1

    aget-object v0, p3, v0

    const-string v1, "friends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->dumpFriendsInformation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->dumpCoverInfomation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->dumpFriendsInformation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    return-object v0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method public getFrsServiceImpl()Lcom/android/server/sepunion/friends/FrsServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    return-object v0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .locals 3

    new-instance v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    new-instance v0, Lcom/android/server/sepunion/friends/FrsServiceImpl;

    iget-object v1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->localService:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->localService:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_0

    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    new-instance v1, Lcom/android/server/sepunion/SemPluginLocalService;

    iget-object v2, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/SemPluginLocalService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 2

    sget-object v0, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyCoverSwitchStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(JZ)V

    return-void
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .locals 2

    sget-object v0, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifySmartCoverAttachStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->systemRunning()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onBootPhase(I)V

    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onCleanupUser(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStartUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onStartUser(I)V

    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onStopUser(I)V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onSwitchUser(I)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onSwitchUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onUserUnlocked(I)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onUnlockUser(I)V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 3

    sget-object v0, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "screenTurnOff"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    const v1, 0x210002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
