.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    }
.end annotation


# static fields
.field private static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final DEBUG:Z

.field private static final EMERGENCY_MODE_ENABLED:Z

.field private static final MAP_MAX_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_LIMIT:I = 0x2710

.field static final TYPE_NOTIFICATION:I = 0x1


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDisableNotificationAlerts:Z

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGearVrDocked:Z

.field private final mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

.field private mHandler:Landroid/os/Handler;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mLockState:I

.field private final mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

.field private final mNotificationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPolicyType:I

.field private mPolicyVersion:J

.field private mResumedComponent:Landroid/content/ComponentName;

.field private mResumedComponentTime:J

.field private mRinging:Z

.field private mStatusBarDisabled1:I

.field private mSuppressed:I

.field private mUseHeadsUp:Z

.field private mVrMode:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

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
    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$2;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$3;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    const-string v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->registerReceiver()V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "heads_up_notifications_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    const-string/jumbo v1, "vr"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerService;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    invoke-interface {v1, v2}, Lcom/samsung/android/vr/IGearVrManagerService;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register VR mode state listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_3

    :cond_1
    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get GearVrManager."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrDocked:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method private cleanUp()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    iget-wide v5, v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    cmp-long v5, v5, v1

    if-gez v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationInfo : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private getEdgeLightingRestrictState(I)I
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_4

    const/4 v0, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-nez v3, :cond_1

    new-instance v3, Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    :cond_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    :cond_2
    if-nez v0, :cond_4

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isSupportedCover(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq p1, v1, :cond_4

    :cond_3
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEdgeLightingRestrictState coverOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    return v1

    :cond_4
    iget v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    return v0

    :cond_5
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "Desktop mode enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private getRejectablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget v2, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method private isDeviceInGearVrDocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrDocked:Z

    return v0
.end method

.method private isDeviceInVrMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return v0
.end method

.method public static isEmptyText(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "tickerText"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    return v3

    :cond_1
    const-string/jumbo v1, "titleText"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    const-string/jumbo v1, "text"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    const-string/jumbo v1, "subText"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method private isMirrorLinkOn()Z
    .locals 2

    const-string v0, "1"

    const-string/jumbo v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSupportedCover(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isValidApplication(Ljava/lang/String;I)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private manageDisableRecoredLocked(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    iget-object v5, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    if-nez v1, :cond_3

    new-instance v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;)V

    move-object v1, v4

    :try_start_0
    invoke-interface {p3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "manageDisableRecoredLocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_2
    iput p1, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    iput-object p3, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    iput-object p2, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v4, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_5
    :goto_4
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$4;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->manageDisableRecoredLocked(ILjava/lang/String;Landroid/os/IBinder;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableEdgeLighting(ILjava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_0

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-EdgeLightingPolicy start : type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_2
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  [DisableRecord] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  [DisabledPackages] : type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string/jumbo v1, "white"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string v1, "black"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSuppressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method getAcceptablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget v2, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getGroupNotificationData(Ljava/lang/String;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getGroupData(Ljava/lang/String;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    move-result-object v0

    return-object v0
.end method

.method getPolicyByCategory(ILjava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v2

    if-ge v2, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getResumedComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getValidNotificationData(Ljava/lang/String;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .locals 9

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    monitor-exit v0

    return-object v4

    :cond_0
    sget-boolean v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v5, :cond_2

    :cond_1
    sget-object v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getValidNotificationData packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    sub-long v7, v1, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-wide v5, v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0xfa0

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    monitor-exit v0

    return-object v3

    :cond_3
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isAcceptableApplication(Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v0

    return v0
.end method

.method isAcceptableApplication(Ljava/lang/String;IZI)Z
    .locals 7

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getPolicyByCategory(ILjava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v3, :cond_4

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "isAcceptableApplication: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " , range="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " , includeAllApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, " , userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " , infoRange="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_2

    iget v4, v2, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " , infoCategory="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_3

    iget v4, v2, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const v3, 0xff00

    and-int/2addr v3, p2

    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    iget v3, v2, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0

    :cond_6
    if-nez p3, :cond_a

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getAcceptablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    move v3, v0

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_3
    sget-boolean v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v4, :cond_9

    sget-boolean v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v4, :cond_b

    :cond_9
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "isAcceptableApplication: getAcceptablePolicy "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    sget-object v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    :goto_4
    invoke-direct {p0, p1, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isValidApplication(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    iget v4, v2, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v4, p2

    if-nez v4, :cond_b

    const/4 v3, 0x0

    :cond_b
    :goto_5
    if-eqz v3, :cond_d

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_d

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-direct {p0, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_c

    move v5, v0

    goto :goto_6

    :cond_c
    move v5, v1

    :goto_6
    move v3, v5

    :cond_d
    if-eqz v3, :cond_10

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_10

    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getRejectablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v4

    if-nez v4, :cond_e

    goto :goto_7

    :cond_e
    move v0, v1

    :goto_7
    move v3, v0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_10

    :cond_f
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "isAcceptableApplication: getRejectablePolicy "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return v3
.end method

.method public isAllowEdgelighting(Z)Z
    .locals 3

    iget v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    :cond_2
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    and-int/2addr v2, v1

    if-nez v2, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0
.end method

.method isEdgeLightingDisabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "EdgeLighting is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    monitor-exit v0

    return v1

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

.method isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_3
    monitor-exit v1

    return v0

    :cond_4
    :goto_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isEdgeLightingRestricted(I)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getEdgeLightingRestrictState(I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EdgeLighting is Restricted("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isEnabledHeadsUp()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isHUNPeeked : UseHeadsUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isHUNPeeked()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isDeviceInVrMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isHUNPeeked : Vr mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isDeviceInGearVrDocked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isHUNPeeked : gear vr docked"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isMirrorLinkOn()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isHUNPeeked : mirror link on"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isNotificationForEdgeLighting(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNotificationForEdgeLighting : small icon is null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public putNotification(Landroid/service/notification/StatusBarNotification;ZZI)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZ)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public putNotification(Landroid/service/notification/StatusBarNotification;ZZIZ)Landroid/os/Bundle;
    .locals 25

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    move-object v4, v0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_2

    const-string v9, "android.title"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v9, "android.text"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v9, "android.subText"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    :cond_2
    move-object v9, v7

    move-object v7, v6

    move-object v6, v0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "putNotification tickerText:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",titleText:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",text:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",sub:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "cn= + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "putNotification tickerText:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    const/4 v13, 0x1

    goto :goto_1

    :cond_4
    move v13, v11

    :goto_1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",titleText:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_5

    const/4 v13, 0x1

    goto :goto_2

    :cond_5
    move v13, v11

    :goto_2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",text:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_6

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    move v13, v11

    :goto_3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",sub:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_7

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    move v13, v11

    :goto_4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "cn= + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->cleanUp()V

    iget-object v12, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v12

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->ledARGB:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-nez v0, :cond_8

    :try_start_1
    iget-object v13, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    if-eqz v13, :cond_8

    iget-object v14, v13, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string v15, "color"

    invoke-virtual {v14, v15, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v14

    goto :goto_6

    :catchall_0
    move-exception v0

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v3, p1

    goto/16 :goto_10

    :cond_8
    :goto_6
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "isHeadup"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    move/from16 v10, p2

    :try_start_3
    invoke-virtual {v15, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isUpdate"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    move/from16 v11, p3

    :try_start_4
    invoke-virtual {v15, v2, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "tickerText"

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "titleText"

    invoke-virtual {v15, v2, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "text"

    invoke-virtual {v15, v2, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "subText"

    invoke-virtual {v15, v2, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "smallIcon"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "flag"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move-object/from16 v17, v3

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "color"

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "notification_color"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->color:I

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "priority"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->priority:I

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "component"

    iget-object v3, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v3, :cond_9

    :try_start_6
    iget-object v3, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v18, v4

    :goto_7
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    goto/16 :goto_10

    :cond_9
    const/4 v3, 0x0

    :goto_8
    :try_start_7
    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "component_time"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    move-object/from16 v18, v4

    :try_start_8
    iget-wide v3, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    invoke-virtual {v15, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v2, "group_key"

    invoke-virtual {v15, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_intent"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "user_id"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "noti_key"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "noti_id"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "noti_tag"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "noti_visiblity"

    move/from16 v3, p4

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "alert_group"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v4, :cond_a

    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    :goto_9
    :try_start_a
    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "category"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "audible_alert"

    move/from16 v4, p5

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "channel_id"

    move/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v0, :cond_c

    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_b

    aget-object v16, v2, v4

    move-object/from16 v20, v16

    move-object/from16 v21, v2

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v21

    goto :goto_a

    :cond_b
    const-string/jumbo v2, "noti_actions"

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_c
    :try_start_c
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;-><init>(JLandroid/os/Bundle;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v8, :cond_d

    :try_start_d
    iget-object v2, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object/from16 v3, p1

    :try_start_e
    invoke-virtual {v2, v3, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->updateNotificationData(Landroid/service/notification/StatusBarNotification;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    goto/16 :goto_7

    :cond_d
    move-object/from16 v3, p1

    :goto_b
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getGroupData(Ljava/lang/String;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v4

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-object/from16 v22, v5

    :try_start_10
    const-string/jumbo v5, "tickerText"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move-object/from16 v23, v6

    :try_start_11
    const-string/jumbo v6, "tickerText"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tickerText"

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object/from16 v24, v7

    :try_start_12
    const-string/jumbo v7, "tickerText"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "titleText"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "titleText"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "titleText"

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "titleText"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "text"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "text"

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "subText"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "subText"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "subText"

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "subText"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-boolean v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v5, :cond_f

    sget-object v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Summary notification display. Change text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object/from16 v24, v7

    goto :goto_10

    :catchall_5
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    goto :goto_10

    :cond_e
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    :cond_f
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    monitor-exit v12

    return-object v15

    :catchall_6
    move-exception v0

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object/from16 v3, p1

    :goto_d
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    goto :goto_10

    :catchall_8
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    goto :goto_10

    :catchall_9
    move-exception v0

    goto :goto_f

    :catchall_a
    move-exception v0

    goto :goto_e

    :catchall_b
    move-exception v0

    move/from16 v10, p2

    :goto_e
    move/from16 v11, p3

    :goto_f
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v3, p1

    :goto_10
    monitor-exit v12
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_10
.end method

.method public removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->remove(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public setResumedComponent(Landroid/content/ComponentName;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    :cond_0
    return-void
.end method

.method setRinging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    return-void
.end method

.method public setSuppressed(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    return-void
.end method

.method public statusBarDisabled(II)V
    .locals 6

    iget v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    xor-int v1, p1, v0

    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable: < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x40000

    and-int v4, p1, v3

    if-eqz v4, :cond_0

    const-string v4, "ALERTS"

    goto :goto_0

    :cond_0
    const-string v4, "alerts"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v4, v1, v3

    if-eqz v4, :cond_1

    const-string v4, "* "

    goto :goto_1

    :cond_1
    const-string v4, " "

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateEventHistory(Ljava/lang/String;)V

    and-int v4, v1, v3

    if-eqz v4, :cond_3

    and-int/2addr v3, p1

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_3
    return-void
.end method

.method public updateEdgeLightingPolicyFromHost(Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->clear()V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->clear()V

    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyType()I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyVersion()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getEdgeLightingPolicyInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    iget v2, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v2, v1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_1

    :cond_0
    iget v2, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v2, v1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    return-void
.end method
