.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.super Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;
.source "CocktailBarManagerServiceContainer.java"

# interfaces
.implements Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;
.implements Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;
.implements Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;
.implements Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;
    }
.end annotation


# static fields
.field private static final ACTION_EDGE_APP_START:Ljava/lang/String; = "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

.field private static final COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field private static final COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final LOADED_PROFILE_ID:I = -0x1

.field private static final MSG_CHANGE_RESUME_PACKAGE:I = 0x2

.field private static final MSG_CHANGE_VISIBLE_EDGE_SERVICE:I = 0x1

.field private static final MSG_PACKAGE_DATA_CLEARED:I = 0x3

.field private static final MSG_UNLOCK_USER:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN_USER_ID:I = -0xa


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCocktailBarHandler:Landroid/os/Handler;

.field private final mCocktailBarServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mCocktailOrderManager:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

.field private final mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mFilterCategory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cocktailbar/ICocktailHost;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private final mLoadedUserIds:Landroid/util/SparseIntArray;

.field private final mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

.field private mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mSafeMode:Z

.field private final mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

.field private final mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

.field private mWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    new-instance v1, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-direct {v1, p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->registerOnCrossProfileProvidersChangedListener()V

    new-instance v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailOrderManager:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUnlockUserImpl(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserStarted(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserStopped(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->handleChangeVisibleEdgeService(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->handleChangedResumePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->startCocktailBarServiceWithCurrentUser()V

    return-void
.end method

.method private bootCompleted()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->createCocktailBarManagerServiceImpl(I)V

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->registerBroadcastReceiver()V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createCocktailBarManagerServiceImpl(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->createCocktailBarManagerServiceImplLocked(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createCocktailBarManagerServiceImplLocked(I)V
    .locals 7

    new-instance v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    move-object v0, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;I)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private enforceCocktailBarService()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ensureGroupStateLoaded(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    :goto_0
    const/4 v6, -0x1

    if-ge v2, v3, :cond_1

    aget v7, v1, v2

    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_0

    aput v6, v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-gtz v5, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    nop

    :goto_2
    move v2, v4

    if-ge v2, v3, :cond_4

    aget v4, v1, v2

    if-eq v4, v6, :cond_3

    invoke-direct {p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->createCocktailBarManagerServiceImplLocked(I)V

    :cond_3
    add-int/lit8 v4, v2, 0x1

    goto :goto_2

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-nez v2, :cond_1

    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find CocktailBarManagerService for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", adding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v9, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    move-object v5, v3

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;I)V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->initialize()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getUserIdFromCocktailId(I)I
    .locals 2

    shr-int/lit8 v0, p1, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->isValidCocktailBarManagerServiceImpl(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/16 v1, -0x2710

    return v1
.end method

.method private handleChangeVisibleEdgeService(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->changeVisibleEdgeService(Z)V

    return-void
.end method

.method private handleChangedResumePackage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->changeResumePackage(Ljava/lang/String;I)V

    return-void
.end method

.method private isValidCocktailBarManagerServiceImpl(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUnlockUserImpl(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUnlockUser : CocktailBarServices="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onUnlockUser()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->bootCompleted()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onUserStarted(I)V
    .locals 3

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserStarted : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    return-void
.end method

.method private onUserStopped(I)V
    .locals 8

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserStopped : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->systemDestroy()V

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    const/16 v4, 0x64

    if-lt p1, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_2
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetModeForcely(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerBroadcastReceiver()V
    .locals 10

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerOnCrossProfileProvidersChangedListener()V
    .locals 1

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    :cond_0
    return-void
.end method

.method private startCocktailBarServiceWithCurrentUser()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.cocktailbarservice"

    const-string v2, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public activateCocktailBar()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->activateCocktailBar()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateCocktailBar : Calling uid is not system uid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move-object v1, p0

    invoke-direct {v1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public closeCocktail(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.cocktailbarservice.permission.ACCESS_PANEL"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->closeCocktail(Ljava/lang/String;II)V

    return-void
.end method

.method public deactivateCocktailBar()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->deactivateCocktailBar()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateCocktailBar : Calling uid is not system uid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->disableCocktail(Landroid/content/ComponentName;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, " "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v4, p1, v1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "\n"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailOrderManager:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllCocktailIds()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    aget v5, v1, v4

    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getAllCocktailIds(Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [I

    nop

    :goto_1
    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v5
.end method

.method public getCategoryFilterStr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilterStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCocktaiBarWakeUpState()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getCocktaiBarWakeUpStateInternal()Z

    move-result v0

    return v0
.end method

.method public getCocktaiBarWakeUpStateInternal()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->getWakeUpState()Z

    move-result v0

    return v0
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v2, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    aget v5, v2, v4

    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCocktailBarVisibility()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    return v0
.end method

.method public getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailId(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    return-object v0
.end method

.method public getConfigVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v0

    return v0
.end method

.method public getEnabledCocktailIds()[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v2, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move v5, v1

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_3

    aget v6, v2, v5

    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getEnabledCocktailIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_2

    aget v9, v2, v5

    invoke-direct {p0, v9}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v9

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getComponentName(Ljava/lang/Integer;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v2, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailOrderManager:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->getMatchedSortIds(Ljava/util/ArrayList;Landroid/util/SparseArray;)[I

    move-result-object v1

    return-object v1
.end method

.method public getHideEdgeListStr()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getPackageHideEdgeServiceList()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getPreferWidth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getPreferredWidth()I

    move-result v0

    return v0
.end method

.method public getWindowType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getWindowType()I

    move-result v0

    return v0
.end method

.method public isBoundCocktailPackage(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :goto_0
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isBoundCocktailPackage(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system process can call this"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isCocktailEnabled(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isCocktailEnabled(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V

    return-void
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getUserIdFromCocktailId(I)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getUserIdFromCocktailId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailVisibiltyChanged(II)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyCocktailVisibiltyChanged: invalid user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyKeyguardState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyKeyguardState(Z)V

    return-void
.end method

.method public onChangeVisibleEdgeService(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onChangedResumePackage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCrossProfileWidgetProvidersChanged : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCrossProfileWidgetProvidersChanged : packages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onNotifyCocktailBarWakeUp(ZII)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailBarWakeUp(ZII)V

    return-void
.end method

.method public onRemoveCocktail(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktail(I)V

    return-void
.end method

.method public onResetMode(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    return-void
.end method

.method public onSetMode(IILjava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setMode(ILjava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSwitchUser(IIIIILandroid/os/IRemoteCallback;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->disableUser(I)V

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1, p5}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->enableUser(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    :cond_1
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is no longer unlocked - exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUnsetMode(IILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unsetMode(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUpdateCocktail(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktail(I)V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 3

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitched : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partiallyUpdateCocktail : contentView is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->partiallyUpdateCocktail(Ljava/lang/String;ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partiallyUpdateHelpView : helpView is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->partiallyUpdateHelpView(Ljava/lang/String;ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public removeCocktailUIService()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public requestToDisableCocktail(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktail(I)Z

    move-result v0

    return v0
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktailByCategory(I)Z

    move-result v0

    return v0
.end method

.method public requestToUpdateCocktail(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktail(I)Z

    move-result v0

    return v0
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktailByCategory(I)Z

    move-result v0

    return v0
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCocktailBarWakeUpState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->setWakeUpState(Z)V

    return-void
.end method

.method public setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    aget v3, v1, v2

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    invoke-virtual {v3, v5, v6, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->isExistKioskContainers(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    :cond_2
    return-void
.end method

.method public setEnabledCocktailIds([I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget v4, v1, v3

    invoke-direct {p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setEnabledCocktailIds([I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v3, p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_4

    move v6, v2

    :goto_2
    array-length v7, v1

    if-ge v6, v7, :cond_3

    aget v7, v1, v6

    invoke-direct {p0, v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v7

    aget v8, p1, v5

    invoke-virtual {v7, v8}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v8, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    aget v9, v1, v6

    invoke-direct {v8, v7, v9, v5}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;-><init>(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailOrderManager:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    invoke-virtual {v2, v4}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->setOrderedList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setOnPullPendingIntent(Ljava/lang/String;IILandroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setOnPullPendingIntent(Ljava/lang/String;IILandroid/app/PendingIntent;)V

    return-void
.end method

.method public showCocktail(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.cocktailbarservice.permission.ACCESS_PANEL"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->showCocktail(Ljava/lang/String;I)V

    return-void
.end method

.method public startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startListening() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget v3, v1, v2

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopListening(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopListening() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v3, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->deleteHost(Ljava/lang/String;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->clearCocktailWindowType(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method public systemRunning(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSafeMode:Z

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->bootCompleted()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    return-void
.end method

.method public updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCocktail : cocktailInfo is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktail(Ljava/lang/String;ILcom/samsung/android/cocktailbar/CocktailInfo;)V

    return-void
.end method

.method public updateCocktailBarPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updatePosition(I)V

    return-void
.end method

.method public updateCocktailBarVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateVisibility(I)V

    return-void
.end method

.method public updateCocktailBarWindowType(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateWindowType(Ljava/lang/String;I)V

    return-void
.end method

.method public updateWakeupArea(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupArea(I)V

    return-void
.end method

.method public updateWakeupGesture(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "-edgefeeds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    :cond_1
    return-void
.end method

.method public wakeupCocktailBarInternal(ZII)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->getWakeUpState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip wakeupCocktailBar reason("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->wakeupCocktailBar(ZII)V

    :cond_2
    :goto_1
    return-void
.end method
